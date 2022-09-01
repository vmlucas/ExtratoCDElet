package extratocdelet;

import extrato.*;
import EJB.Eletros.*;
import com.eletros.benef.*;
import javax.naming.*;
import javax.rmi.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import javax.sql.DataSource;


/**
 * Classe responsavel pela geracao de extratos de contribui?§?µes. Atualmente s?? gera
 * extratos para o plano CD Elet.
 * @author victor
 */
public class Modelo {
    
    private ParticipanteCDElet participante;
    private ExtratoEJB extratoEJB;
    private ParticipanteEJB partEJB = null;

    /**
     * Construtor usado para gerar extrato de qualquer participante.
     *  
     * @param numEletros - numero eletros do participante o qual deseja-se obter
     * o extrato.
     * @throws java.lang.Exception
     */
    public Modelo( String numEletros) 
      throws Exception
    {
        //busca informa??es sobre o participante na base de dados
        try {
            InitialContext ctx = new InitialContext();
            Object ref = ctx.lookup("ParticipanteEJB");
            ParticipanteEJBHome home = (ParticipanteEJBHome) PortableRemoteObject.narrow(ref, ParticipanteEJBHome.class);
            partEJB = home.create();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Participante part = partEJB.BuscarParticipante( numEletros ); 
        if( part instanceof ParticipanteCDONS )
           throw new Exception("Extrato somente para participantes do plano CD-ELETROBRAS.");
        if( part instanceof ParticipanteBD )
           throw new Exception("Extrato somente para participantes do plano CD-ELETROBRAS.");
        
        participante =(ParticipanteCDElet)part;   
        
        //busca o EJB de extrato na base de dados 
        InitialContext ctx = new InitialContext();
        Object ref = ctx.lookup("ExtratoEJB");
        ExtratoEJBHome extHome = (ExtratoEJBHome)
              PortableRemoteObject.narrow(ref,ExtratoEJBHome.class);
        extratoEJB = extHome.create();
        
    }
    
    
    /*private void verificaDataHora(String dataHora) 
       throws Exception
    {
        //verifica se o login foi a menos de 10 minutos
        String dataParam = 
          dataHora.substring(6,8)+"/"+dataHora.substring(4,6)+"/"+dataHora.substring(0,4)+
          " "+dataHora.substring(8,10)+":"+dataHora.substring(10,12)+":"+dataHora.substring(12,14); 
        System.out.println(dataParam);
        
        Connection conn = null;
        try
        {
           conn = getConnection(); 
           Statement stm = conn.createStatement();
           
           String query = "SELECT (sysdate-to_date('"+dataParam+"','dd/mm/yyyy hh24:mi:ss'))*24*60 from dual";
           ResultSet result = stm.executeQuery( query );
           
           System.out.println( query );
           result.next();
           double time = result.getDouble(1);
           if( time > 60.0)
              throw new Exception("Sess???o expirada, efetue por favor o login novamente. Obrigado");
            
        }  
        catch(SQLException e)
        {
            e.printStackTrace();
            throw new Exception("Ocorreram problemas ao verificar a data e a hora de login.");
        }
        finally
        {
            if( conn != null)
            {
               conn.close();
            }
        }   
        
        
    }*/
    
    
    /**
     * Busca o extrato do participante corrente, filtrando algumas informa?§?µes.
     * - ?‰ verificado se o participante foi migrado, mas nao tem reserva calculada ainda.
     * - verifica se o participante migrou 100 % BPDS e nao tem valor ainda 
     *   de beneficio BPDS.
     * - Verifica se o participante eh assitido pela Eletros.
     *  
     * @return
     * @throws java.lang.Exception
     */
    public extrato.ExtratoCD buscaExtratoCDElet() throws Exception {
        
        Connection conn = null;
        
        if( participante.getDtDesligamento() != null )
           throw new Exception("Participante desligado.");
           
        try
        {
           /**
            * Verifica se o participante foi migrado, mas n???o tem reserva
            * calculada ainda.
            */
            conn = getConnection(); 
            Statement stm = conn.createStatement();
            ResultSet result = null;
            String query = "SELECT 1 FROM SALDOSMIGCD SAL "+
                        "WHERE SAL.NRISC = '00'||'"+participante.getNumEletros()+"' "+
                        "AND NOT EXISTS ( SELECT 1 FROM RSV_ELET_PTI_V3 RSV, SALDOSMIGCD S "+
                                          " WHERE S.NRISCBD = '00'||RSV.nu_pti_icr "+
                                          " and S.NRISC = '00'||'"+participante.getNumEletros()+"')";
            result = stm.executeQuery( query );
            if( result.next() ) {
             throw new Exception("Em breve as suas informa??es de reserva estar?o dispon?veis");
            }
         
            result.close();
            stm.close();
        
         
             /**verifica se o participante migrou 100 % BPDS e nao tem valor ainda 
              de beneficio BPDS **/
             if( participante.getOpcaoMigracao() != null)
             { 
               /**
                * no APS
                * if(( participante.getOpcaoMigracao().trim().equals("2"))&&
                   ( participante.getBPDSAtual() == 0.0 )&&
                   (participante.getPatrocinadoraAtual().getCodigo() == 264011))
                */
               if(( participante.getOpcaoMigracao().trim().equals("2"))&&
                   ( participante.getBPDSMigracao() == 0.0 )&&
                   (participante.getPatrocinadoraAtual().getCodigo() == 264011))
               {
                   throw new Exception("Prezado participante, o valor do BPDS e a data possivel "+
                               "para recebimento estao temporariamente indisponiveis.<br>"+
                               "Em breve a Eletros estara disponibilizando as suas informacoes. Obrigado.");
               }
             }
        
        
             /**
              * Verifica se o participante ??? assitido pela Eletros
              */
              stm = conn.createStatement();
              String queryAssit= "Select 1 From SIT_CAD_PF Where NU_SIT_ICR = '"+participante.getNumEletros()+"' And CD_SIT = 13";
              result = stm.executeQuery( queryAssit );
              if( result.next() ) {
                throw new Exception("Prezado participante, o extrato para os participantes aposentados no plano CD esta sendo desenvolvido pela Eletros. <br>"+
                     "Em breve a Eletros estara disponibilizando as suas informacoes. Obrigado.");
              }
         
              result.close();
              stm.close();
              
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        finally {
            if( conn != null)
              conn.close();
        }

        
          return extratoEJB.geraExtratoCDElet(participante);
        
    }
    
    
    /**
     * Busca o extrato do participante corrente sem filtro, ou seja, tenta gerar
     * extrato para qualquer participante.
     * 
     * @return
     * @throws java.lang.Exception
     */
    public extrato.ExtratoCD buscaExtratoCDEletSemFiltros() throws Exception {
        return extratoEJB.geraExtratoCDElet(participante);
    }
    
    /**
     * usado quando tinhamos conexao com a Marlin
     * @param mm
     * @return
     * @throws java.lang.Exception
     */
    /*private String decrypt( String mm) 
      throws Exception
    {
        Connection conn = getConnectionMarlin();
        String senhaQuery = "select dbo.fn_crypt('"+mm+"', 'd','')";

        Statement statement = conn.createStatement();
        ResultSet result = statement.executeQuery(senhaQuery);
        String retorno = null;
        
        if(result.next())
        {
           retorno = result.getString(1);
        }
        result.close();
        statement.close();
        conn.close();
        
        return retorno;
    }*/
    
    
    
    /*private Connection getConnectionMarlin()
      throws SQLException
    {
      Connection conn = null;
       try
       {
             InitialContext initContext = new InitialContext();
             DataSource ds = (DataSource)initContext.lookup("java:/jdbc/Marlin");
             conn = ds.getConnection();
       }
       catch(NamingException ne)
       {
          System.out.println(ne.toString());
       }
       return conn;
    }*/
    
    
    /**
     *  Retorna uma conex???o 
     */
    private Connection getConnection()
      throws SQLException
    {
       Connection conn = null;
       try 
       {                
             InitialContext initContext = new InitialContext();         
             //Context envContext  = (Context)initContext.lookup("java:/comp/env");             
             DataSource ds = (DataSource)initContext.lookup("java:/jdbc/OracleIndice");              
             conn = ds.getConnection();         
       }
       catch(NamingException ne)
       {                        
          ne.printStackTrace();           
       }
       return conn;   
    }
}
