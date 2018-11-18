package Lab20.CoffeeShop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CoffeeShopController {

	@Autowired
	private MenuDao menuDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private CartItemDao cartDao;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView my = new ModelAndView("home");

		return my;
	}



	@RequestMapping("/testmenu")
	public ModelAndView menu() {
		ModelAndView my = new ModelAndView("newmenu");
		List<MenuItem> menu = menuDao.findAll();
		System.out.println(menu);
		System.out.println("Hello");
		my.addObject("menu", menu);

		return my;
	}

	@RequestMapping("/testadmin")
	public ModelAndView showAdminPage() {

		ModelAndView mv = new ModelAndView("admin");
		mv.addObject("menu", menuDao.findAll());
		return mv;
	}

	@PostMapping("/testmenu")
	public ModelAndView newMenu(User user) {
		userDao.create(user);

		return new ModelAndView("redirect:/testmenu");
	}

	@RequestMapping("/additem")
	public ModelAndView addItem() {
		ModelAndView mv = new ModelAndView("additem");
		return mv;
	}

	@RequestMapping("/testmenu/{id}")
	public ModelAndView showItem(@RequestParam("id") Long id) {
		MenuItem menu = menuDao.findById(id);

		return new ModelAndView("testadmin", "menuItem", menu);
	}

	@RequestMapping("/delete")
	public ModelAndView deleteItem(@RequestParam("id") Long id) {
		ModelAndView mv = new ModelAndView("/admin");
		menuDao.delete(id);
		mv.addObject("menu", menuDao.findAll());
		return mv;
	}

	@RequestMapping("/testmenu/{id}/")
	public ModelAndView remove(@RequestParam("id") Long id) {
		menuDao.delete(id);
		return new ModelAndView("redirect:/testmenu");
	}

	@RequestMapping("/edititem")
	public ModelAndView edit(@RequestParam("id") Long id) {
		ModelAndView mv = new ModelAndView("/admin");
		MenuItem menu = menuDao.findById(id);
		mv.addObject("menu", menuDao.findAll());
		return new ModelAndView("edititem", "menuItem", menu);
	}

	@PostMapping("/testmenu/{id}/edititem")
	public ModelAndView save(@RequestParam("id") Long id, MenuItem menu) {
		menu.setId(id);
		menuDao.update(menu);
		return new ModelAndView("redirect:/testmenu");
	}

	@RequestMapping("/cart")
	public ModelAndView showcart() {
		ModelAndView mv = new ModelAndView("cart");
		mv.addObject("cartItem", cartDao.findAll());
		return mv;
	}

	@RequestMapping("/add-to-cart")
	public ModelAndView addToCart(@RequestParam("id") Long id) {
		MenuItem m = menuDao.findById(id);
		CartItem c = new CartItem();
		c.setQuantity(1);
		c.setMenuItem(m);
		System.out.println(c);
		cartDao.create(c);
		return new ModelAndView("redirect:/cart");
	}
 

}
