package com.training.utils;

import java.sql.SQLException;

public interface DAO<T> {
	/**
	 * 
	 * @param userId
	 * @param passWord
	 * @return
	 * @throws SQLException
	 */
	public boolean validate(String userId, String passWord) throws SQLException;
	
	
	/**
	 * 
	 * @param userId
	 * @param passWord
	 * @return
	 * @throws SQLException
	 */
	public int register(String userId,String passWord) throws SQLException;
	
}
