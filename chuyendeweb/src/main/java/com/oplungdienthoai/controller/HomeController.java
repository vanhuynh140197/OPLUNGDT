package com.oplungdienthoai.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oplungdienthoai.model.GioHang;
import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.model.UsersEntity;
import com.oplungdienthoai.services.ProductsService;
import com.oplungdienthoai.services.PromotionsService;
import com.oplungdienthoai.services.UsersService;

@Controller
@RequestMapping(value = "/oplungdienthoai")
public class HomeController {

	@Autowired
	UsersService userService;

	@Autowired
	ProductsService productService;

	@Autowired
	PromotionsService promotionService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap modelMap) {
		List<ProductsEntity> productsEntities = productService.getAll();
		@SuppressWarnings({ "rawtypes", "unchecked" })
		PagedListHolder pagedListHolder = new PagedListHolder(productsEntities);
		int page = ServletRequestUtils.getIntParameter(request, "page", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "/ui/index";
	}

	@RequestMapping(value = "/chitiet/{productsId}", method = RequestMethod.GET)
	public String chiTiet(@PathVariable(value = "productsId") String productsId, ModelMap modelMap) {
		System.out.println(productsId);
		ProductsEntity productsEntity = productService.getProducts(productsId);
		List<ProductsEntity> productsEntities = productService
				.getProductsUseProductType(productsEntity.getProductTypesId());
		modelMap.put("detailProduct", productsEntity);
		modelMap.put("listProductDetail", productsEntities);
		return "/ui/detail";
	}

	@RequestMapping(value = "/giohang/{productsId}", method = RequestMethod.GET)
	public String gioHang(@PathVariable(value = "productsId") String productsId, HttpSession session,
			ModelMap modelMap) {
		if (session.getAttribute("LoginSuccess") == null) {
			return "redirect:/oplungdienthoai/dangnhap";
		} else {

			ProductsEntity productsEntity = productService.getProducts(productsId);
			if (session.getAttribute("gio_hang") == null) {
				session.setAttribute("gio_hang", new LinkedList<>());
			}
			@SuppressWarnings("unchecked")
			List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
			GioHang gh = productService.getProductInGioHang(gioHang, productsEntity);
			if (gh != null) {
				// lay 1 sp de tang so luong
				gh.setSoLuong(gh.getSoLuong() + 1);
			} else {
				gioHang.add(new GioHang(productsEntity, 1));
			}
			return "/ui/basket";

		}
	}

	@RequestMapping(value = "/menu")
	public String menu() {
		return "/ui/menu";
	}

	@RequestMapping(value = "/thanhtoan")
	public String thanhToan() {
		return "/ui/checkout1";
	}

	@RequestMapping(value = "/thanhtoan2")
	public String thanhToan2() {
		return "/ui/checkout2";
	}

	@RequestMapping(value = "/thanhtoan3")
	public String thanhToan3() {
		return "/ui/checkout3";
	}

	@RequestMapping(value = "/thanhtoan4")
	public String thanhToan4() {
		return "/ui/checkout4";
	}

	@RequestMapping(value = "/sanpham")
	public String sanPham() {
		return "/ui/category-right";
	}

	@RequestMapping(value = "/dangky")
	public String dangKy() {
		return "/ui/register";
	}

	@RequestMapping(value = "/dangnhap")
	public String dangNhap() {
		return "/ui/login";
	}

	@RequestMapping(value = "/logout")
	public String dangXuat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/oplungdienthoai/home";
	}

	@RequestMapping(value = "/login/ajax", method = RequestMethod.POST)
	public @ResponseBody String ajaxLogin(@RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, HttpSession session) throws NoSuchAlgorithmException {
		UsersEntity usersEntity = userService.getUsersName(email);
		String passwordMD5 = MD5Library.convertHashToString(password);
		if (usersEntity == null) {
			return "error";
		} else if (!usersEntity.getPasswords().trim().equals(passwordMD5)) {
			return "error";
		} else {
			session.setAttribute("LoginSuccess", usersEntity);
			return "success";
		}
	}

	@RequestMapping(value = "/register/ajax", method = RequestMethod.POST)
	public @ResponseBody String ajaxRegister(@RequestParam(value = "email") String email) {
		UsersEntity usersEntity = userService.getUsersName(email);
		if (usersEntity == null) {
			return "success";
		} else if (!usersEntity.getUserName().trim().equals(email)) {
			return "success";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "/xacnhandangki")
	public String XacNhanDangKi(@RequestParam(value = "email") String email) {
		userService.update(email, true);
		return "redirect:/oplungdienthoai/dangnhap";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public String register(@RequestParam(value = "email") String email, @RequestParam(value = "name") String name,
			@RequestParam(value = "pass") String pass, @RequestParam(value = "phone") String phone)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String userID = Long.toString(System.currentTimeMillis());
		String subject = "Register Obaju";
		String text = "<h2><b>Hello," + name + "</b></h2></br>"
				+ "<p>Cảm ơn bạn đã đăng ký tài khoản shop Obaju. Vui lòng xác nhận tài khoản để kích hoạt tài khoản. Cảm ơn bạn.</p></br>"
				+ "<a href=\"http://localhost:8080/chuyendeweb/oplungdienthoai/xacnhandangki?email=" + email
				+ "\"><button>Xác Nhận Đăng Kí</button></a>";

		UsersEntity usersEntity = new UsersEntity();
		usersEntity.setUserId("USE" + userID);
		usersEntity.setUserName(email);
		usersEntity.setPasswords(MD5Library.convertHashToString(pass));
		usersEntity.setName(name);
		usersEntity.setPhone(phone);
		usersEntity.setRoleId("2");
		usersEntity.setValidateEmail(false);
		usersEntity.setUsersStatus(false);
		SendMail.sendMail(email, subject, text);

		userService.add(usersEntity);
		return "/ui/registerSuccess";

	}
}
