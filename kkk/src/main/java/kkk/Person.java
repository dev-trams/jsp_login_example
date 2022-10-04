package kkk;

public class Person {
	//멤버변수는 접근제한자 private를 사용하여 외부클래스로 부터 접근을 제한하는것이 일밙거인 상황이다.
	private String name;
	private int age;
	//메소드는 일반적으ㅗㄹ public을 사용하여 외부접근이 가능하도록 한다.
	//메소드 : public 반환값의 자료형 (return문이 없으면 void를 사용) 메소드이름
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		//매개변수 name에 입력값을 멤버변수 name에 저장한다.
	}
	//getAge()와 setAge()를 작성하여보십시오
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
//		매개변수 age에 입력값을 멤버변수 age에 저장
	}
	
	public Person(String name, int age) { //생성자
		super();
		this.name = name;
		this.age = age;
	}
	
}
