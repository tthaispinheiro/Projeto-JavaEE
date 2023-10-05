package modelEntidades;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Transient;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@Entity
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // DEFININDO O AUTO INCREMENT DO ID, DEFINIÇÃO DE CHAVE PRIMARIA
	protected long id;

	@Column(length = 200, nullable = true)
	private String nome;

	@Column(length = 200, unique = true, nullable = true)
	private String email;

	@Column(length = 7, nullable = true)
	private String senha;

	@Column(length = 11, unique = true, nullable = true)
	private String cpf;
	
	@Column
	private String tipoUser = "usuario";
	
	@Column(nullable = true)
	private String telefone;

	@Column(nullable = true)
	private String dataNascimento;

	@Column(length = 250, nullable = true)
	private String endereco;

	@Transient
	private String msg;

	// CONSTRUTOR
	public Usuario() {
		super();
	}

//COM ID
	public Usuario(long id, String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.cpf = cpf;
		this.telefone = telefone;
		this.dataNascimento = dataNascimento;
		this.endereco = endereco;
	}

	// SEM O ID E SEM MSG

	public Usuario(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco) {
		super();
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.cpf = cpf;
		this.telefone = telefone;
		this.dataNascimento = dataNascimento;
		this.endereco = endereco;

	}

//COM MSG
	public Usuario(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco, String msg) {
		super();
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.cpf = cpf;
		this.telefone = telefone;
		this.dataNascimento = dataNascimento;
		this.endereco = endereco;
		this.msg = msg;
	}

	// GET E SET
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}



	public String getTipoUser() {
		return tipoUser;
	}

	public void setTipoUser(String tipoUser) {
		this.tipoUser = tipoUser;
	}

	
	
	

	
	public boolean salvar() {

		Session session;
		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

			session = sessionFactory.openSession();
			session.getTransaction().begin();
			session.save(this);
			session.getTransaction().commit();
			session.close();
			return true;

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;

	}

	public boolean verificarLogin(String email, String senha) {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			session.getTransaction().begin();

			System.out.println(email);
			System.out.println(senha);

			Query query = session.createNativeQuery("SELECT * FROM Usuario WHERE email = :email and senha = :senha").addEntity(Usuario.class)  ;
			query.setParameter("email", email);
			query.setParameter("senha", senha);
			List<Usuario> usuario = query.getResultList();
			session.close();

			if (usuario == null | usuario.size() == 0) {

				this.setMsg("Usuario não encontrado");
				return false;

			} else {

				for (Usuario emaill : usuario) {

					this.setEmail(emaill.getEmail());
					this.setNome(emaill.getNome());
					this.setTipoUser(emaill.getTipoUser());
					this.setCpf(emaill.getCpf());
					return true;

				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

	public boolean editarUsuario(long id, String nome, String email, String senha, String cpf, String telefone,
			String dataNascimento, String endereco) {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			Query query = session.createNativeQuery(
					"UPDATE Usuario set nome = :nome,email = :email,senha = :senha,cpf = :cpf,telefone = :telefone,dataNascimento = :dataNascimento,endereco = :endereco WHERE id = :id");

			query.setParameter("id", id);
			query.setParameter("nomeCompleto", nome);
			query.setParameter("emaill", email);
			query.setParameter("crieSenha", senha);
			query.setParameter("cpf", cpf);
			query.setParameter("telefone", telefone);
			query.setParameter("dataNascimento", dataNascimento);
			query.setParameter("endereco", endereco);
			query.executeUpdate();
			session.close();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	// METODO TESTE
	public boolean editarUsuario1(String nome, String email, String senha, String cpf, String telefone,
			String dataNascimento, String endereco) {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			Query query = session.createNativeQuery(
					"UPDATE Usuario set nome = :nome,email = :email,senha = :senha,cpf = :cpf,telefone = :telefone,dataNascimento = :dataNascimento,endereco = :endereco WHERE cpf = :cpf");

//			query.setParameter("id", id);
			query.setParameter("nomeCompleto", nome);
			query.setParameter("emaill", email);
			query.setParameter("crieSenha", senha);
			query.setParameter("cpf", cpf);
			query.setParameter("telefone", telefone);
			query.setParameter("dataNascimento", dataNascimento);
			query.setParameter("endereco", endereco);
			query.executeUpdate();
			session.close();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean localizarUsuario(String pesquisar) {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			Query query = session.createNativeQuery("SELECT * FROM Usuario WHERE cpf = :pesquisar").addEntity(Usuario.class);
			query.setParameter("pesquisar", pesquisar);
			System.out.println(query);

			List<Usuario> usuario = query.getResultList();
			session.close();

			if (usuario == null || usuario.size() == 0) {

				this.setMsg("Usuário não encontrado");
				
				return false;

			} else {

				
				for (Usuario usu : usuario) {

					
					this.setId(usu.getId());
					this.setNome(usu.getNome());
					this.setEmail(usu.getEmail());
					this.setCpf(usu.getCpf());
					this.setTelefone(usu.getTelefone());
					this.setDataNascimento(usu.getDataNascimento());
					this.setEndereco(usu.getEndereco());

					
					return true;
				}
			return true;
			} 

		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;

	}

	public boolean deletarUsuario(long id) {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			session.getTransaction().begin();
			Query query = session.createNativeQuery("DELETE FROM Usuario id WHERE id = :id ");
			query.setParameter("id", id);

			query.executeUpdate();
			session.close();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

}
