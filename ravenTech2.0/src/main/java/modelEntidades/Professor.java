package modelEntidades;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Professor extends Usuario {

	
	@Column
	private String materia;
	
	

	public Professor() {
		super();
	}


	
	
	

	public Professor(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco, String materia) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco);
		this.materia = materia;
	}






	public Professor(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco, String msg, String materia) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco, msg);
		this.materia = materia;
	}



//CONSTRUTOR PAI


	public Professor(long id, String nome, String email, String senha, String cpf, String telefone,
			String dataNascimento, String endereco) {
		super(id, nome, email, senha, cpf, telefone, dataNascimento, endereco);
		// TODO Auto-generated constructor stub
	}






	public Professor(String nome, String email, String senha, String cpf, String telefone, String dataNascimento,
			String endereco) {
		super(nome, email, senha, cpf, telefone, dataNascimento, endereco);
		// TODO Auto-generated constructor stub
	}
	
	
	
	

	
	
	
	
	
	
	
	
	

}
