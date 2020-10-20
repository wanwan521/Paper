package cn.young.mapper;

import cn.young.manager.pojo.Evaluation;
import cn.young.manager.pojo.EvaluationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author  young
 */
public interface EvaluationMapper {
    long countByExample(EvaluationExample example);

    int deleteByExample(EvaluationExample example);

    int deleteByPrimaryKey(Long eid);

    int insert(Evaluation record);

    int insertSelective(Evaluation record);

    List<Evaluation> selectByExample(EvaluationExample example);

    Evaluation selectByPrimaryKey(Long eid);

    int updateByExampleSelective(@Param("record") Evaluation record, @Param("example") EvaluationExample example);

    int updateByExample(@Param("record") Evaluation record, @Param("example") EvaluationExample example);

    int updateByPrimaryKeySelective(Evaluation record);

    int updateByPrimaryKey(Evaluation record);

    /**
     * 根据课程编号获取课程
     * @param course_code
     * @return
     */
    Evaluation getEvaluationByCourse_code(String course_code);

    /**
     * 根据课程编号更新课程
     * @param evaluation
     * @return
     */
    int updateByCourse_code(Evaluation evaluation);

}