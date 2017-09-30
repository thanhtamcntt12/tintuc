package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import dao.NewsDAO;
import entities.News;
import utils.RenameFileLibrary;

@Controller
@RequestMapping(value = "admin")
public class AdminController {

	@Autowired
	private NewsDAO newsDAO;

	@Autowired
	private RenameFileLibrary renameFileLibrary;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("listNews", newsDAO.getList());
		return "admin/news/list";
	}

	@RequestMapping(value = "/news/add", method = RequestMethod.GET)
	public String add() {
		return "admin/news/add";
	}

	@RequestMapping(value = "/news/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("objNews") News objNews,
			@RequestParam("img") CommonsMultipartFile multipartFile, HttpServletRequest request) {
		objNews.setImage(multipartFile.getOriginalFilename());
		String fileName = multipartFile.getOriginalFilename();
		if (!"".equals(fileName)) {
			String fileRename = renameFileLibrary.renameFile(multipartFile.getOriginalFilename());
			objNews.setImage(fileRename);
			String filePath = request.getServletContext().getRealPath("files");
			System.out.println(filePath);
			File file = new File(filePath);
			if (!file.exists()) {
				file.mkdir();
			}
			File fileUpload = new File(filePath + File.separator + fileRename);
			try {
				multipartFile.transferTo(fileUpload);
				System.out.println("upload file success");
			} catch (IllegalStateException | IOException e) {
				// TODO: handle exception
				System.out.println("loi upload");
			}
		}

		if (newsDAO.addNews(objNews) > 0) {
			return "redirect:/admin?msg=add";
		}
		return "redirect:/admin?msg=err";

	}

	@RequestMapping(value = "/news/del/{id}", method = RequestMethod.GET)
	public String del(@PathVariable("id") String id, HttpServletRequest request) {
		String image = newsDAO.getItem(id).getImage();
		final String path = request.getServletContext().getRealPath("files");
		if (!"".equals(image)) {
			String urlFile = path + File.separator + image;
			File delFile = new File(urlFile);
			delFile.delete();
		}
		if (newsDAO.delNews(id) > 0) {
			return "redirect:/admin?msg=del";
		} else {
			return "redirect:/admin?msg=err";
		}
	}

	@RequestMapping(value = "/news/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") String id, ModelMap modelMap) {
		modelMap.addAttribute("objNews", newsDAO.getItem(id));
		return "admin/news/edit";
	}

	@RequestMapping(value = "/news/edit/{id}", method = RequestMethod.POST)
	public String edit(@PathVariable("id") String id, @Valid @ModelAttribute("objNews") News objNews,
			@RequestParam("filename") CommonsMultipartFile commonsMultipartFile, HttpServletRequest request) {

		//objNews.setId(id);
//		String filename = commonsMultipartFile.getOriginalFilename();
//		if (!filename.isEmpty()) {
//			if (!"".equals(objNews.getImage())) {
//				System.out.println(request.getServletContext().getRealPath("files"));
//				String filePath = request.getServletContext().getRealPath("files" + File.separator + objNews.getImage());
//				File fileOld = new File(filePath);
//				fileOld.delete();
//			}
//			String filePath = request.getServletContext().getRealPath("files");
//			File dir = new File(filePath);
//			if (!dir.exists()) {
//				dir.mkdirs();
//			}
//			filePath = filePath + File.separator + filename;
//			File file = new File(filePath);
//			try {
//				commonsMultipartFile.transferTo(file);
//				System.out.println("uploa ok");
//			} catch (IllegalStateException | IOException e) {
//				// TODO: handle exception
//				System.out.println("loi upload");
//				e.printStackTrace();
//			}
//			objNews.setImage(filename);
//		}
		
		if (newsDAO.editNews(objNews) > 0) {

			return "redirect:/admin?msg=edit";
		} else {
			return "redirect:/admin?msg=err";
		}

	}

}
