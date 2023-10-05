package modelEntidades;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@Entity
public class Aluno extends Usuario {

	@Column(nullable = true, length = 10, unique = true)
	private String turma;

	@Column(nullable = true, length = 7, unique = true)
	private String matricula;

	// CONSTRUTOR
	public Aluno() {
		super();
	}

	public Aluno(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco, String turma, String matricula) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco);
		this.turma = turma;
		this.matricula = matricula;
	}
	
	

	public Aluno(long id, String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco) {
		super(id, nome, email, senha, cpf, telefone, dataNascimento, endereco);
	}

	// CONSTRUTOR PAI
	public Aluno(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco, String msg) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco, msg);
		// TODO Auto-generated constructor stub
	}

	public Aluno(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco);
		// TODO Auto-generated constructor stub
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
	
	
	
	
	
	

}
