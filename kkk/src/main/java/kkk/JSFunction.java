package kkk;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class JSFunction {
//메시지 알림창을 띄운후 해당 URL로 이동 
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {// 예외처리 구문 (예외 발생하지 않을 경우 try문안에 있는 내용 실행)
			String script = "<script>" + "alert('" + msg + "');"
			// msg에 저장된 메시지 내용을 알림창으로 띄운다
					+ "location.href='" + url + "';"
					// 이동할 페이지 url로 이동한다
					+ "</script>";
			out.println(script);
			// 자바스크립트 코드를 출력
		} catch (Exception e) {// 예외가 발생했을 때 실행되는 코드
		}
	}

	public static void alertBack(String msg, JspWriter out) {
		try {// 예외처리 구문 (예외 발생하지 않을 경우 try문안에 있는 내용 실행)
			String script = "<script>" + "alert('" + msg + "');"
			// msg에 저장된 메시지 내용을 알림창으로 띄운다
					+ "history.back();"
					// 이전 페이지로 이동
					+ "</script>";
			out.println(script);
			// 자바스크립트 코드를 출력
		} catch (Exception e) {// 예외가 발생했을 때 실행되는 코드
		}
	}

	public static void alertLocation(HttpServletResponse resp, String msg, String url) {
		// 메소드 이름은 동일하나 매개변수의 자료형 또는 갯수의 차이가 있는 것을 메소드 오버로딩이라 한다
		try {// 예외처리 구문 (예외 발생하지 않을 경우 try문안에 있는 내용 실행)
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = "<script>" + "alert('" + msg + "');"
			// msg에 저장된 메시지 내용을 알림창으로 띄운다
					+ "location.href'" + url + "';"
					// 이동할 페이지 url로 이동한다
					+ "</script>";
			writer.println(script);
			// 자바스크립트 코드를 출력
		} catch (Exception e) {// 예외가 발생했을 때 실행되는 코드
		}
	}

	public static void alertBack(HttpServletResponse resp, String msg) {
		try {// 예외처리 구문 (예외 발생하지 않을 경우 try문안에 있는 내용 실행)
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = "<script>" + "alert('" + msg + "');"
			// msg에 저장된 메시지 내용을 알림창으로 띄운다
					+ "history.back();"
					// 이전 페이지로 이동
					+ "</script>";
			writer.println(script);
			// 자바스크립트 코드를 출력
		} catch (Exception e) {// 예외가 발생했을 때 실행되는 코드
		}
	}
}