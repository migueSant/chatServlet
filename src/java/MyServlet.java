import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyServlet extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String  accion = request.getParameter("cambiar");
        
        //localhost:8081/primerServlet/jsp/login.jsp?cambiar=home
        if(accion.equals("login")){
            cargarVista("login").forward(request, response);
        }
        else if(accion.equals("inicio")){ 
            cargarVista("JSPhome").forward(request, response);
        }
        
       
        
               
    }

 
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  processRequest(request, response);String accion = request.getParameter("accion");
		 String ini = request.getParameter("ini");
		if (ini != null && request.getParameter("usuario")!="" && request.getParameter("pass")!="") {
			
			if (ini.equals("iniciarSesion")) {
				
				System.out.println( 
						"Usuario: " + request.getParameter("usuario") +
						", Contraseña: " + request.getParameter("pass")
						);
                                
                                String usuario = request.getParameter("usuario");
                                String pass = request.getParameter("pass");
                              
                                //request
                                request.setAttribute("usuario", usuario);
                                request.setAttribute("pass", pass);
                                
                                //session
                                HttpSession session = request.getSession();
                                session.setAttribute("usuario", usuario);
                                session.setAttribute("pass", pass);
                                
                                //context
                                ServletContext context = getServletContext();
                                context.setAttribute("usuario", usuario);
                                context.setAttribute("pass", pass);
                                
                                cargarVista("principal").forward(request, response);
			}
			
			
		}
		else {
			cargarVista("login").forward(request, response);
		}
	
      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    public RequestDispatcher cargarVista(String ruta){
        String url = "/jsp/"+ ruta + ".jsp";
        return getServletContext().getRequestDispatcher(url);
    }

}
