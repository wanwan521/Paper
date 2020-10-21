package cn.young.manager.web.controller;

import cn.young.manager.pojo.Customer;
import cn.young.manager.pojo.Pages;
import cn.young.manager.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    CustomerService customerService;

    @RequestMapping("customerdetail")
    public String findCustomer(HttpServletRequest request, int page, int limit){
        //定义page对象，设置limit、page和schname
        Pages p = new Pages();
        p.setLimit(limit);
        p.setPage((page - 1) * limit);

        List<Customer> list = customerService.findCustomerByPage(p);

        request.setAttribute("customers",list);
        request.setAttribute("page",page);

        return "customerdetail";
    }





}
