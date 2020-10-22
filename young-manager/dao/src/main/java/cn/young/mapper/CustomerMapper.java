package cn.young.mapper;

import cn.young.manager.pojo.Customer;
import cn.young.manager.pojo.Pages;

import java.util.List;

public interface CustomerMapper {

    List<Customer> findCustomerByPage(Pages page);

    List<Customer> findAllCustomers();

}
