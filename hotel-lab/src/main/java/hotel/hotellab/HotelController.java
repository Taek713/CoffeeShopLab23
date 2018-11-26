package hotel.hotellab;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {

	@Autowired
	private HotelDao hotelDao;

	@RequestMapping("/")
	public ModelAndView showHomeForm() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("city", hotelDao.getClass());
		return mv;

	}

	@RequestMapping("/hotels")
	public ModelAndView hotels(@RequestParam(name = "city", required = false) String city) {
		ModelAndView mv = new ModelAndView("hotelslist");
		
		mv.addObject("hotelslist", hotelDao.findByCity(city));
		return mv;

	}

}
