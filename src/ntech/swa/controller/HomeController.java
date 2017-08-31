package ntech.swa.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ntech.swa.entity.DataTbl;
import ntech.swa.service.DataTblService;


@Controller
public class HomeController {
	
	@Autowired
	DataTblService dataTableService;
	
	@RequestMapping("/")
	public ModelAndView context(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Executing SpringWebAapplication");
		System.out.println("Request URL: /");
		
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping("/home")
	public ModelAndView home(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Request URL: home");
		
		return new ModelAndView("home");
	}
	
	@RequestMapping("/viewData")
	public ModelAndView viewData(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Request URL: viewData");
		
		List<DataTbl> fetchAllData = dataTableService.fetchAllData();
		model.addAttribute("dataList", fetchAllData);
		
		System.out.println("fetchAllData size: "+fetchAllData.size());
		
		return new ModelAndView("viewdata");
	}
	
}
