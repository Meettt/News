package bigData;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.MDC;

public class NewsLogger {
	public static Logger newsLogger =Logger.getLogger(NewsLogger.class.getClass());
	/*public static void info(String ip,String url,String query,int response,String time){
	 	MDC.put("ip",ip);
	 	if(query==null){
	 		MDC.put("url",url);
	 	}else{
		MDC.put("url",url+"?"+query);
	 	}
		newsLogger.info(response+" "+time);
 } */
	public static void INFO(HttpServletRequest request ,String text){
		MDC.put("ip",request.getRemoteAddr());
		if(request.getQueryString()==null)
			MDC.put("url",request.getRequestURI());
		else 
			MDC.put("url",request.getRequestURI()+"?"+request.getQueryString());
		newsLogger.info(text);
	} 
}
