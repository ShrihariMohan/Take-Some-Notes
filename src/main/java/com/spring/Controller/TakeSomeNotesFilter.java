package com.spring.Controller;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TakeSomeNotesFilter implements Filter {
    

     public TakeSomeNotesFilter() {
    } 
      
    @Override
    public void init(FilterConfig filterConfig)  {
    }
    
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
    		throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession(false);
		boolean byPassFilter = req.getServletPath().contains("signup.do")
				|| req.getServletPath().contains("createUser.do") || req.getServletPath().contains("index.do")
				|| req.getServletPath().contains("loginSuccess.do");
		if (session != null && session.getAttribute("loginStatus") != null || byPassFilter) {
			chain.doFilter(request, response);
		} else {
			HttpServletResponse res = (HttpServletResponse) response;
			res.sendRedirect("index.do");
		}
	}

    @Override
    public void destroy() {
    }
    

}
