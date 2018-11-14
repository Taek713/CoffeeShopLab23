package Lab20.CoffeeShop;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository 
@Transactional
public class MenuDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<MenuItem> findAll() {
		return em.createQuery("FROM MenuItem", MenuItem.class).getResultList();
	}
	
	public void create(MenuItem menuItem) {
		em.persist(menuItem);
	}
	
	public void update(MenuItem menuItem) {
		em.merge(menuItem);
	}
	
	public MenuItem findById(Long id) {
		return em.find(MenuItem.class, id);
	}
	
	public void delete(Long id) {
		MenuItem menuItem = em.getReference(MenuItem.class, id);
		em.remove(menuItem);
	}
		
	
	
	
	
}
