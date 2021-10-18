package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;
import dao.DataSource;
import dao.UsuarioDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	

	public void doPost(HttpServletRequest request,
                       HttpServletResponse response) {
		String pagina="";
		try {

			DataSource dataSource = new DataSource();

			UsuarioDAO usuarioDao = 
                           new UsuarioDAO(dataSource);

			Usuario userLogin = new Usuario();
			userLogin.setEmail(
request.getParameter("email"));
			userLogin.setSenha(
request.getParameter("senha"));
			Usuario user = usuarioDao.read(userLogin);
			if (user == null) {

				request.setAttribute("ERROMSG", "Usuário não encontrado");
				pagina = "./cadastro.html";
			}
			else {
				request.getSession().setAttribute("Usuario", user);
				pagina = "/dadosUsuario.jsp";
			}


			RequestDispatcher dispatcher = 
    getServletContext()
   .getRequestDispatcher(pagina);
			dispatcher.forward(request, response);
		}
		catch(Exception ex) {
			System.out.println("ERRO on LOGINSERVLET "+
                             ex.getMessage());
		}
	}
}