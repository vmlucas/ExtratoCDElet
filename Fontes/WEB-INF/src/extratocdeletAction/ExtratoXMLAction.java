package extratocdeletAction;

import extratocdelet.Modelo;

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
 * Action servlet que serve para gerar o extrato de qualquer participante em formato xml.
 * Usado pela novo site da eletros (Gluck) para gerar o extrato.
 * 
 * Pode ser usado como um esboco da camada de servicos que pretende-se adotar na DVTI Eletros.
 */
public class ExtratoXMLAction extends Action {
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
        try
        {
            String login = request.getParameter("numEletros");
            
            HttpSession session = request.getSession();
            Modelo model = new Modelo( login );
            extrato.ExtratoCD extratocd = model.buscaExtratoCDElet();
            if(extratocd.getSaldoAtual() != 0.0){
              session.setAttribute("extrato",extratocd);
              return mapping.findForward( "success");
            }
            else{
               request.setAttribute("ErroMsg","Extrato nao pode ser gerado para o participante.");
               return mapping.findForward( "erroXML");
            }

        }
        catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("ErroMsg",e.getMessage());
            return mapping.findForward( "erroXML");
        }
    }
}
