package extratocdelet;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


/**
 * Classe que serve para retornar a data atual criptografada pela chave criptográfica
 * do SQLServer da Marlin. É usada para gerar extratos de contribuições para qualquer participante,
 * sem a necessidade de logar no site eletros como tal. É usada pela geração de extrato de contribuições
 * através da intranet Eletros.  
 * 
 * @author victor
 */
public class ModeloTeste {
    
    /**
     * Cosntrutor da classe.
     */
    public ModeloTeste() {
    }
    
    
    /**
     * Busca a data atual do sistema, no formato yyyymmddhh24miss, criptografada
     * por uma função do SQLServer da Marlin.
     * 
     * @return String com a data atual criptografada.
     * @throws java.lang.Exception
     */
    public String retornaDataAtual() 
       throws Exception
    {
        Connection conn = null;
        try
        {
           conn = getConnection(); 
           Statement stm = conn.createStatement();
           
           String query = "SELECT to_char(sysdate,'yyyymmddhh24miss') from dual";
           ResultSet result = stm.executeQuery( query );
           
           result.next();
           String tempo = result.getString(1);
           
           result.close();
           stm.close();
           return Encrypt(tempo);
            
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
    
    
    /**
     * Cria uma string criptografada por uma função do SQLServer da MArlin. 
     * Criptografa a string passada por parametro "mm".
     * 
     * @param mm - String a ser criptografada.
     * @return String criptografada.
     * @throws java.lang.Exception
     */
    public String Encrypt( String mm) 
      throws Exception
    {
        Connection conn = getConnectionMarlin();
        String senhaQuery = "select dbo.fn_crypt('"+mm+"', 'e','')";

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
    }
    
    
    
    private Connection getConnectionMarlin()
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
