package hotel.hotellab;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class HotelDao {

	@PersistenceContext
	public EntityManager em;

//	public List<Hotel> findAll() {
//		return em.createQuery("FROM Hotel order by pricePerNight", Hotel.class).getResultList();
//	}

	public List<Hotel> findByCity(String city) {

		return em.createQuery("FROM Hotel WHERE city LIKE :city order by pricePerNight", Hotel.class)
				.setParameter("city", city).getResultList();
	}

	public Hotel findById(Long id) {
		return em.find(Hotel.class, id);
	}

}
