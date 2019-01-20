package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.CategoryDao;
import com.project.dao.ProductDao;
import com.project.dao.SupplierDao;
import com.project.model.Product;
import com.project.model.Supplier;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private SupplierDao supplierdao;
	
	@Autowired
	private CategoryDao categorydao;
	
	@Autowired
	private ProductDao productdao;
	
	@RequestMapping(value="/adminPage")
	public ModelAndView adminPage()
	{
		ModelAndView mv=new ModelAndView("adminPage");
		return mv;
	}

	
	@ModelAttribute
	public void addAttributes(Model model)
	{
		model.addAttribute("plist", productdao.productList());
		model.addAttribute("slist", supplierdao.supplierList());
		model.addAttribute("clist",categorydao.categoryList());
	}
	
	@RequestMapping(value="/saveSupplier",method = RequestMethod.POST)
	public ModelAndView addSupplier(HttpServletRequest request, HttpServletResponse response)
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(request.getParameter("sid"));
		supplier.setSupplierName(request.getParameter("sname"));
		supplierdao.addSupplier(supplier);
		return new ModelAndView("redirect:adminPage");		
	}
	
	@RequestMapping(value= "/saveProduct",method = RequestMethod.POST)
	public String addProduct(HttpServletRequest request, @RequestParam("file")MultipartFile file)
	{
		Product product = new Product();
		product.setPname(request.getParameter("prodname"));
		product.setPrice(Float.parseFloat(request.getParameter("prodprice")));
		product.setCategory(categorydao.get(request.getParameter("prodCategory")));
		product.setSupplier(supplierdao.get(request.getParameter("prodSupplier")));
		product.setStock(Integer.parseInt(request.getParameter("prodstock")));
		product.setDescription(request.getParameter("proddesc"));	
		String filePath = request.getSession().getServletContext().getRealPath("/");
		//System.out.println("==========="+filePath);
		String fileName = file.getOriginalFilename();
		product.setImgName(fileName);
		productdao.insertProduct(product);
		try
		{
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(filePath+"/resources/"+fileName));
			os.write(imagebyte);
			os.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
        return "redirect:adminPage"; 	
	}
	@RequestMapping(value= "/view")
	public ModelAndView view()
	{
		ModelAndView mv = new ModelAndView("view");
        return mv; 		
	}
}
