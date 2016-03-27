package bigData;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class LoggerArray {
	
	public static void countUserNews(ArrayList<String> comment){
		HashMap<ArrayList<String>, ArrayList<String>> newsCounter = null;
		HashMap<String, HashMap<ArrayList<String>, ArrayList<String>>> AllUserNewsDdetails = new HashMap<String, HashMap<ArrayList<String>,ArrayList<String>>>();
		//Contain all user 
		ArrayList<String> userId = new ArrayList<String>();
		List<String> temp = new ArrayList<String>();
		//contain specific user newsId in array list
		ArrayList<String> addNewsId = null;
		
		//All addNewsId ArrayList in allUserAddNewsId
		ArrayList<ArrayList<String>> allUserAddNewsId = new ArrayList<ArrayList<String>>();
		
		for (int i = 0; i <= comment.size() - 1; i++) {
		if(comment.get(i).contains("userId") && comment.get(i).contains("open")){
			temp.add(comment.get(i));
			
		}}
		//get All userId in Array List
		for (int i = 0; i <= temp.size() - 1; i++) {
				if(!userId.contains(temp.get(i).substring(7,8))){
					userId.add(temp.get(i).substring(7,8));
				}
		}
		for(int i = 0; i <= userId.size() - 1; i++){
			addNewsId = new ArrayList<String>();
			for(int j=0; j<=temp.size()-1;j++){
				if(temp.get(j).substring(7,8).equals(userId.get(i))){
					//add specific user addnewId
					addNewsId.add(temp.get(j).substring(24));
				}
			}
			//add ArrayList addNewsIdwith the same index of userId 
			allUserAddNewsId.add(addNewsId);
		}
		
		AllUserNewsDdetails=LoggerArray.newsWiseCount(allUserAddNewsId,userId);
		//System.out.println(allUserAddNewsId);
		//System.out.println(newsCounter);
		//AllUserNewsDdetails.put(userId.get(i), newsCounter);
		System.out.println(AllUserNewsDdetails);	
	}
		//
	
	public static HashMap<String, HashMap<ArrayList<String>, ArrayList<String>>> newsWiseCount(ArrayList<ArrayList<String>> AllnewsId,ArrayList<String> userId){
		// all user-->all news(remove duplicate)-->counter for each news with same index in userNewsId
		HashMap<String, HashMap<ArrayList<String>, ArrayList<String>>> all = new HashMap<String, HashMap<ArrayList<String>,ArrayList<String>>>();
		// newsCounter,counterForNews this object is created for each user 
		//Contains addNewsId in ArrayList---userNewsId and in same index contain the counter for news--counterForNews. 
		HashMap<ArrayList<String>, ArrayList<String>> newsCounter = null;
		ArrayList<String> counterForNews = null;
		int counter=0;
		for(int i=0 ; i<= AllnewsId.size()-1; i++){
			newsCounter=new HashMap<ArrayList<String>, ArrayList<String>>();
			counterForNews =new ArrayList<String>();
			//contain all news for specific user in Array List
			ArrayList<String> userNewsId =AllnewsId.get(i);
			for(int j=0;j<userNewsId.size();j++){
				counter=1;
				if(userNewsId.contains(userNewsId.get(j))){
					for(int k=0;k<userNewsId.size();k++){
						if(k!=j && userNewsId.get(j).equals(userNewsId.get(k))){
							counter ++;
							//remove duplicate news 
							userNewsId.remove(k);
						}
					}
					
				}
				counterForNews.add(counter+"");
				//counterArray.add(counterForNews);
			}
			
			/*System.out.println("--------"+userNewsId);
			System.out.println("--------"+counterForNews);*/
			newsCounter.put(userNewsId,counterForNews);
			//System.out.println("----"+newsCounter);
			all.put(userId.get(i),newsCounter);
		}
			return all;
	}
	public static void main(String args[]) {
		int counterforip = 0;
		int counterforDate = 0;
		int counterforTime = 0;
		int counterforTimeZone = 0;
		int counterforLink = 0;
		int counterforLinkDetails = 0;

		ArrayList<String> ipAddress = new ArrayList<String>();
		ArrayList<String> date = new ArrayList<String>();
		ArrayList<String> time = new ArrayList<String>();
		ArrayList<String> timeZone = new ArrayList<String>();
		ArrayList<String> link = new ArrayList<String>();
		ArrayList<String> details = new ArrayList<String>();
		try {
			String logFoler = "D:\\GIT\\News\\Logs";
			File Alllog = new File(logFoler);
			File[] logFiles = Alllog.listFiles();
			for (File log : logFiles) {
				if (log.isFile()) {
					BufferedReader bufferedReader = new BufferedReader(
							new FileReader(log));
					String readLine;
					while ((readLine = bufferedReader.readLine()) != null) {
						for (String ipStrng : readLine.split(" - - ")) {
							if (counterforip % 2 == 0)
								ipAddress.add(ipStrng);
							else {
								for (String dateStrring : ipStrng.split(":", 2)) {
									if (counterforDate % 2 == 0) {
										date.add(dateStrring.substring(1));
									} else {
										for (String timeString : dateStrring
												.split(" ", 2)) {
											if (counterforTime % 2 == 0)
												time.add(timeString);
											else {
												for (String timeZoneString : timeString
														.split("] \"")) {
													if (counterforTimeZone % 2 == 0)
														timeZone.add(timeZoneString);
													else {
														for (String linkString : timeZoneString
																.split(" /", 2)) {
															if (counterforLink % 2 == 1) {
																for (String LinkDetais : linkString
																		.split(" ",
																				2)) {
																	if (counterforLinkDetails % 2 == 0)
																		link.add(LinkDetais);
																	else
																		details.add(LinkDetais);
																	counterforLinkDetails++;
																}
															}
															counterforLink++;
														}
													}
													counterforTimeZone++;
												}
											}
											counterforTime++;
										}
									}
									counterforDate++;
								}
							}
							counterforip++;
						}
					}
					bufferedReader.close();
				}
			}
		} catch (Exception e) {
		}
		/*for (int i = 0; i <= ipAddress.size() - 1; i++) {
			System.out.println("ip--" + ipAddress.get(i) + "  date--"
					+ date.get(i) + "  time--" + time.get(i) + "  Zone--"
					+ timeZone.get(i) + "  link--" + link.get(i) + "   Code--"
					+ details.get(i));
		}*/
		LoggerArray.countUserNews(details);
	}
}
