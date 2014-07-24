package com.csst.business.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.csst.business.model.TCompany;
import com.csst.business.model.TTrUser;
import com.csst.business.service.ICompanyService;
import com.csst.business.service.TestService;
import com.csst.popular.api.SnsAPI;
import com.csst.popular.bean.SnsToken;
import com.csst.popular.bean.User;
import com.csst.services.Thread.TokenThread;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class CompanyAction extends ActionSupport{
	private ICompanyService companyService;
	private TCompany company;
	
	public String testAction(){
		return "bbb";
	}
	
	public void saveCompany(){
		company = companyService.saveCompany(company);
		try {
			ServletActionContext.getResponse().getWriter().print(true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String getCompanyData(){
		company = companyService.getCompanyData();
		return "company";
	}
	
	public String getAboutus(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String code = request.getParameter("code");
		String turnPages ="waboutus";
		if(!"authdeny".equals(code) && code!=null){
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				SnsAPI snsapi = new SnsAPI();
				SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
				String accessToken = stken.getAccess_token();
				String refreshToken = stken.getRefresh_token();
				String openId =stken.getOpenid();
				User user = snsapi.userinfo(accessToken, openId, "zh_CN");
				request.getSession().setAttribute("refreshToken", refreshToken);
				request.getSession().setAttribute("userinfo", user);
				company = companyService.getCompanyData();
			}
		}else{
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				turnPages ="error";
			}
		}
		return turnPages;
	}
	public String getHomePage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String code = request.getParameter("code");
		System.out.println(code);
		String turnPages ="homePage";
		if(!"authdeny".equals(code) && code!=null){
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				SnsAPI snsapi = new SnsAPI();
				SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
				String accessToken = stken.getAccess_token();
				String refreshToken = stken.getRefresh_token();
				String openId =stken.getOpenid();
				User user = snsapi.userinfo(accessToken, openId, "zh_CN");
				request.getSession().setAttribute("refreshToken", refreshToken);
				request.getSession().setAttribute("userinfo", user);
				company = companyService.getCompanyData();
			}
		}else{
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				turnPages ="error";
			}
		}
		return turnPages;
	}
	public String getOrderPage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String code = request.getParameter("code");
		System.out.println(code);
		String turnPages ="orderPage";
		if(!"authdeny".equals(code) && code!=null){
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				SnsAPI snsapi = new SnsAPI();
				SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
				String accessToken = stken.getAccess_token();
				String refreshToken = stken.getRefresh_token();
				String openId =stken.getOpenid();
				User user = snsapi.userinfo(accessToken, openId, "zh_CN");
				request.getSession().setAttribute("refreshToken", refreshToken);
				request.getSession().setAttribute("userinfo", user);
				company = companyService.getCompanyData();
			}
		}else{
			if(request.getSession().getAttribute("userinfo")!=null){
				company = companyService.getCompanyData();
			}else{
				turnPages ="error";
			}
		}
		return turnPages;
	}
	public String getMessagePage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String code = request.getParameter("code");
		System.out.println(code);
		String turnPages ="messagePage";
		if(!"authdeny".equals(code) && code!=null){
			if(request.getSession().getAttribute("userinfo")!=null){
				
			}else{
				SnsAPI snsapi = new SnsAPI();
				SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
				String accessToken = stken.getAccess_token();
				String refreshToken = stken.getRefresh_token();
				String openId =stken.getOpenid();
				User user = snsapi.userinfo(accessToken, openId, "zh_CN");
				request.getSession().setAttribute("refreshToken", refreshToken);
				request.getSession().setAttribute("userinfo", user);
			}
		}else{
			if(request.getSession().getAttribute("userinfo")!=null){
			
			}else{
				turnPages ="error";
			}
		}
		return turnPages;
	}
	public String getOrderListPage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String code = request.getParameter("code");
		System.out.println(code);
		String turnPages ="orderlistPage";
		if(!"authdeny".equals(code) && code!=null){
			if(request.getSession().getAttribute("userinfo")!=null){
				
			}else{
				SnsAPI snsapi = new SnsAPI();
				SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
				String accessToken = stken.getAccess_token();
				String refreshToken = stken.getRefresh_token();
				String openId =stken.getOpenid();
				User user = snsapi.userinfo(accessToken, openId, "zh_CN");
				request.getSession().setAttribute("refreshToken", refreshToken);
				request.getSession().setAttribute("userinfo", user);
			}
		}else{
			if(request.getSession().getAttribute("userinfo")!=null){
				
			}else{
				turnPages ="error";
			}
		}
		return turnPages;
	}
	

	public ICompanyService getCompanyService() {
		return companyService;
	}

	public void setCompanyService(ICompanyService companyService) {
		this.companyService = companyService;
	}

	public TCompany getCompany() {
		return company;
	}

	public void setCompany(TCompany company) {
		this.company = company;
	}
	
}
