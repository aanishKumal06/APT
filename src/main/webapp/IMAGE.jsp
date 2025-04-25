<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Image Upload</title>
</head>
<body>
    <h2>Upload an Image</h2>
    <form action="UploadPhotoServlet" method="post" enctype="multipart/form-data">
        Select image to upload: <br>
        <input type="file" name="image"><br><br>
        <input type="submit" value="Upload">
    </form>
    
    
    <h2>Uploaded photo</h2>
    

</body>
</html>
