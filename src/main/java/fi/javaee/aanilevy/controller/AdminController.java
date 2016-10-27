package fi.javaee.aanilevy.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.javaee.aanilevy.bean.Aanilevy;
import fi.javaee.aanilevy.bean.AanilevyImpl;
import fi.javaee.aanilevy.dao.AanilevyDAO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Inject
	private AanilevyDAO dao;

	// näytä formi
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String adminsivu(Model model) {
		Aanilevy tyhjaAanilevy = new AanilevyImpl();
		model.addAttribute("aanilevy", tyhjaAanilevy);
		return "admin/create";
	}

	// hae syötetyt tiedot
	@RequestMapping (value ="/create", method = RequestMethod.POST)
	public String create(@ModelAttribute(value="aanilevy") @Valid AanilevyImpl a, BindingResult result) {
		if (result.hasErrors()) {
			return "admin/create";
		} else {
			dao.talleta(a);
			return "redirect:/admin/create/" + a.getId();
		}
	}
	
	// näytä yksi äänilevy
	@RequestMapping(value="create/{id}", method=RequestMethod.GET)
	public String getView(@PathVariable Integer id, Model model) {
		Aanilevy aanilevy = dao.etsi(id);
		model.addAttribute("aanilevy", aanilevy);
		return "admin/view";
	}

	
}

