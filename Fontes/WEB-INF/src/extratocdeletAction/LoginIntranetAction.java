package extratocdeletAction;

import com.eletros.Usuario;

import extratocdelet.AjusteModelo;

import java.io.IOException;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginIntranetAction extends MyActionServlet {
    /**This is the main action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     */
    public ActionForward execute(ActionMapping mapping, ActionForm form, 
                                 HttpServletRequest request, 
                                 HttpServletResponse response) throws IOException, 
                                                                      ServletException {
        HttpSession session = request.getSession();
        
        String login = request.getParameter("login");
        String sessionId = request.getParameter("sessionId");
        if(!super.verificarCookie(request, response,login,sessionId))
        {
           return mapping.findForward("erro");  
        }   
        
        session.setAttribute("login", login);
        session.setAttribute("sessionId",sessionId);
        
        try
        {
           //recuperando o objeto registrado
           Context ctx = new InitialContext();
           Usuario usuario = (Usuario)ctx.lookup(login);
           
           AjusteModelo ajuste = new AjusteModelo(usuario,"java:/jdbc/OracleIndice");
           ajuste.verificaInstanciaModelo();
            
           return mapping.findForward( "success");
        }
        catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("ErroMsg",e.getMessage());
            return mapping.findForward( "erro");
        }
    }
}
