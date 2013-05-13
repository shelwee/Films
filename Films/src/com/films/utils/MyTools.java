package com.films.utils;
import java.security.*;
import java.util.Random;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.upload.FormFile;

public class MyTools {

	public final static String MD5(String s) {      
		  char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',  'a', 'b', 'c', 'd', 'e', 'f' };      
		  try {      
		   byte[] strTemp = s.getBytes();      
		   MessageDigest mdTemp = MessageDigest.getInstance("MD5");      
		   mdTemp.update(strTemp);      
		   byte[] md = mdTemp.digest();      
		   int j = md.length;      
		   char str[] = new char[j * 2];      
		   int k = 0;      
		   for (int i = 0; i < j; i++) {      
		    byte byte0 = md[i];      
		    str[k++] = hexDigits[byte0 >>> 4 & 0xf];      
		    str[k++] = hexDigits[byte0 & 0xf];      
		   }      
		   return new String(str);      
		  } catch (Exception e) {      
		   return null;      
		   }
	}
	
	//�ϴ������ķ��� [�������ϴ���ͼƬ���]
	public static String uploadFilmPhoto(HttpServletRequest request,FormFile ff,String id){
	
	 String newPhotoName="";
	 try{
		//���Ǹ�ÿ���û������Լ����ļ���.
		String filePath=request.getSession().getServletContext().getRealPath("/");
		//filePath���ǵ�ǰ���webӦ���Ǿ��·�� F:\apache-tomcat-6.0.20\webapps\xiaoneinew
		//E:\Workspaces\MyEclipse 10\.metadata\.me_tcat\webapps\Films\
		InputStream stream = ff.getInputStream();// ���ļ�����
		String oldPhotoName=ff.getFileName();
		newPhotoName=id+oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
		String newFullNewPath=filePath+File.separator+"upload"+File.separator+"movie"+File.separator;
		//�ж�newFullNewPath�ļ����Ƿ����
		File f=new File(newFullNewPath);
		if(!f.isDirectory()){
			//�����ļ���,��������
			f.mkdirs();
			
		}
		//���ϴ���ͷ�������޳ɳ� ���.��׺
		
		OutputStream bos = new FileOutputStream(newFullNewPath+ newPhotoName);
		int len = 0;
		byte[] buffer = new byte[8192];
		while ((len = stream.read(buffer, 0, 8192)) != -1) {
			bos.write(buffer, 0, len);// ���ļ�д�������
		}
		bos.close();
		stream.close();

	} catch (Exception e) {
		e.printStackTrace();
	}
	return newPhotoName;
	}
	
	
	//�ϴ�ͷ��ķ��� [�������ϴ���ͼƬ���] [��ϣ��������ͼƬ��·�� /xiaoneinew/images/�û�id/head/albumid/ͼƬ]
	public static String uploadUserPhoto(HttpServletRequest request,FormFile ff,String id){
		
		 String newPhotoName="";
		 try{
			//���Ǹ�ÿ���û������Լ����ļ���.
			String filePath=request.getSession().getServletContext().getRealPath("/");
			//filePath���ǵ�ǰ���webӦ���Ǿ��·�� F:\apache-tomcat-6.0.20\webapps\xiaoneinew
			//E:\Workspaces\MyEclipse 10\.metadata\.me_tcat\webapps\Films\
			InputStream stream = ff.getInputStream();// ���ļ�����
			String oldPhotoName=ff.getFileName();
			newPhotoName=id+oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
			String newFullNewPath=filePath+File.separator+"upload"+File.separator+ "Gravator"+File.separator + id +File.separator;
			//�ж�newFullNewPath�ļ����Ƿ����
			File f=new File(newFullNewPath);
			if(!f.isDirectory()){
				//�����ļ���,��������
				f.mkdirs();
				
			}
			//���ϴ���ͷ�������޳ɳ� ���.��׺
			
			OutputStream bos = new FileOutputStream(newFullNewPath+ newPhotoName);
			int len = 0;
			byte[] buffer = new byte[8192];
			while ((len = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, len);// ���ļ�д�������
			}
			bos.close();
			stream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return newPhotoName;
		}
	
	public static int getRandom(int num){
		int n = new Random().nextInt(num);
		while (n <200 ){
			n = new Random().nextInt(num);
			}		
		return n;
		}
}

    
     
