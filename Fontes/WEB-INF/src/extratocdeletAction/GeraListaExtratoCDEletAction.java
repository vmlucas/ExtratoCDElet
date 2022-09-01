package extratocdeletAction;

import extratocdelet.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


/**
 * Servlet que busca uma lista de extratos CD Elet. que tenham alguma contribuicao cadastrada.
 * @author victor
 */
public class GeraListaExtratoCDEletAction extends Action {
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
        
        Relatorios rel = new Relatorios();
        try
        {
          session.setAttribute("listaExtrato", rel.buscaListaExtratoCDElet());
          return mapping.findForward( "success");
        }
        catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("ErroMsg",e.getMessage());
            return mapping.findForward( "erro");
        }
    }
}
