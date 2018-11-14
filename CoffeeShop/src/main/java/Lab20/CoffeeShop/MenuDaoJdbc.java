package Lab20.CoffeeShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDaoJdbc {

	// Spring will automatically inject this dependency thanks to @Autowired
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<MenuItem> findAll() {
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		List<MenuItem> list = jdbcTemplate.query("SELECT * FROM menu_item", new BeanPropertyRowMapper<>(MenuItem.class));
		System.out.println(list);
		return list;
	}

	public MenuItem findById(Long id) {
		// The last parameters of .query let us specify values for the (?) parameters in
		// our SQL statement.
		// While .query returns a list, .queryForObject assumes only one result.
		MenuItem match = jdbcTemplate.queryForObject("SELECT * FROM menu_item WHERE id = ?",
				new BeanPropertyRowMapper<>(MenuItem.class), id);
		// If nothing matched, match will be null.
		return match;
	}
	
	

	public void update(MenuItem Menu) {
		String sql = "UPDATE Room SET  = ?, description = ?, price = ? WHERE id = ?";
		// Use .update for SQL INSERT, UPDATE, and DELETE
		// All the parameters after the first specify values to fill in the ?s in the
		// SQL.
	//	jdbcTemplate.update(sql, Menu.getName(), Menu.getDescription(), Menu.getPrice(), ((Object) Menu).getId());
	}

	public void create(MenuItem menu) {
		String sql = "INSERT INTO MenuItem (name, description, price) VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, menu.getName(), menu.getDescription(), menu.getPrice());
	}

	public void delete(Long id) {
		String sql = "DELETE FROM menu_item WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}


	
	
}
