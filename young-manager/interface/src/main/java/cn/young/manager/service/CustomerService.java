package cn.young.manager.service;

import cn.young.manager.pojo.Customer;
import cn.young.manager.pojo.Pages;

import java.util.List;

public interface CustomerService {

    List<Customer> findCustomerByPage(Pages page);

    List<Customer> findAllCustomers();

}
