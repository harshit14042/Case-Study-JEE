package com.training.utils;
import java.sql.SQLException;
import java.util.List;

import com.training.entity.*;
public interface Service_LogDAO extends GDAO<Service_Log> {
	/**
	 * 
	 * @return
	 * @throws SQLException
	 */
	public long getNewId() throws SQLException;
	/**
	 * 
	 * @param service_name
	 * @return
	 * @throws SQLException
	 */
	public int getAmount(String service_name) throws SQLException;
	/**
	 * 
	 * @param Id
	 * @return
	 * @throws SQLException
	 */
	public List<Service_Log> findByCustId(String Id) throws SQLException;
}
