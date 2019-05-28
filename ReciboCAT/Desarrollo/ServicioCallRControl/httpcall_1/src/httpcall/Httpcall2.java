/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package httpcall;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.logging.Level;
import java.util.logging.Logger;
 
public class Httpcall2 {
   public static void main(String[] args)
     throws MalformedURLException, IOException {
       
       ;
       
       System.out.println(mainRequest("http://recursoconfiable.com/controlAccess/excel/loadAppoint_HebInb.asp?crp=CRP_HEB&Data=CDC_HEB_INBOUND2|62559063|7923|2017-07-05%2010:00||Secos|NACIONAL|"));
       String msg="";
       /*
       msg="";
       URL url = new URL("http://recursoconfiable.com/controlAccess/excel/loadAppoint_HebInb.asp?crp=CRP_HEB&Data=CDC_HEB_INBOUND2|62559063|7923|2017-07-05%2010:00||Secos|NACIONAL|");
                           
      URLConnection con = url.openConnection(); 
      InputStream is=con.getInputStream();
              
        
        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null) 
            System.out.println(inputLine);
        in.close();
      
      
     
      int size1=0;
      
      InputStreamReader ISR=new InputStreamReader(is);      
      BufferedReader in = new BufferedReader(ISR);
      
      try {
                 
                //File nuevo = new File("\\modelxls\\fileSATOK3MED.xls");
                // Crear esta carpeta httpresponse
                File nuevo = new File("\\httpresponse\\httpsimpleresponse.txt");
                long byteslen = 0;
                
                byteslen = size1;
                
                
                FileOutputStream fos = new FileOutputStream(nuevo);
        
                byte []by = new byte[1];
                byte []by2 = new byte[1000];
                //byte []by3 = new byte[19431584];
                byte []by3 = new byte[100];
                 //19382272
                int r=0;
                int n=0;
                int bytesreads=500;
                int fromread=0;
                int total=0;
                //while ((r=is.read(by,0,1))>0) {
                int rr=1000;
                while ((r=is.read(by2,0,rr))>0) {
                    System.arraycopy(by2, 0, by3,total,r);
                    total=total+r;
                    if (total>=19380000) {
                        rr=1;
                    }
                    
                    n++;
                    
                
                }
                String sx= new String(by3);
                System.out.println(sx);
                fos.write(by3,0,total);
                
                 fos.close();
                } catch (IOException ex) {
                    
                    Logger.getLogger(Httpcall2.class.getName()).log(Level.SEVERE, null, ex);
                }
      
 
      
      in.close();
      
     */
   }

 public static String mainRequest(String cadena)
     throws MalformedURLException, IOException {
       
       String msg="";
      
       msg="";
       //URL url = new URL("http://recursoconfiable.com/controlAccess/excel/loadAppoint_HebInb.asp?crp=CRP_HEB&Data=CDC_HEB_INBOUND2|62559063|7923|2017-07-05%2010:00||Secos|NACIONAL|");
       URL url = new URL(cadena);                    
      
       URLConnection con = url.openConnection(); 
       InputStream is=con.getInputStream();
              
        
        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        String inputLine = "";
        //while ((inputLine = in.readLine()) != null) 
            //System.out.println(inputLine);
        
        inputLine = in.readLine();
        in.close();
      
        return inputLine;
  }

}
