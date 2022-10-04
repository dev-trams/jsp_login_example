package kkk;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Manager {

	public static void makeCookie(HttpServletResponse response,
			String cName, String cValue, int cTime) {
		//쿠키 생성 메소드
		Cookie cookie = new Cookie(cName,cValue);
		//쿠키 생성(쿠키이름과 쿠기값을 매개변수로 넣어줘서 생성)
		cookie.setPath("/");
		//쿠키의 경로를 상대위치로 같은 위치로 설정 
		cookie.setMaxAge(cTime); //유지기간을 설정 
		response.addCookie(cookie); //응답객체에 쿠키를 추가 
	}
	public static String readCookie(HttpServletRequest request, String cName) {
		String cookieValue="";
		Cookie [] cookies = request.getCookies();
		if (cookies !=null) {
			for (Cookie c : cookies) {
				String cookieName = c.getName();
				if (cookieName.equals(cName)) {
				//불러온 쿠키이름이 매개변수로 넣어준 이름과 일치할 경우에만 쿠키값을 갱신 
					 cookieValue = c.getValue();
				}
	
			}
			
		}
		return cookieValue;
	}
	
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response,cName,"",0);
		//위에서 만든 makeCookie 메소드를 호출, 쿠키값과 유지시간을 초기화 
	}
	
}
	