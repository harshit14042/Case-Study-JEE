package com.training.utils;

import java.sql.SQLException;

import com.training.entity.Customer;

public interface DAO<T> {
	/**
	 * 
	 * @param Id
	 * @return
	 * @throws SQLException
	 */
	public T findById(String Id) throws SQLException;
	/**
	 * 
	 * @param t
	 * @return
	 * @throws SQLException
	 */
	public int add(T t) throws SQLException;
}
