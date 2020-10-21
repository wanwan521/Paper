package cn.young.manager.web.controller;

import cn.young.manager.pojo.Course;
import cn.young.manager.pojo.HotCourse;
import cn.young.manager.service.CourseService;
import cn.young.manager.service.HotCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HotCourseController {
    @Autowired
    private CourseService service;
    @Autowired
    private HotCourseService hotCourseService;

    @RequestMapping(value = {"/toIndexPage", "/"})
    public String toIndexPage(HttpServletRequest request) {
        List<HotCourse> findHotCourse = hotCourseService.findAllHotCourse();
        List<Course> recommendCourse = service.getRecommendCourse();

        request.getSession().setAttribute("HotCourse",findHotCourse );
        request.getSession().setAttribute("RecommendCourse",recommendCourse );
        return "index";
    }


//    @RequestMapping("/{page}")
//    public String getPage(@PathVariable String page, HttpServletRequest request){
//        List<HotCourse> findHotCourse = hotCourseService.findAllHotCourse();
//        List<Course> recommendCourse = service.getRecommendCourse();
//
//        request.getSession().setAttribute("HotCourse",findHotCourse );
//        request.getSession().setAttribute("RecommendCourse",recommendCourse );
//        return page;
//    }
}
