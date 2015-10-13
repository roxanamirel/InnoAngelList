package inno;

import java.io.IOException;





import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import inno.User;

@RestController
public class Service {
    
	private  AccessToken token = new AccessToken();
	
	@RequestMapping(value = "/accesscode", method = RequestMethod.GET)
	public ModelAndView redirectToAccessCode() {
		String redirectUrl = "https://angel.co/api/oauth/authorize?client_id="
				+ User.getClientid() + "&response_type=code";
		
		return new ModelAndView("redirect:" + redirectUrl);
	}

	@RequestMapping(value = "/inno", method = RequestMethod.GET)
	public void getAccessCode(@RequestParam(value = "code") String code) {
		User auth_user = new User(code);
		Gson gson = new Gson();
		String postUrl = "https://angel.co/api/oauth/token?client_id="+User.getClientid()
																		   +"&client_secret="+User.getClientsecret()
				                                                           +"&code="+auth_user.getCode()
				                                                           +"&grant_type=authorization_code";
		HttpClient httpClient = HttpClientBuilder.create().build(); 
		ResponseHandler <String> res=new BasicResponseHandler();  
		
		HttpPost postMethod=new HttpPost(postUrl);  
		try {
			String httpResponse=httpClient.execute(postMethod,res);
			token = gson.fromJson(httpResponse, AccessToken.class);
			
		} catch (ClientProtocolException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} 
		
	    
		
	}
	@RequestMapping(value = "/startupsByTagLocation/{id}", method = RequestMethod.GET)
	public void getAllStartups(@PathVariable("id") int id) {
		String url = "https://api.angel.co/1/tags/"+ id +"/startups?access_token="+token.getAccess_token();
		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler <String> res=new BasicResponseHandler();  
	    HttpGet getRequest = new HttpGet(url);
	    try {
			String getResponse = httpClient.execute(getRequest,res);
			System.out.println(getResponse);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		
	}
}
