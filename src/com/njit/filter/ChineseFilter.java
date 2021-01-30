package com.njit.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class ChineseFilter
 */
@WebFilter("/ChineseFilter")
public class ChineseFilter implements Filter {

    protected String encoding=null;
    protected FilterConfig config;

	/**
     * Default constructor. 
     */
    public ChineseFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
    @Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config=fConfig;
		this.encoding=fConfig.getInitParameter("Encoding");
	}
	

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		if (request.getCharacterEncoding()==null) {
			String encode=getEncoding();
			if (encode!=null) {
				request.setCharacterEncoding(encode);
				response.setCharacterEncoding(encode);
			}
			
		}

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	private String getEncoding() {
		// TODO Auto-generated method stub
		return encoding;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

}
