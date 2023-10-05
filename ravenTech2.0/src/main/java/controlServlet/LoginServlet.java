package controlServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import modelEntidades.Usuario;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String senha = request.getParameter("senha");


		if (email == null || senha == null) {

			request.setAttribute("msg", "Campos em branco");

			request.getRequestDispatcher("login.jsp").forward(request, response);

		} else {

			if (email.equalsIgnoreCase("admin@admin.com") && senha.equalsIgnoreCase("admin")) {

				request.getRequestDispatcher("telaDoAdmin.jsp").forward(request, response);

			} else {

				Usuario usuario = new Usuario();

				if (usuario.verificarLogin(email, senha)) {

					if (usuario.getTipoUser().equalsIgnoreCase("aluno")) {

						request.setAttribute("tipo", usuario.getTipoUser());
						request.setAttribute("nome", usuario.getNome());
						request.setAttribute("cpf", usuario.getCpf());
						request.getSession().setAttribute("usuarioLogado", usuario);

						request.getRequestDispatcher("bemVindoAluno.jsp").forward(request, response);

					}

				} else {

					if (usuario.getTipoUser().equalsIgnoreCase("professor")) {

						request.setAttribute("tipo", usuario.getTipoUser());
						request.setAttribute("nome", usuario.getNome());

						request.getSession().setAttribute("usuarioLogado", usuario);

						request.getRequestDispatcher("bemVindoProfessor.jsp").forward(request, response);

					} else {

						request.setAttribute("msg", "Erro, tente novamente ou mais tarde");
//						response.sendRedirect("login.jsp");
						request.getRequestDispatcher("login.jsp").forward(request, response);

					}

				}

			}

		}
	}
}
