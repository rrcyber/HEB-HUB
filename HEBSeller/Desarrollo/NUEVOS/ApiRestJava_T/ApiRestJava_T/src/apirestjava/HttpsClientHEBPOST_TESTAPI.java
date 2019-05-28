/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package apirestjava;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpsClientHEBPOST_TESTAPI {

    public static void main(String[] args) throws IOException {
        try {
            
            
            //GENERAR COTIZACIÓN
                //HttpPost postRequest = PrepareStatement("quotation");
            //GENERAR GUÍA CON LA COTIZACIÓN PREVIA
                //HttpPost postRequest = PrepareStatement("shipment");
            //GENERAR COTIZACION mul
                //HttpPost postRequest = PrepareStatement("quotationMultipackages");
            //GENERAR COTIZACION mul
                //HttpPost postRequest = PrepareStatement("shipmentMultiPackages");
            //GENERAR COTIZACION mul
                HttpPost postRequest = PrepareStatement("track");
            
            
            //EJECUCION
            ExecuteOperation(postRequest);
            
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(HttpsClientHEBPOST_TESTAPI.class.getName()).log(Level.SEVERE, null, ex);
        }
    }        
    public static HttpPost PrepareStatement (String operacion) throws UnsupportedEncodingException{
           
            String url = null;
            String Sticket = null;
                        
             switch(operacion){
                 case "quotation": 
                                url = "https://demoapi.envioclickpro.com/api/v1/quotation";
                                Sticket="{\n" +
                               "  \"package\": {\n" +
                               "    \"description\": \"Pink iPad\",\n" +
                               "    \"contentValue\": 120.01,\n" +
                               "    \"weight\": 1.01,\n" +
                               "    \"length\": 30.01,\n" +
                               "    \"height\": 15.01,\n" +
                               "    \"width\": 20.01\n" +
                               "  },\n" +
                               "  \"origin_zip_code\": \"44100\",\n" +
                               "  \"destination_zip_code\": \"44510\"\n" +
                               "}";
                               break;
                case "shipment": 
                                url = "https://demoapi.envioclickpro.com/api/v1/shipment/request";
                                Sticket="{\n" +
                                "  \"idRate\":271748,\n" +
                                "  \"myShipmentReference\": \"Prueba HEB\",\n" +
                                "  \"requestPickup\": false,\n" +
                                "  \"pickupDate\": \"2018-07-16\",\n" +
                                "  \"insurance\": true,\n" +
                                "  \"package\": {\n" +
                                "    \"description\": \"BICICLETA\",\n" +
                                "  \"contentValue\": 120.01,\n" +
                                "    \"weight\":  1.01,\n" +
                                "    \"length\": 30.01,\n" +
                                "    \"height\": 15.01,\n" +
                                "    \"width\": 20.01\n" +
                                "  },\n" +
                                "    \"origin\":{\n" +
                                "        \"firstName\":\"Alvaro\",\n" +
                                "        \"lastName\":\"Burgos\",\n" +
                                "        \"company\":\"\",\n" +
                                "        \"street\":\"Av del Parque\",\n" +
                                "        \"number\":\"2140\",\n" +
                                "        \"suburb\":\"Fraccionamiento Industria\",\n" +
                                "        \"crossStreet\":\"Planta 2\",\n" +
                                "        \"reference\":\"Planta 2\",\n" +
                                "        \"email\":\"rpeuba@me.com\",\n" +
                                "        \"phone\":\"5585655178\",\n" +
                                "        \"zipCode\":\"44100\"\n" +
                                "    },\n" +
                                "    \"destination\":{\n" +
                                "        \"firstName\":\"John\",\n" +
                                "        \"lastName\":\"Mendo\",\n" +
                                "        \"company\":\"Company name\",\n" +
                                "        \"street\":\"tacubaya\",\n" +
                                "        \"number\":\"109\",\n" +
                                "        \"suburb\":\"General Josue Vicente \",\n" +
                                "        \"crossStreet\":\"Street 1 and Street 2\",\n" +
                                "        \"reference\":\"entre tlaxpana y del vall\",\n" +
                                "        \"email\":\"prueba@gmail.com\",\n" +
                                "        \"phone\":\"5523047299\",\n" +
                                "        \"zipCode\":\"44510\"\n" +
                                "    }\n" +
                                "}";
                                break;
                case "quotationMultipackages": 
                                url = "https://demoapi.envioclickpro.com/api/v1/quotation_multipackages";
                                Sticket="{\n" +
                                "	\"packages\":[\n" +
                                "		{\n" +
                                "		  	\"contentValue\": 1490,\n" +
                                "		    \"description\": \"PERFUME LACOSTE\",\n" +
                                "		    \"weight\":  12,\n" +
                                "		    \"length\": 7,\n" +
                                "		    \"height\": 3,\n" +
                                "		    \"width\": 1\n" +
                                "		},\n" +
                                "		{\n" +
                                "		  	\"contentValue\": 750,\n" +
                                "		    \"description\": \"CASCO\",\n" +
                                "		    \"weight\":  38,\n" +
                                "		    \"length\": 23,\n" +
                                "		    \"height\": 15.5,\n" +
                                "		    \"width\": 1\n" +
                                "		}\n" +
                                "	],\n" +
                                "	\"origin_zip_code\":\"20020\",\n" +
                                "	\"destination_zip_code\":\"57710\"\n" +
                                "}";
                                break;
                case "shipmentMultiPackages": 
                                url = "https://demoapi.envioclickpro.com/api/v1/shipmentMultiPackages/request";
                                Sticket="{\n" +
                                "	\"idRate\":1329,\n" +
                                "	\"requestPickup\":true,\n" +
                                "	\"myShipmentReference\":\"Envio HEB prueba\",\n" +
                                "	\"pickupDate\":\"2018-07-18\",\n" +
                                "	\"insurance\":true, \n" +
                                "	\"packages\":[\n" +
                                "		{\n" +
                                "		  	\"contentValue\": 1490,\n" +
                                "		    \"description\": \"PERFUME LACOSTE\",\n" +
                                "		    \"weight\":  12,\n" +
                                "		    \"length\": 7,\n" +
                                "		    \"height\": 3,\n" +
                                "		    \"width\": 1\n" +
                                "		},\n" +
                                "		{\n" +
                                "		  	\"contentValue\": 750,\n" +
                                "		    \"description\": \"CASCO\",\n" +
                                "		    \"weight\":  38,\n" +
                                "		    \"length\": 23,\n" +
                                "		    \"height\": 15.5,\n" +
                                "		    \"width\": 1\n" +
                                "		}\n" +
                                "	],\n" +
                                "	\"origin\":{\n" +
                                "        \"firstName\":\"Alvaro\",\n" +
                                "        \"lastName\":\"Burgos\",\n" +
                                "        \"company\":\"\",\n" +
                                "        \"street\":\"Av del Parque\",\n" +
                                "        \"number\":\"2140\",\n" +
                                "        \"suburb\":\"Fraccionamiento Industria\",\n" +
                                "        \"crossStreet\":\"Planta 2\",\n" +
                                "        \"reference\":\"Planta 2\",\n" +
                                "        \"email\":\"rpeuba@me.com\",\n" +
                                "        \"phone\":\"5585655178\",\n" +
                                "        \"zipCode\":\"20020\"\n" +
                                "    },\n" +
                                "    \"destination\":{\n" +
                                "        \"firstName\":\"John\",\n" +
                                "        \"lastName\":\"Mendo\",\n" +
                                "        \"company\":\"\",\n" +
                                "        \"street\":\"tacubaya\",\n" +
                                "        \"number\":\"109\",\n" +
                                "        \"suburb\":\"General Josu00e9 Vicente \",\n" +
                                "        \"crossStreet\":\"Street 1 and Street 2\",\n" +
                                "        \"reference\":\"entre tlaxpana y del vall\",\n" +
                                "        \"email\":\"prueba@gmail.com\",\n" +
                                "        \"phone\":\"5523047299\",\n" +
                                "        \"zipCode\":\"57710\"\n" +
                                "    }\n" +
                                "}";
                                break;
                case "track": 
                                url = "https://demoapi.envioclickpro.com/api/v1/track";
                                Sticket="{\n" +
                                "  \"trackingCode\": \"794609145130\"\n" +
                                "}";
                               break;
             }

                HttpPost postRequest = new HttpPost(url);
                postRequest.setHeader("Content-type", "application/json");
                //postRequest.setHeader("Authorization","ae6b14b8-45e8-4dc1-be51-a31a0ce6134f");
                postRequest.setHeader("Authorization","Luis");
                postRequest.setHeader("payload", Sticket);
		StringEntity input = new StringEntity(Sticket);                
		postRequest.setEntity(input);                
                
                System.out.println("--REQUEST------------////////////////////--------");
                System.out.println(Sticket);
		
            return(postRequest);
}
    public static void ExecuteOperation (HttpPost postRequest) throws IOException {
        
            DefaultHttpClient httpClient = new DefaultHttpClient();
            HttpResponse response = httpClient.execute(postRequest);
                
		if (response.getStatusLine().getStatusCode() != 200) {
			
                    BufferedReader br = new BufferedReader(
                    new InputStreamReader((response.getEntity().getContent())));

                    String output;
                    String outputJason="";
		
                    System.out.println("--RESPONSE ERROR------------////////////////////--------");
                    while ((output = br.readLine()) != null) {
			System.out.println(output);
                        outputJason=outputJason+output;
                    }
                 
                    System.out.println(response.getStatusLine().getReasonPhrase());
                    System.out.println(response.getStatusLine().getProtocolVersion());
                    System.out.println(response.getStatusLine().getStatusCode()); 
                   // break;        
                }

		BufferedReader br = new BufferedReader(
                        new InputStreamReader((response.getEntity().getContent())));
                
		String output;
                String outputJason="";
		
                System.out.println("--RESPONSE------------////////////////////--------");
		while ((output = br.readLine()) != null) {
			System.out.println(output);
                        outputJason=outputJason+output;
		}
                
                System.out.println(response.getStatusLine().getReasonPhrase());
                System.out.println(response.getStatusLine().getProtocolVersion());
                System.out.println(response.getStatusLine().getStatusCode());

                System.out.println("--RESPONSE------------////////////////////--------");
              try {
                  JSONObject myObject = new JSONObject(outputJason);
                  myObject.keys().next();
              } catch (JSONException ex) {
                  Logger.getLogger(HttpsClientHEBPOST_TESTAPI.class.getName()).log(Level.SEVERE, null, ex);
              }
		
            //}

// break error
            httpClient.getConnectionManager().shutdown();
        }
}

