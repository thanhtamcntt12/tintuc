package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.NewsDAO;
import utils.SlugUtils;

@Controller
@RequestMapping(value = "/")
public class PublicController {
	
	@Autowired
	private NewsDAO newsDAO;
	
	@Autowired
	private SlugUtils slugUtil;
	
	@ModelAttribute
	public void addCommons(ModelMap modelMap){
		modelMap.addAttribute("slug", slugUtil);
	}
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap modeMap) {
		modeMap.addAttribute("listNews", newsDAO.getList());
		return "public/news/index";
	}
	
	@RequestMapping(value = "/{slug}-{id}.html", method = RequestMethod.GET)
	public String detail(@PathVariable("slug") String slug, @PathVariable("id") String id, ModelMap modeMap) {
		modeMap.addAttribute("objNews", newsDAO.getItem(id));
		modeMap.addAttribute("title", newsDAO.getItem(id).getName());
		return "public/news/detail";
	}
}
