package bigData;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;

public class BulidArray {
	public static void main(String args[]) {
		int counterforip=0;
		int counterforDate=0;
		int counterforTime=0;
		int counterforTimeZone=0;
		int counterforLink=0;
		int counterforLinkDetails=0;
		int counterforStatusCode=0;	
		int counterforResponseTime=0;
		ArrayList<String> ipAddress= new ArrayList<String>();
		ArrayList<String> date= new ArrayList<String>();
		ArrayList<String> time= new ArrayList<String>();
		ArrayList<String> timeZone= new ArrayList<String>();
		ArrayList<String> link= new ArrayList<String>();
		ArrayList<String> StatusCode= new ArrayList<String>();
		ArrayList<String> ResponseTime= new ArrayList<String>();
		try{
		String logFoler="D:\\Advance JAVA\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\logs\\";
		File Alllog = new File(logFoler);
		File[] logFiles = Alllog.listFiles();
		for(File log:logFiles){
			if(log.isFile()){
		BufferedReader bufferedReader = new BufferedReader(new FileReader(log));
		String readLine ;
		while ((readLine = bufferedReader.readLine()) !=null) {
						if (!readLine.contains("demo")
								&& !readLine.contains("Admin")
								&& !readLine.contains("doc")
								&& !readLine.contains("css")
								&& !readLine.contains("js")
								&& !readLine.contains("img")
								&& !readLine.contains("font")) {

							//String[] ipAddress = new String[10];
				
				for (String ipStrng : readLine.split(" - - "))  
			      {  
			         if(counterforip%2==0)ipAddress.add(ipStrng);
			         else{
			        	 for(String dateStrring :ipStrng.split(":",2)){
			        		 if(counterforDate%2==0){date.add(dateStrring.substring(1));}
			        		 else{
			        			 for(String timeString: dateStrring.split(" ",2)){
			        				 if(counterforTime%2==0)time.add(timeString);
			        				 else{
			        					 for(String timeZoneString : timeString.split("] \"")){
			        					 	if(counterforTimeZone%2==0)timeZone.add(timeZoneString);
			        					 	else{
			        					 		for(String linkString :timeZoneString.split(" /",2)){
			        					 			if(counterforLink%2==1){
			        					 				for(String LinkDetais:linkString.split(" ",2)){
			        					 					if(counterforLinkDetails%2==0)link.add(LinkDetais);
			        					 					else{
			        					 						for(String statusANDresponse : LinkDetais.split("\" ")){
			        					 							if(counterforStatusCode%2==1){
			        					 								for(String statusCode: statusANDresponse.split(" ",2)){
			        					 									if(counterforResponseTime%2==0){
			        					 										StatusCode.add(statusCode);
			        					 									}else{
			        					 										ResponseTime.add(statusCode);
			        					 									}
			        					 									counterforResponseTime++;
			        					 								}
			        					 							}
			        					 							counterforStatusCode++;
			        					 						}
			        					 					}
			        					 					counterforLinkDetails++;}
			        					 			}
			        					 			counterforLink++;
			        					 		}	
			        					 	}
			        					 	counterforTimeZone++;}
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
		}
		bufferedReader.close();
			}
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		for(int i=0;i<=ipAddress.size()-1;i++){
	System.out.println("ip--"+ipAddress.get(i)+"  date--"+date.get(i)+"  time--"+time.get(i)+"  Zone--"+timeZone.get(i)+"  link--"+link.get(i)+"   Code--"+StatusCode.get(i)+"  REsponse--"+ResponseTime.get(i));	
			}
		
	}

}
