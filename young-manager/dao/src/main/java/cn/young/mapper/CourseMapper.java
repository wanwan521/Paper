package cn.young.mapper;

import cn.young.manager.pojo.Course;
import cn.young.manager.pojo.CourseExample;
import cn.young.manager.pojo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author  young
 */
public interface CourseMapper {
//    long countByExample(CourseExample example);
//
//    int deleteByExample(CourseExample example);
//
//    int deleteByPrimaryKey(Long cid);

    int insert(Course record);

//    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Long cid);

    List<Course> selectAllCourseBySchoolName(@Param("schName") String schName);
//
//    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);
//
//    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);
//
//    int updateByPrimaryKeySelective(Course record);
//
//    int updateByPrimaryKey(Course record);


    List<Course> findCourseByLike(String keywords);

    List<Course> findCourseBySid(Page page);

    Course selectByPrimaryKey(long cid);

    int addSelectNum(@Param("cid") int cid);

    int subSelectNum(@Param("cid") int cid);

    Course getCourseByCid(@Param("cid") int cid);

    List<Course> getRecommendCourse();

    List<Course> findAllHotCourse();

    Course selectCourseName(Course course);

}