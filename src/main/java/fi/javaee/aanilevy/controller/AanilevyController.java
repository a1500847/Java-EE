package fi.javaee.aanilevy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.javaee.aanilevy.bean.Aanilevy;
import fi.javaee.aanilevy.dao.AanilevyDAO;

@Controller
@RequestMapping(value="/")
public class AanilevyController {
	
	@Inject
	private AanilevyDAO dao;

	//Listaa kaikki levyt
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getList(Model model) {
		List<Aanilevy> levyt = new ArrayList<Aanilevy>(dao.haeKaikki());
		model.addAttribute("levyt", levyt);
		return "welcome";
	}
}
