package controlServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEntidades.Aluno;
import modelEntidades.Usuario;

@WebServlet("/MatriculeServlet")
public class MatriculeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MatriculeServlet() {
		super();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String nome = request.getParameter("nomeCompleto");
			String email = request.getParameter("emaill");
			String senha = request.getParameter("crieSenha");
			String cpf = request.getParameter("cpf");
			String telefone = request.getParameter("telefone");
			String dataNascimento = request.getParameter("dataDeNascimento");
			String endereco = request.getParameter("endereco");


			

			Usuario usuario = new Usuario(nome, email, senha, cpf, telefone, dataNascimento, endereco);

			if (usuario.salvar()) {

				request.getRequestDispatcher("login.jsp").forward(request, response);

			} else {

				request.setAttribute("Erro ao cadastrar", usuario.getMsg());
				request.getRequestDispatcher("matricule.jsp").forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
