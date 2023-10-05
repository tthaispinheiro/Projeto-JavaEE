package controlServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelEntidades.Professor;

@WebServlet("/EditarProfessorServlet")
public class EditarProfessorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditarProfessorServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			long id = Long.parseLong(request.getParameter("id"));
			String nome = request.getParameter("nomeCompleto");
			String email = request.getParameter("emaill");
			String senha = request.getParameter("crieSenha");
			String cpf = request.getParameter("cpf");
			String telefone = request.getParameter("telefone");
			String dataNascimento = request.getParameter("dataDeNascimento");
			String endereco = request.getParameter("endereco");

			Professor professor = new Professor();

			if (professor.editarUsuario(id, nome, email, senha, cpf, telefone, dataNascimento, endereco)) {

				request.setAttribute("Informações atualizadas com sucesso!!", professor.getMsg());
				request.getRequestDispatcher("bemVindoProfessor.jsp").forward(request, response);

			} else {

				request.setAttribute("Erro ao atualizar informações,tente novamente", professor.getMsg());
				request.getRequestDispatcher("editarProfessor.jsp").forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
