package inno;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import inno.User;
import inno.models.Location;
import inno.models.Startup;
import inno.models.Startups;
import org.apache.log4j.Logger;

@RestController
public class Service {

	private AccessToken token = new AccessToken();
	private Gson gson = new Gson();
	private static final int ERROR_CODE = -1;
	static Logger log = Logger.getLogger(Service.class.getName());

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
		String postUrl = "https://angel.co/api/oauth/token?client_id="
				+ User.getClientid() + "&client_secret="
				+ User.getClientsecret() + "&code=" + auth_user.getCode()
				+ "&grant_type=authorization_code";
		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler<String> res = new BasicResponseHandler();

		HttpPost postMethod = new HttpPost(postUrl);
		try {
			String httpResponse = httpClient.execute(postMethod, res);
			token = gson.fromJson(httpResponse, AccessToken.class);

		} catch (ClientProtocolException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/startupsByTagLocation/{id}", method = RequestMethod.GET)
	public void getAllStartups(@PathVariable("id") int id) {

		String url = "https://api.angel.co/1/tags/" + id
				+ "/startups?access_token=" + token.getAccess_token();

		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler<String> res = new BasicResponseHandler();
		HttpGet getRequest = new HttpGet(url);
		try {
			String getResponse = httpClient.execute(getRequest, res);
			System.out.println(getResponse);
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	@RequestMapping(value = "/getLocationTagId/{name}", method = RequestMethod.GET)
	public int getLocationTagId(@PathVariable("name") String name) {

		String url = "https://api.angel.co/1/search/" + "?query=" + name
				+ "&type=LocationTag" + "&access_token="
				+ token.getAccess_token();
		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler<String> res = new BasicResponseHandler();
		HttpGet getRequest = new HttpGet(url);
		try {
			String getResponse = httpClient.execute(getRequest, res);
			JsonParser parser = new JsonParser();
			JsonArray jArray = parser.parse(getResponse).getAsJsonArray();

			List<Location> locations = new ArrayList<Location>();

			for (JsonElement obj : jArray) {
				Location loc = gson.fromJson(obj, Location.class);
				locations.add(loc);
			}
			// TODO deal with this
			if (locations.size() > 1) {
				log.warn("There are more locations with the same name!");
			}
			if (!locations.isEmpty()) {
				return locations.get(0).getId();
			}
			else{
				log.error("No locations with that name has been found");
			}
		} catch (IOException e) {

			e.printStackTrace();
		}
		return ERROR_CODE;
	}

	@RequestMapping(value = "getById/{id}", method = RequestMethod.GET)
	public void getById(@PathVariable("id") int id) {

		String url = "https://api.angel.co/1/startups/" + id + "?access_token="
				+ token.getAccess_token();
		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler<String> res = new BasicResponseHandler();
		HttpGet getRequest = new HttpGet(url);
		try {
			String getResponse = httpClient.execute(getRequest, res);
			System.out.println(getResponse);
		} catch (IOException e) {

			e.printStackTrace();
		}
	}

	@RequestMapping(value = "getStartupsByLocation/{locationName}", method = RequestMethod.GET)
	public void getStartupsByLocation(
			@PathVariable("locationName") String locationName) {
		int locationId = getLocationTagId(locationName);
		Startups total_startups = new Startups();

		for (int pageNo = 1; pageNo < 10; pageNo++) {
			String url = "https://api.angel.co/1/tags/" + locationId
					+ "/startups?access_token=" + token.getAccess_token()
					+ "&?order=popularity&page=" + pageNo;
			HttpClient httpClient = HttpClientBuilder.create().build();
			ResponseHandler<String> res = new BasicResponseHandler();
			HttpGet getRequest = new HttpGet(url);
			Startups startups_perpage = new Startups();
			try {
				String getResponse = httpClient.execute(getRequest, res);
				startups_perpage = gson.fromJson(getResponse, Startups.class);

			} catch (IOException e) {
				e.printStackTrace();
			}
			total_startups.getStartups().addAll(startups_perpage.getStartups());
		}
		if (total_startups.getStartups().isEmpty()){
			log.warn("No startup with that name has been found");
		}
		System.out.println("SIZE:" + total_startups.getStartups().size());
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("total_startups_by_location", total_startups);

		// TODO add name of view.
		//mav.setViewName("name-of-view");
		//return mav;
	}
	
	@RequestMapping(value = "getStartupByName/{name}", method = RequestMethod.GET)
	public void getStartupByName(@PathVariable("name") String name) {

		String url = "https://api.angel.co/1/search" + "?query=" + name + "&access_token="
				+ token.getAccess_token();
		
		HttpClient httpClient = HttpClientBuilder.create().build();
		ResponseHandler<String> res = new BasicResponseHandler();
		HttpGet getRequest = new HttpGet(url);
		List<Startup> startups = new ArrayList<Startup>();
		
		
		try {
			String getResponse = httpClient.execute(getRequest, res);
			JsonParser parser = new JsonParser();
			JsonArray jArray = parser.parse(getResponse).getAsJsonArray();
			for (JsonElement obj : jArray) {
				Startup startup = gson.fromJson(obj, Startup.class);
				startups.add(startup);
			}
			// TODO deal with this
			if (startups.size() > 1) {
				log.warn("There are more startups with the same name!");
			}
			if (startups.isEmpty()){
				log.warn("No startup with that name has been found");
			}
			else{
				System.out.println("STARTUP FOUND: " + startups.get(0).getName());
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("startup_by_name", startups);

		// TODO add name of view.
		//mav.setViewName("name-of-view2");
		//return mav;

	}
	
	

}
