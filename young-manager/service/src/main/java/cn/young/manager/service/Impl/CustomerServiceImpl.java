package cn.young.manager.service.Impl;


import cn.young.manager.pojo.Customer;
import cn.young.manager.pojo.Pages;
import cn.young.manager.service.CustomerService;
import cn.young.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> findCustomerByPage(Pages page) {

        List<Customer> customers = customerMapper.findCustomerByPage(page);
        return customers;

    }

    @Override
    public List<Customer> findAllCustomers() {
        List<Customer> customers = customerMapper.findAllCustomers();
        return customers;
    }
}
