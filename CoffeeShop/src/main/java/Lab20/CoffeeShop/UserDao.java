package Lab20.CoffeeShop;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class UserDao {

//	@PersistenceContext
//	private EntityManager em;
//
//	public List<User> findAll() {
//		return em.createQuery("FROM User", User.class).getResultList();
//	}
//
//	public void create(User user) {
//		em.persist(user);
//	}

	@PersistenceContext
	private EntityManager em;

	public User findById(Long id) {
		return em.find(User.class, id);
	}

	public User findByUsername(String username) {
		try {
			return em.createQuery("FROM User WHERE username = :username", User.class).setParameter("username", username)
					.getSingleResult();
		} catch (NoResultException ex) {
			// No user with that username found.
			return null;
		}
	}

	public void create(User user) {
		em.persist(user);
	}

	public void update(User user) {
		em.merge(user);
	}

}
