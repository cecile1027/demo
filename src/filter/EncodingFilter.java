package filter;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter(
		urlPatterns = "/*"	
		)
public class EncodingFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("EncodingFilter init.....");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		req.setCharacterEncoding("UTF-8");//���post����
		response.setContentType("text/html;charset=utf-8");
		System.out.println("form����תΪ����UTF-8 ����");
		
		if(req.getMethod().equalsIgnoreCase("get")) {//���GET����
			req = new GetEncodingRequestWrapper(req);
			System.out.println("get���������תΪ����UTF-8 ����");
		}
	
		chain.doFilter(req, response);
	}

	@Override
	public void destroy() {
		System.out.println("EncodingFilter destroy.....");
		System.out.println();
	}

}
