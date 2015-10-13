package inno;

public class User {

	private static final String clientId = "1ccd2a0917f10a66b041a267ebfa5c73474b35c4ed869b5b";
	private static final  String clientSecret = "135a3e47366b313bef13fe9811dcfd0c6076e9926440c543";
	private String code;
	
	public User(String code){
		this.code = code;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public static String getClientid() {
		return clientId;
	}
	public static String getClientsecret() {
		return clientSecret;
	}
	
		
	
	
	
	

}