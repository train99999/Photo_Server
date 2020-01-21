package com.quan.mapper;

import com.quan.pojo.Feel;
import com.quan.pojo.FeelExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FeelMapper {
    long countByExample(FeelExample example);

    int deleteByExample(FeelExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Feel record);

    int insertSelective(Feel record);

    List<Feel> selectByExampleWithBLOBs(FeelExample example);

    List<Feel> selectByExample(FeelExample example);

    Feel selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Feel record, @Param("example") FeelExample example);

    int updateByExampleWithBLOBs(@Param("record") Feel record, @Param("example") FeelExample example);

    int updateByExample(@Param("record") Feel record, @Param("example") FeelExample example);

    int updateByPrimaryKeySelective(Feel record);

    int updateByPrimaryKeyWithBLOBs(Feel record);

    int updateByPrimaryKey(Feel record);
}