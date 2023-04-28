package com.test.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	SqlSession sqlSession;	
	
	@Autowired
	UserDAO userDAO;
	
	
	
	@RequestMapping(value = "/validTest")
	public ModelAndView validTest(@Valid @ModelAttribute("userDTO") UserDTO userDTO, BindingResult bindingResult) {
		
		ModelAndView mv = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
		
			mv.addObject("userDTO", userDTO);
			mv.setViewName("makingPage");
			
		}else if(! userDTO.getPasswordReCheck().equals(userDTO.getUserPassword())) {
			
			mv.addObject("checkError", "비밀번호와 재확인비밀번호가 다릅니다.");
			mv.addObject("userDTO", userDTO);
			mv.setViewName("makingPage");
			
		}else {
			
			mv.setViewName("mainPage");
			
		}
			
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/idpwdCheck", method = RequestMethod.POST)
	public String idpwdCheck(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		UserDTO userDTO = new UserDTO();
		
		userDTO.setUserID(id);
		userDTO.setUserPassword(pwd);
		
		UserDTO dto = userDAO.idpwdCheck(userDTO);
		
		String message = null;
		
		if(dto != null) {
			
			message = "success";
		}else {
			
			message = "fail";
		}
		
		return message;
	}
	
	@ResponseBody
	@RequestMapping(value = "/dupCheck", method = RequestMethod.POST)
	public String dupCheck(HttpServletRequest request) throws Exception{
		
		String id = request.getParameter("id");
		
		UserDTO userDTO = new UserDTO();
		
		userDTO = userDAO.idDupCheck(id);
		System.out.println(userDTO);
		String message = null;
		
		if(userDTO == null) {
			
			message = "success";
		}else {
			
			message = "fail";
		}
		
		return message;	
	}
	
	@RequestMapping(value = "/doMake", method = RequestMethod.POST)
	public ModelAndView doMake(@Valid @ModelAttribute("userDTO") UserDTO userDTO, BindingResult bindingResult, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
			
			mv.addObject("userDTO", userDTO);
			mv.setViewName("makingPage");
			
		}else if(! userDTO.getPasswordReCheck().equals(userDTO.getUserPassword())) {
			
			mv.addObject("checkError", "비밀번호와 재확인비밀번호가 다릅니다.");
			mv.addObject("userDTO", userDTO);
			mv.setViewName("makingPage");
			
		}else {
			
			userDAO.userInsert(userDTO);
			
			mv.setViewName("loginPage");
			
		}
		
		return mv;
		
	}
		
	@ResponseBody
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public Map<String, Object> returnMap() throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		NumberDTO dto = new NumberDTO();
		
		// 6자리 짜리 난수생성
		Random random = new Random(); // 랜덤 함수 선언

		int createNum 	 = 0; 		// 1자리 짜리 난수 선언
		String ranNum 	 = ""; 	// 1자리짜리 난수를 형변환한 변수
		int letter		 = 6; 		// 난수의 자릿수 : 6
		String resultNum = ""; 	// 결과인 난수
		
		for(int i = 1; i <= letter; i++) {
			
			createNum = random.nextInt(9); // 0부터 9까지의 한자릿수 난수 생성
			ranNum = Integer.toString(createNum); // 1자리 난수를 String으로 형변환
			resultNum = resultNum + ranNum; // 생성된 난수(문자열을 더함)
		}
		//난수생성 끝
		
		dto.setRanNum(resultNum);
		
		map.put("dto", dto.getRanNum());
		
		return map;
	}
	
	@RequestMapping(value = "/makingPage")
	public String makingPage() {	
		
		return "makingPage";
	}
	
	@RequestMapping(value = "/agreePage")
	public String agreePage() {	
		
		return "agreePage";
	}
	
	@RequestMapping(value = "/selectHowPage")
	public String selectHowPage() {	
		
		return "selectHowPage";
	}
	
	@RequestMapping(value = "/loginPage")
	public String loginPage() {	

		return "loginPage";
	}
	
	@RequestMapping(value = "/deleteOne")
	public ModelAndView deleteOne(HttpServletRequest request) {	
		
		ModelAndView mv = new ModelAndView();
		
		int pnumber = Integer.parseInt(request.getParameter("pnumber"));
		
		productDAO.deleteOne(pnumber);
		
		
		List<BasketDTO> basketList = productDAO.selectAllBasket();
		
		mv.addObject("basketList", basketList);
		
		mv.setViewName("basketPage");
		
		return mv;
	}
	
	@RequestMapping(value = "/basketedPage")
	public ModelAndView basketedPage(HttpServletRequest request) {	
		
		ModelAndView mv = new ModelAndView();
		
		List<BasketDTO> basketList = productDAO.selectAllBasket();
		
		mv.addObject("basketList", basketList);
		
		mv.setViewName("basketPage");
		
		return mv;
	}
	
	@RequestMapping(value = "/basketPage")
	public ModelAndView basketPage(HttpServletRequest request) {	
		
		ModelAndView mv = new ModelAndView();
		
		int pnumber = Integer.parseInt(request.getParameter("pnumber"));
		String pname = request.getParameter("pname");
		int pprice = Integer.parseInt(request.getParameter("pprice"));
		
		BasketDTO basketDTO = new BasketDTO();
		
		basketDTO.setPnumber(pnumber);
		basketDTO.setPname(pname);
		basketDTO.setPprice(pprice);
		
		productDAO.insertBasket(basketDTO);
		
		List<BasketDTO> basketList = productDAO.selectAllBasket();
		System.out.println(basketList.size());
		
		
		mv.addObject("basketList", basketList);
		mv.setViewName("basketPage");
		
		return mv;
	}
	
	@RequestMapping(value = "/buyPage")
	public ModelAndView buyPage(HttpServletRequest request) {	
		
		ModelAndView mv = new ModelAndView();
		
		String pnumber1 = request.getParameter("pnumber");
		int pnumber = Integer.parseInt(pnumber1);
		
		ProductDTO pro = productDAO.selectOne(pnumber);
		
		mv.addObject("pro", pro);
		mv.setViewName("buyPage");
		
		return mv;
	}
	
	@RequestMapping(value = "/detailPage")
	public ModelAndView detailPage(HttpServletRequest request) {	
		
		ModelAndView mv = new ModelAndView();
		
		String pnumber1 = request.getParameter("pnumber");
		
		int pnumber = Integer.parseInt(pnumber1); 
		
		System.out.println(pnumber);
		
		
		ProductDTO pro = productDAO.selectOne(pnumber);
		System.out.println(pro);
		
		mv.addObject("pro", pro);
		mv.setViewName("detailPage");
		return mv;
	}
	
	@RequestMapping(value = "/mainPage")
	public ModelAndView mainPage(@Valid @ModelAttribute("loginDTO") LoginDTO loginDTO, BindingResult bindingResult) {	
		
		ModelAndView mv = new ModelAndView();
		
		if(bindingResult.hasErrors()) {
			
			mv.setViewName("loginPage");
		}
		
		List<ProductDTO> list = productDAO.select();
	
		mv.addObject("list", list);
		mv.setViewName("mainPage");
		
		return mv;
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		List<ProductDTO> productList = productDAO.select();
		
		model.addAttribute("productList", productList);
		
		
		return "home";
	}
	
}