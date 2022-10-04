package kyungbok;

public class Student {
	int stno;
	String dept;
	String name;
	String addr;
	
	public int getStno() {
		return stno;
	}
	public void setStno(int stno) {
		this.stno = stno;
	}
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public Student(int stno, String dept, String name, String addr) {
		super();
		this.stno = stno;
		this.dept = dept;
		this.name = name;
		this.addr = addr;
		
	}
	
}
