package conexaoBanco;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Conexao {

	public Session abrirSession() {

		Session session;

		try {

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();

			session.beginTransaction();

			return session;

		} catch (Exception e) {
			e.toString();
			return null;

		}

	}

}
