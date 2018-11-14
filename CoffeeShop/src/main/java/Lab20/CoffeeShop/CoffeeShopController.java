package Lab20.CoffeeShop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeShopController {

	@Autowired
	private MenuDaoJdbc menuDao;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView my = new ModelAndView("home");

		return my;
	}

	@RequestMapping("/userregistration")
	public ModelAndView showregistration() {
		ModelAndView my = new ModelAndView("userregistration");

		return my;
	}

	@RequestMapping("/summarypage")

	public ModelAndView addUser(Model model, @RequestParam("firstname") String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("email") String email,
			@RequestParam("phonenumber") String phonenumber, @RequestParam("password") String password) {

		ModelAndView my = new ModelAndView("summarypage");
		my.addObject("firstname", firstname);
		my.addObject("lastname", lastname);
		my.addObject("email", email);
		my.addObject("phonenumber", phonenumber);
		my.addObject("password", password);

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
	public ModelAndView newMenu(MenuItem menu) {
		menuDao.create(menu);

		return new ModelAndView("redirect:/testmenu");
	}

	@RequestMapping("/additem")
	public ModelAndView addItem() {
		ModelAndView mv = new ModelAndView("additem");
		return mv;
	}

	@RequestMapping("/testmenu/{id}")
	public ModelAndView showItem(@PathVariable("id") Long id) {
		MenuItem menu = menuDao.findById(id);

		return new ModelAndView("testadmin", "menuItem", menu);
	}

	@RequestMapping("/testmenu/{id}/delete")
	public ModelAndView remove(@PathVariable("id") Long id) {
		menuDao.delete(id);
		return new ModelAndView("redirect:/testmenu");
	}

	@RequestMapping("/testmenu/{id}/edititem")
	public ModelAndView edit(@PathVariable("id") Long id) {
		MenuItem menu = menuDao.findById(id);

		return new ModelAndView("edititem", "menuItem", menu);
	}

	@PostMapping("/testmenu/{id}/edititem")
	public ModelAndView save(@PathVariable("id") Long id, MenuItem menu) {
		menu.setId(id);
		menuDao.update(menu);
		return new ModelAndView("redirect:/testmenu");
	}

}
