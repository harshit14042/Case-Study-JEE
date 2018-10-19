package com.training.utils;

import java.sql.SQLException;

import com.training.entity.Insurance;

public interface DAO<T> {

	/**
	 * 
	 * @param carNo
	 * @return
	 * @throws SQLException
	 */
	public int getbyId(String carNo) throws SQLException;
	
}
