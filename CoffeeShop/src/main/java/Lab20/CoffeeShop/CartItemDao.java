package Lab20.CoffeeShop;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository 
@Transactional
public class CartItemDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<CartItem> findAll() {
		return em.createQuery("FROM CartItem", CartItem.class).getResultList();
	}
	
	public void create(CartItem c) {
		em.persist(c);
	}
	
	public void update(CartItem menuItem) {
		em.merge(menuItem);
	}

}
