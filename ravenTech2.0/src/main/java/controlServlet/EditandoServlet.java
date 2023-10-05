package controlServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelEntidades.Usuario;

@WebServlet("/EditandoServlet")
public class EditandoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditandoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cpf = request.getParameter("cpf");
		Usuario usuario = new Usuario();

		System.out.println(cpf);
		if (usuario.localizarUsuario(cpf)) {

			System.out.println("ERROO");

			request.setAttribute("id", usuario.getId());
			request.setAttribute("nome", usuario.getNome());

			request.setAttribute("emaill", usuario.getEmail());
			request.setAttribute("cpf", usuario.getCpf());
			request.setAttribute("telefone", usuario.getTelefone());
			request.setAttribute("dataNascimento", usuario.getDataNascimento());
			request.setAttribute("endereco", usuario.getEndereco());

			request.getRequestDispatcher("editarAluno.jsp").forward(request, response);

		}

	}

}
