package controlServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import modelEntidades.Usuario;

@WebServlet("/EditarAlunoServlet")
public class EditarAlunoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditarAlunoServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			
//			System.out.println(request.getParameter("id"));
			
            long id = Long.parseLong(request.getParameter("id"));
			String nome = request.getParameter("nomeCompleto");
			String email = request.getParameter("emaill");
			String senha = request.getParameter("crieSenha");
			String cpf = request.getParameter("cpf");
			String telefone = request.getParameter("telefone");
			String dataNascimento = request.getParameter("dataDeNascimento");
			String endereco = request.getParameter("endereco");

			
			

			Usuario usuario =  new Usuario();

			if (usuario.editarUsuario(id, nome, email, senha, cpf, telefone, dataNascimento, endereco)) {

				request.setAttribute("Informações atualizadas com sucesso!!", usuario.getMsg());
				Usuario usuario1 = (Usuario) request.getSession().getAttribute("usuarioLogado");
				String n = usuario1.getNome();
				String cpf1 = usuario1.getCpf();
				request.setAttribute("cpf", cpf1);
				request.setAttribute("nome", n);
				request.getRequestDispatcher("bemVindoAluno.jsp").forward(request, response);

			}else {
				
				
				
				request.setAttribute("Erro ao atualizar informações,tente novamente", usuario.getMsg());
				request.getRequestDispatcher("editarAluno.jsp").forward(request, response);
				
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
