package model.service;
import java.sql.SQLException;

import model.dao.ImageDAO;

public class ImgUploadService {
	   private static ImgUploadService imgUploadService = new ImgUploadService();
	   private ImageDAO imageDAO;

	   private ImgUploadService() {
	      try {
	    	  imageDAO = new ImageDAO();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }   
	   }

	   public static ImgUploadService getInstance() {
	      return imgUploadService;
	   }

		public int upload(int petId, String fileName, String fileRealName) throws SQLException {
		      return imageDAO.upload(petId, fileName, fileRealName);
		}
}
