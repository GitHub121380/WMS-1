package com.ken.wms.controller.commons;

import com.ken.wms.domain.Supplier;
import com.ken.wms.service.Interface.CustomerManageService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import com.ken.wms.domain.Customer;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 客户信息管理请求 Handler
 * 
 * @author Ken
 *
 */
@RequestMapping(value = "/**/customerManage")
@Controller
public class CustomerManageHandler {

	@Autowired
	private CustomerManageService customerManageService;

	private static final String SEARCH_BY_ID = "searchByID";
	private static final String SEARCH_BY_NAME = "searchByName";
	private static final String SEARCH_ALL = "searchAll";
	
	/**
	 * 通用的结果查询方法
	 * @param searchType 查询方式
	 * @param keyWord 查询关键字
	 * @param offset 分页偏移值
	 * @param limit 分页大小
	 * @return 返回指定条件查询的结果
	 */
	private Map<String, Object> query(String searchType, String keyWord, int offset, int limit){
		Map<String, Object> queryResult = null;
		if(searchType.equals(SEARCH_BY_ID)){
			if(StringUtils.isNumeric(keyWord))
				queryResult = customerManageService.selectById(Integer.valueOf(keyWord));
		}else if(searchType.equals(SEARCH_BY_NAME)){
			queryResult = customerManageService.selectByName(offset, limit, keyWord);
		}else if(searchType.equals(SEARCH_ALL)){
			queryResult = customerManageService.selectAll(offset, limit);
		}else{
			// do other thing
		}
		return queryResult;
	}
	
	/**
	 * 搜索客户信息
	 * 
	 * @param searchType
	 *            搜索类型
	 * @param offset
	 *            如有多条记录时分页的偏移值
	 * @param limit
	 *            如有多条记录时分页的大小
	 * @param keyWord
	 *            搜索的关键字
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "getCustomerList", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> getCustomerList(@RequestParam("searchType") String searchType,
			@RequestParam("offset") int offset, @RequestParam("limit") int limit,
			@RequestParam("keyWord") String keyWord) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();
		List<Supplier> rows = null;
		long total = 0;

//		// 根据查询类型进行查询
//		Map<String, Object> queryResult = null;
//		if (searchType.equals("searchByID")) {
//			if (keyWord != null && !keyWord.equals("") && StringUtils.isNumeric(keyWord)) {
//				Integer id = Integer.valueOf(keyWord);
//				queryResult = customerManageService.selectById(id);
//			}
//		} else if (searchType.equals("searchByName")) {
//			queryResult = customerManageService.selectByName(offset, limit, keyWord);
//		} else if (searchType.equals("searchAll")) {
//			queryResult = customerManageService.selectAll(offset, limit);
//		} else {
//			// do other thing
//		}
		Map<String, Object> queryResult = query(searchType, keyWord, offset, limit);

		if (queryResult != null) {
			rows = (List<Supplier>) queryResult.get("data");
			total = (long) queryResult.get("total");
		}

		resultSet.put("rows", rows);
		resultSet.put("total", total);
		return resultSet;
	}

	/**
	 * 添加一条客户信息
	 * 
	 * @param customer
	 *            客户信息
	 * @return 返回一个map，其中：key 为 result表示操作的结果，包括：success 与 error
	 */
	@RequestMapping(value = "addCustomer", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> addCustomer(@RequestBody Customer customer) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();

		// 添加记录
		String result = customerManageService.addCustomer(customer) ? com.ken.wms.controller.Enum.ResponseStatus.SUCCESS.toString()
				: com.ken.wms.controller.Enum.ResponseStatus.ERROR.toString();

		resultSet.put("result", result);
		return resultSet;
	}

	/**
	 * 查询指定 customer ID 客户的信息
	 * 
	 * @param customerID
	 *            客户ID
	 * @return 返回一个map，其中：key 为 result 的值为操作的结果，包括：success 与 error；key 为 data
	 *         的值为客户信息
	 */
	@RequestMapping(value = "getCustomerInfo", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> getCustomerInfo(@RequestParam("customerID") int customerID) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();
		String result = com.ken.wms.controller.Enum.ResponseStatus.ERROR.toString();

		// 获取客户信息
		Customer customer = null;
		Map<String, Object> queryResult = customerManageService.selectById(customerID);
		if (queryResult != null) {
			customer = (Customer) queryResult.get("data");
			if (customer != null) {
				result = com.ken.wms.controller.Enum.ResponseStatus.SUCCESS.toString();
			}
		}

		resultSet.put("result", result);
		resultSet.put("data", customer);
		return resultSet;
	}

	/**
	 * 更新客户信息
	 * 
	 * @param customer
	 *            客户信息
	 * @return 返回一个map，其中：key 为 result表示操作的结果，包括：success 与 error
	 */
	@RequestMapping(value = "updateCustomer", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> updateCustomer(@RequestBody Customer customer) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();

		// 更新
		String result = customerManageService.updateCustomer(customer) ? com.ken.wms.controller.Enum.ResponseStatus.SUCCESS.toString()
				: com.ken.wms.controller.Enum.ResponseStatus.ERROR.toString();

		resultSet.put("result", result);
		return resultSet;
	}

	/**
	 * 删除客户记录
	 * 
	 * @param customerID
	 *            客户ID
	 * @return 返回一个map，其中：key 为 result表示操作的结果，包括：success 与 error
	 */
	@RequestMapping(value = "deleteCustomer", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> deleteCustomer(@RequestParam("customerID") int customerID) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();

		// 刪除
		String result = customerManageService.deleteCustomer(customerID) ? com.ken.wms.controller.Enum.ResponseStatus.SUCCESS.toString()
				: com.ken.wms.controller.Enum.ResponseStatus.ERROR.toString();

		resultSet.put("result", result);
		return resultSet;
	}

	/**
	 * 导入客户信息
	 * 
	 * @param file
	 *            保存有客户信息的文件
	 * @return 返回一个map，其中：key 为 result表示操作的结果，包括：success 与
	 *         error；key为total表示导入的总条数；key为available表示有效的条数
	 */
	@RequestMapping(value = "importCustomer", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> importCustomer(@RequestParam("file") MultipartFile file) {
		// 初始化结果集
		Map<String, Object> resultSet = new HashMap<>();
		String result = com.ken.wms.controller.Enum.ResponseStatus.SUCCESS.toString();

		// 读取文件内容
		int total = 0;
		int available = 0;
		if (file == null)
			result = com.ken.wms.controller.Enum.ResponseStatus.ERROR.toString();
		Map<String, Object> importInfo = customerManageService.importCustomer(file);
		if (importInfo != null) {
			total = (int) importInfo.get("total");
			available = (int) importInfo.get("available");
		}

		resultSet.put("result", result);
		resultSet.put("total", total);
		resultSet.put("available", available);
		return resultSet;
	}

	/**
	 * 导出客户信息
	 * @param searchType 查找类型
	 * @param keyWord 查找关键字
	 * @param response
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "exportCustomer", method = RequestMethod.GET)
	public void exportCustomer(@RequestParam("searchType") String searchType, @RequestParam("keyWord") String keyWord,
			HttpServletResponse response) {

		String fileName = "customerInfo.xlsx";
//
//		// 根据查询类型进行查询
//		List<Customer> customers = null;
//		Map<String, Object> queryResult = null;
//		if (searchType.equals("searchByID")) {
//			if (keyWord != null && !keyWord.equals("")) {
//				Integer id = Integer.valueOf(keyWord);
//				queryResult = customerManageService.selectById(id);
//			}
//		} else if (searchType.equals("searchByName")) {
//			queryResult = customerManageService.selectByName(keyWord);
//		} else if (searchType.equals("searchAll")) {
//			queryResult = customerManageService.selectAll();
//		} else {
//			// do other thing
//			customers = new ArrayList<>();
//		}
		List<Customer> customers = null;
		Map<String, Object> queryResult = query(searchType, keyWord, -1, -1);

		if (queryResult != null) {
			customers = (List<Customer>) queryResult.get("data");
		}

		// 获取生成的文件
		File file = customerManageService.exportCustomer(customers);

		// 写出文件
		if (file != null) {
			// 设置响应头
			response.addHeader("Content-Disposition", "attachment;filename=" + fileName);
			try {
				FileInputStream inputStream = new FileInputStream(file);
				OutputStream outputStream = response.getOutputStream();
				byte[] buffer = new byte[8192];

				int len;
				while ((len = inputStream.read(buffer, 0, buffer.length)) > 0) {
					outputStream.write(buffer, 0, len);
					outputStream.flush();
				}

				inputStream.close();
				outputStream.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
			}
		}
	}
}