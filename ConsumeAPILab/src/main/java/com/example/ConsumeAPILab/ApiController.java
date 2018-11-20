package com.example.ConsumeAPILab;

import java.util.List;
import java.util.concurrent.ExecutionException;

import javax.xml.ws.Response;

import org.eclipse.jdt.internal.compiler.apt.dispatch.HookedJavaFileObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class ApiController {

	@Autowired
	private ApiService apiService;

	@RequestMapping("/")
	public ModelAndView tiny() {
		ModelAndView mv = new ModelAndView("tiny");

		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		RestTemplate rest = new RestTemplate();
		HallOfFame hof = rest.getForObject(url, HallOfFame.class);

		mv.addObject("tinylist", hof.getTiny());

		return mv;
	}

	@RequestMapping("/complete")
	public ModelAndView complete() {
		ModelAndView mv = new ModelAndView("complete");
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		RestTemplate rest = new RestTemplate();
		HallOfFame hof = rest.getForObject(url, HallOfFame.class);

		mv.addObject("completelist", hof.getComplete());
		return mv;
	}

}
