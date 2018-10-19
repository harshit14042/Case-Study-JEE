package com.training.utils;

import java.sql.SQLException;

import com.training.entity.Customer;

public interface CustomerDAO extends GDAO<Customer> {

	/**
	 * 
	 * @param Id
	 * @param property
	 * @param newVal
	 * @return
	 * @throws SQLException
	 */
	public int updatebyId(String Id, String property, String newVal) throws SQLException;
	
	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	public long getNewId() throws SQLException;
	
}
