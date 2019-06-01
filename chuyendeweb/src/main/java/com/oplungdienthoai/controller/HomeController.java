package com.oplungdienthoai.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oplungdienthoai.model.CustomersEntity;
import com.oplungdienthoai.model.GioHang;
import com.oplungdienthoai.model.OrderDetailsEntity;
import com.oplungdienthoai.model.OrdersEntity;
import com.oplungdienthoai.model.PaymentsEntity;
import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.model.ShippingMethodEntity;
import com.oplungdienthoai.model.UsersEntity;
import com.oplungdienthoai.services.CustomersService;
import com.oplungdienthoai.services.OrderDetailsService;
import com.oplungdienthoai.services.OrdersService;
import com.oplungdienthoai.services.PaymentsService;
import com.oplungdienthoai.services.ProductsService;
import com.oplungdienthoai.services.PromotionsService;
import com.oplungdienthoai.services.ShippingMethodService;
import com.oplungdienthoai.services.UsersService;

@Controller
@RequestMapping(value = "/oplungdienthoai")
public class HomeController {

	@Autowired
	UsersService userService;

	@Autowired
	CustomersService customerService;

	@Autowired
	ProductsService productService;

	@Autowired
	ShippingMethodService shippingMethodService;

	@Autowired
	PaymentsService paymentsService;

	@Autowired
	PromotionsService promotionService;

	@Autowired
	OrdersService ordersService;

	@Autowired
	OrderDetailsService orderDetailsService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getIndexPage(HttpServletRequest request, ModelMap modelMap) {
		List<ProductsEntity> productsEntities = productService.getAll();
		@SuppressWarnings({"rawtypes", "unchecked"})
		PagedListHolder pagedListHolder = new PagedListHolder(productsEntities);
		int page = ServletRequestUtils.getIntParameter(request, "page", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(6);
		modelMap.put("pagedListHolder", pagedListHolder);
		return "/ui/index";
	}

	@RequestMapping(value = "/search/ajax", method = RequestMethod.POST)
	public @ResponseBody List<ProductsEntity>
			getAjaxSearch(@RequestParam(value = "inputsearch") String inputsearch) {
		List<ProductsEntity> listProductsEntities = productService.search(inputsearch);
		return listProductsEntities;
	}

	@RequestMapping(value = "/chitiet/{productsId:.+}", method = RequestMethod.GET)
	public String getChiTietPage(@PathVariable(value = "productsId") String productsId,
			ModelMap modelMap) {
		ProductsEntity productsEntity = productService.getProducts(productsId);
		List<ProductsEntity> productsEntities = productService
				.getProductsUseProductType(productsEntity.getProductTypesId());
		modelMap.put("detailProduct", productsEntity);
		modelMap.put("listProductDetail", productsEntities);
		return "/ui/detail";
	}

	@RequestMapping(value = "/giohang/{productsId:.+}", method = RequestMethod.GET)
	public String getGioHangPage(@PathVariable(value = "productsId") String productsId,
			HttpSession session, ModelMap modelMap) {
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		UsersEntity user = userService.getUsersName(authentication.getName());
		if (user == null) {
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

	@RequestMapping(value = "/giohang/capnhap", method = RequestMethod.POST)
	public @ResponseBody String getAjaxGioHangCapNhap(
			@RequestParam(value = "quantity") int quantity,
			@RequestParam(value = "productid") String productid, HttpSession session) {
		ProductsEntity productsEntity = productService.getProducts(productid);
		@SuppressWarnings("unchecked")
		List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
		GioHang gh = productService.getProductInGioHang(gioHang, productsEntity);
		gh.setSoLuong(quantity);
		return "updatesuccess";
	}

	@RequestMapping(value = "/giohang/xoa", method = RequestMethod.POST)
	public @ResponseBody String getAjaxGioHangXoa(
			@RequestParam(value = "productid") String productid, HttpSession session) {
		ProductsEntity productsEntity = productService.getProducts(productid);
		@SuppressWarnings("unchecked")
		List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
		GioHang gh = productService.getProductInGioHang(gioHang, productsEntity);
		gioHang.remove(gh);
		if (gioHang == null || gioHang.equals("") || gioHang.size() == 0) {
			return "cartempty";
		} else {
			return "deletesuccess";
		}
	}

	@RequestMapping(value = "/giohangcuaban")
	public String hetGioHangCuaBanPage(HttpSession session) {
		session.getAttribute("gio_hang");
		return "/ui/basket";
	}

	@RequestMapping(value = "/menu")
	public String getMenuPage() {
		return "/ui/menu";
	}

	@RequestMapping(value = "/thanhtoan")
	public String getThanhToanPage() {
		return "/ui/checkout1";
	}

	@RequestMapping(
			value = "/thanhtoan2",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getThanhToan2Page(@RequestParam(value = "email") String email,
			@RequestParam(value = "name") String name,
			@RequestParam(value = "address") String address,
			@RequestParam(value = "phone") String phone,
			@RequestParam(value = "dateofbirth") String dateofbirth, ModelMap modelMap,
			HttpSession session) {
		CustomersEntity customersEntity = new CustomersEntity();
		String cusID = Long.toString(System.currentTimeMillis());
		Date dateBirth = Date.valueOf(dateofbirth);
		customersEntity.setCustomersId("CUS" + cusID);
		customersEntity.setAddress(address);
		customersEntity.setEmail(email);
		customersEntity.setPhone(phone);
		customersEntity.setCustomersName(name);
		customersEntity.setDateBirth(dateBirth);
		customersEntity.setCustomersStatus(false);
		customerService.add(customersEntity);
		modelMap.put("listShippingMethod", shippingMethodService.getAll());
		session.setAttribute("customer", customerService.getCustomers("CUS" + cusID));
		return "/ui/checkout2";
	}

	@RequestMapping(
			value = "/thanhtoans2",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getThanhToans2Page(@RequestParam(value = "customerid") String customerid,
			@RequestParam(value = "email") String email,
			@RequestParam(value = "name") String name,
			@RequestParam(value = "address") String address,
			@RequestParam(value = "phone") String phone,
			@RequestParam(value = "dateofbirth") String dateofbirth, ModelMap modelMap,
			HttpSession session) {
		CustomersEntity customersEntity = new CustomersEntity();
		Date dateBirth = Date.valueOf(dateofbirth);
		customersEntity.setCustomersId(customerid);
		customersEntity.setAddress(address);
		customersEntity.setEmail(email);
		customersEntity.setPhone(phone);
		customersEntity.setCustomersName(name);
		customersEntity.setDateBirth(dateBirth);
		customersEntity.setCustomersStatus(false);
		customerService.edit(customersEntity);
		modelMap.put("listShippingMethod", shippingMethodService.getAll());
		session.setAttribute("customer", customerService.getCustomers(customerid));
		return "/ui/checkout2";
	}

	@RequestMapping(value = "/backthanhtoan2", produces = "text/plain;charset=UTF-8")
	public String getBackThanhToan2Page(ModelMap modelMap, HttpSession session) {
		modelMap.put("listShippingMethod", shippingMethodService.getAll());
		return "/ui/checkout2";
	}

	@RequestMapping(
			value = "/thanhtoan3",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getThanhToan3Page(@RequestParam(value = "delivery") String delivery,
			ModelMap modelMap, HttpSession session) {
		session.setAttribute("shippingMethod",
				shippingMethodService.getShippingMethod(delivery));
		modelMap.put("listPayMent", paymentsService.getAll());
		return "/ui/checkout3";
	}

	@RequestMapping(value = "/backthanhtoan3", produces = "text/plain;charset=UTF-8")
	public String getBackThanhToan3Page(ModelMap modelMap, HttpSession session) {
		modelMap.put("listPayMent", paymentsService.getAll());
		return "/ui/checkout3";
	}

	@RequestMapping(
			value = "/thanhtoan4",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getThanhToan4Page(@RequestParam(value = "payment") String payment,
			HttpSession session) {
		session.setAttribute("payment", paymentsService.getPayments(payment));
		return "/ui/checkout4";
	}

	@RequestMapping(value = "/sanpham")
	public String getSanPhamPage() {
		return "/ui/category-right";
	}

	@RequestMapping(
			value = "/hoadon",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getHoaDonPage(HttpSession session, ModelMap modelMap) {
		CustomersEntity customersEntity = (CustomersEntity) session.getAttribute("customer");
		ShippingMethodEntity shippingMethodEntity = (ShippingMethodEntity) session
				.getAttribute("shippingMethod");
		PaymentsEntity paymentsEntity = (PaymentsEntity) session.getAttribute("payment");
		@SuppressWarnings("unchecked")
		List<GioHang> listGioHang = (List<GioHang>) session.getAttribute("gio_hang");

		double totalPrice = 0;
		for (GioHang gioHang : listGioHang) {
			totalPrice += ((gioHang.getProductsEntity().getPrices() * gioHang.getSoLuong()
					- (gioHang.getProductsEntity().getPrices() * gioHang.getSoLuong() * gioHang
							.getProductsEntity().getPromotionByPromotionsId().getPromotionValues())));
		}

		OrdersEntity ordersEntity = new OrdersEntity();
		String idOrder = Long.toString(System.currentTimeMillis());
		String orderID = "ORD" + idOrder;
		ordersEntity.setOrdersId(orderID);
		ordersEntity.setDateStartOrder(new Date(System.currentTimeMillis()));
		ordersEntity.setCustomersId(customersEntity.getCustomersId());
		ordersEntity
				.setOrderDescriptions("Đơn hàng của: " + customersEntity.getCustomersName()
						+ " ,Địa chỉ: " + customersEntity.getAddress() + " ,SĐT: "
						+ customersEntity.getPhone() + " ,Email: " + customersEntity.getEmail());
		ordersEntity.setTotalPrices((totalPrice + shippingMethodEntity.getShippingValue()));
		ordersEntity.setShippingId(shippingMethodEntity.getShippingId());
		ordersEntity.setPaymentsId(paymentsEntity.getPaymentsId());
		ordersEntity.setOrdersStatus(false);
		ordersService.add(ordersEntity);

		OrderDetailsEntity orderDetailsEntity = new OrderDetailsEntity();
		for (GioHang gioHang : listGioHang) {
			orderDetailsEntity.setOrdersId(orderID);
			orderDetailsEntity.setProductsId(gioHang.getProductsEntity().getProductsId());
			orderDetailsEntity.setAmount(gioHang.getSoLuong());
			orderDetailsEntity.setTotalPrices((gioHang.getProductsEntity().getPrices()
					* gioHang.getSoLuong()
					- (gioHang.getProductsEntity().getPrices() * gioHang.getSoLuong() * gioHang
							.getProductsEntity().getPromotionByPromotionsId().getPromotionValues())));
			orderDetailsService.add(orderDetailsEntity);
		}
		modelMap.put("listBill", ordersService.getOrders(orderID));
		return "/ui/bill";
	}

	@RequestMapping(value = "/tieptucmuahang")
	public String getTiepTucMuaHangPage(HttpSession session) {
		session.removeAttribute("payment");
		session.removeAttribute("shippingMethod");
		session.removeAttribute("customer");
		session.removeAttribute("gio_hang");
		return "redirect:/oplungdienthoai/home";
	}

	@RequestMapping(value = "/dangky")
	public String getDangKyPage() {
		return "/ui/register";
	}

	@RequestMapping(value = "/dangnhap")
	public String getDangNhapPage() {
		return "/ui/login";
	}

	@RequestMapping(value = "/doimatkhau/{userName:.+}")
	public String getDoiMatKhauPage(@PathVariable(value = "userName") String userName,
			ModelMap modelMap) {
		modelMap.put("doiMatKhauUserName", userService.getUsersName(userName.trim()));
		return "/ui/repass";
	}

	@RequestMapping(value = "/xulydoimatkhau", method = RequestMethod.POST)
	public String getXuLyDoiMatKhau(@RequestParam(value = "username") String username,
			@RequestParam(value = "matkhaumoi") String matkhaumoi, HttpSession session)
			throws NoSuchAlgorithmException {
		UsersEntity usersEntity = userService.getUsersName(username);
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		usersEntity.setPasswords(passwordEncoder.encode(matkhaumoi));
		userService.edit(usersEntity);
		return "redirect:/oplungdienthoai/home";
	}

	@RequestMapping(value = "/doimatkhau/ajax", method = RequestMethod.POST)
	public @ResponseBody String getCheckAjaxDoimatkhau(
			@RequestParam(value = "matkhaucu") String matkhaucu,
			@RequestParam(value = "username") String username) throws NoSuchAlgorithmException {
		UsersEntity usersEntity = userService.getUsersName(username);
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		if (!passwordEncoder.matches(matkhaucu, usersEntity.getPasswords().trim())) {
			return "error";
		} else {
			return "success";
		}
	}

	@RequestMapping(value = "/logout")
	public String getDangXuatPage(HttpServletRequest request) {
		SecurityContextHolder.getContext().setAuthentication(null);
		return "redirect:/oplungdienthoai/home";
	}

	@RequestMapping(value = "/register/ajax", method = RequestMethod.POST)
	public @ResponseBody String
			getAjaxRegister(@RequestParam(value = "email") String email) {
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
	public String getXacNhanDangKi(@RequestParam(value = "email") String email) {
		userService.update(email, true);
		return "redirect:/oplungdienthoai/dangnhap";
	}

	@RequestMapping(
			value = "/register",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getActionRegister(@RequestParam(value = "email") String email,
			@RequestParam(value = "name") String name,
			@RequestParam(value = "pass") String pass,
			@RequestParam(value = "phone") String phone)
			throws UnsupportedEncodingException, NoSuchAlgorithmException {
		String userID = Long.toString(System.currentTimeMillis());
		String subject = "Register Obaju";
		String text = "<h2><b>Hello," + name + "</b></h2></br>"
				+ "<p>Cảm ơn bạn đã đăng ký tài khoản shop Obaju. Vui lòng xác nhận tài khoản để kích hoạt tài khoản. Cảm ơn bạn.</p></br>"
				+ "<a href=\"http://localhost:8080/chuyendeweb/oplungdienthoai/xacnhandangki?email="
				+ email + "\"><button>Xác Nhận Đăng Kí</button></a>";
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		UsersEntity usersEntity = new UsersEntity();
		usersEntity.setUserId("USE" + userID);
		usersEntity.setUserName(email);
		usersEntity.setPasswords(passwordEncoder.encode(pass));
		usersEntity.setName(name);
		usersEntity.setPhone(phone);
		usersEntity.setRoleId(UsersEntity.ROLE_USER);
		usersEntity.setValidateEmail(false);
		usersEntity.setUsersStatus(false);
		SendMail.sendMail(email, subject, text);

		userService.add(usersEntity);
		return "/ui/registerSuccess";
	}

	@RequestMapping(value = "/quenmatkhau")
	public String getQuenMatKhauPage() {
		return "/ui/forgotpassword";
	}

	@RequestMapping(
			value = "/xulylaylaimatkhau",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String getXuLyLayLaiMatKhau(@RequestParam(value = "email") String email)
			throws NoSuchAlgorithmException {
		String passwordNew = RandomString.randomString(10);
		String subject = "Forgot Password Obaju";
		String text = "<h2><b>Hello," + email + "</b></h2></br>"
				+ "<p>Mật khẩu của bạn đã được thay đổi. Mật khẩu hiện tại của bạn là: "
				+ passwordNew
				+ " . Vui lòng đăng nhập để đổi lại mật khẩu.Cảm ơn quý khách.</p></br>"
				+ "<a href=\"http://localhost:8080/chuyendeweb/oplungdienthoai/dangnhap\"><button>Đăng nhập ngay</button></a>";
		UsersEntity usersEntity = userService.getUsersName(email);
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		usersEntity.setPasswords(passwordEncoder.encode(passwordNew));
		SendMail.sendMail(email, subject, text);

		userService.edit(usersEntity);
		return "/ui/forgotsuccess";
	}
}
