package com.csst.services.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csst.popular.api.SnsAPI;
import com.csst.popular.bean.SnsToken;
import com.csst.popular.bean.User;
import com.csst.services.Thread.TokenThread;

/**
 * Servlet implementation class OAuthServlet
 */
public class OAuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OAuthServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		String code = request.getParameter("code");
		String opentype = request.getParameter("opentype");
		System.out.println(opentype);
		if(!"authdeny".equals(code) && code!=null){
			SnsAPI snsapi = new SnsAPI();
			SnsToken stken = snsapi.oauth2AccessToken(TokenThread.appid, TokenThread.appsecret, code);
			String accessToken = stken.getAccess_token();
			String openId =stken.getOpenid();
			User user = snsapi.userinfo(accessToken, openId, "zh_CN");
			request.setAttribute("snsUserinfo", user);
			request.getRequestDispatcher("/wpages/whome.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("errorOAuth.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
