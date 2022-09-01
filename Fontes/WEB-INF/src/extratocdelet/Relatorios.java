package extratocdelet;

import extrato.*;
import com.eletros.benef.ParticipanteCDElet;
import EJB.Eletros.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import javax.naming.InitialContext;

import javax.naming.NamingException;

import javax.rmi.PortableRemoteObject;

import javax.sql.DataSource;


/**
 * Classe usada para buscar algumas listas de participantes relativos ao plano CD
 * Eletrobras. Listas que usam criterios diferentes na busca. 
 */
public class Relatorios {
    
    /**
     * Cosntrutor da classe.
     */
    public Relatorios() {
    }
    
    
    
    /**
     * Busca uma lista de extratos CD Elet. que tenham alguma contribuicao cadastrada.
     * 
     * @return Collection de ExtratoCD
     * @throws Exception
     */
    public Collection<ExtratoCD> buscaListaExtratoCDElet() 
      throws Exception
    {
        List<ExtratoCD> list = new LinkedList<ExtratoCD>();
        
        //Connection conn = null;
        try
        {
           //conn = getConnection(); 
           //Statement stm = conn.createStatement();
           
           /*String query = " SELECT DISTINCT NRISC FROM MOVCTA_TMP m, pti_cad p "+
                          " where m.NRISC = '00'||p.nu_pti_icr"; 
           */
           /*"select nu_pti_icr " + 
                          "From PTI_CAD PTI, PF_ELET " + 
                          "Where PTI.CD_ETD_IDT = PF_ELET.CD_ETD_IDT " + 
                                 "And PTI.DT_PTI_ICR_MOV <= To_Date('20080103', 'yyyymmdd') " + 
                                 "And (PTI.DT_PTI_DLG Is Null Or PTI.DT_PTI_DLG > To_Date('200712'||'31', 'yyyymmdd') ) " + 
                                 "And Not Exists (Select 1 From BNF_BNF BNF1 " + 
                                                    "Where BNF1.CD_PTI = PTI.NU_PTI_ICR " + 
                                                           "And BNF1.DT_BNF_ELET <= To_Date('20080103', 'yyyymmdd') " + 
                                                           "And BNF1.TS_BNF = (Select Max(BNF2.TS_BNF) " + 
                                                                                 "From BNF_BNF BNF2 " + 
                                                                                 "Where BNF2.CD_PTI = BNF1.CD_PTI " + 
                                                                              ") " + 
                                                ") " + 
                                 "And Exists (Select 1 From HIS_ELET_PAT HIS " + 
                                                     "Where HIS.NU_PTI_ICR = PTI.NU_PTI_ICR " + 
                                                     "And HIS.DT_HIS_PAT_ADS <= To_Date('20080103', 'yyyymmdd') " + 
                                                     "And (HIS.DT_HIS_PAT_DEM > To_Date('200712'||'31', 'yyyymmdd') " + 
                                                                "Or HIS.DT_HIS_PAT_DEM Is Null) " + 
                                                     "And HIS.CD_PAT Not In (264038)" + 
                                             ") " + 
                                 "And FN_CAD_TRAZ_CD_PLN(PTI.NU_PTI_ICR) = 3 ";
                                 /*"And PTI.nu_pti_icr not in('0059196','0057885','0060855','0059949',"+
                                                           "'0062513','0063156','0059931','0057414','0060434',"+
                                                           "'0056853','0059923','0061556','0061788','0062851',"+
                                                           "'0063982','0060806','0059634','0060160') ";
           */
          // ResultSet result = stm.executeQuery( query );
          String[] numerosEletros = {"0062513","0061663","0062018","0061911","0062695",
                                     "0062687","0062778","0061903","0062505","0062299",
                                     "0065789","0064998","0065615","0066126","0065532",
                                     "0064196","0062828","0064535","0061879","0064188",
                                     "0065797","0064931","0059634","0065169","0058974",
                                     "0065805","0065516","0066142","0066290","0067561",
                                     "0064543","0063115","0062307","0064808","0066282",
                                     "0065011"};
          
          
          for( int i=0; i < numerosEletros.length; i++)
           {
               String numEletros = numerosEletros[i];
               //numEletros = numEletros.substring(2,9);
               System.out.println("Gerando para "+numEletros);      
               
               Modelo model = new Modelo( numEletros );
               ExtratoCD extrato = model.buscaExtratoCDEletSemFiltros();
               
               list.add( extrato );
           }
        
           //result.close();
           //stm.close();
        
           return list;
        }
        catch(SQLException e)
        {
           e.printStackTrace();
           throw new Exception("Ocorreram problemas ao bucar a lista CD Eletrobr�s.");
        }
        /*finally
        {
           if( conn != null)
           {
              conn.close();
           }
        }*/
    }
    
    
    /**
     * Busca uma lista de participantes CD Eletrobras que migraram ate 31/12/2007
     * 
     * @return Collection de ParticipanteCDElet
     * @throws Exception
     */
    /*public Collection<ParticipanteCDElet> buscaListaMigracao() 
       throws Exception
    {
        List<ParticipanteCDElet> list = new LinkedList<ParticipanteCDElet>();
        
        //busca informa��es sobre o participante na base de dados da marlin
        InitialContext ctx = new InitialContext();
        Object ref = ctx.lookup("ParticipanteEJB");
        ParticipanteEJBHome partHome = (ParticipanteEJBHome)
        PortableRemoteObject.narrow(ref,ParticipanteEJBHome.class);
        ParticipanteEJB partEJB = partHome.create();

        list  = partEJB.buscaParticipantesMigradosCD("01/01/2008");
        
           
        return list;
           
    }*/
    
    
    /**
     * Busca uma lista de participantes CD Eletrobras que migraram.
     * antes eram apenas com alguma opcao BPDS, 50% ou 100%.
     * 
     * @return Collection de ParticipanteCDElet
     * @throws Exception
     */
    public Collection<ParticipanteCDElet> buscaListaBPDS() 
       throws Exception
    {
        List<ParticipanteCDElet> list = new LinkedList<ParticipanteCDElet>();
        
        //busca informacoes sobre o participante na base de dados da marlin
        InitialContext ctx = new InitialContext();
        Object ref = ctx.lookup("ParticipanteEJB");
        ParticipanteEJBHome partHome = (ParticipanteEJBHome)
        PortableRemoteObject.narrow(ref,ParticipanteEJBHome.class);
        ParticipanteEJB partEJB = partHome.create();

        Connection conn = null;
        try
        {
           conn = getConnection(); 
           Statement stm = conn.createStatement();
           
           String query = "SELECT distinct SAL.NRISC "+ 
                          "From RSV_ELET_PTI_V3 RSV, SALDOSMIGCD SAL "+ 
                          "where SAL.NRISCBD = '00'||RSV.nu_pti_icr "+
                          "and SAL.OPCMIG in (1,2,3) "+
                          "order by SAL.NRISC";
           
           ResultSet result = stm.executeQuery( query );
           
           while( result.next())
           {
               String numEletros = result.getString(1);
               numEletros = numEletros.substring(2,9);
               System.out.print("Participante "+numEletros);
               ParticipanteCDElet part = 
                  (ParticipanteCDElet)partEJB.BuscarParticipante( numEletros ); 
               list.add( part );
           }
           
           result.close();
           stm.close();
           
           return list;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            throw new Exception("Ocorreram problemas ao bucar a data e a hora do sistema.");
        }
        finally
        {
            if( conn != null)
            {
               conn.close();
            }
        }   
    }
    
    
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
          System.out.println(ne.toString());            
       }
       return conn;   
    }
}
