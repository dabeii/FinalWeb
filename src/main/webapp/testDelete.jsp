<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="DeleteServlet" method="post">
          <div class="form-group" >
            <label>ID in database</label>
            <input name="id" type="text" class="form-control" required>
          </div>
          <div class="modal-footer">
          	<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          	<input type="submit" class="btn btn-success" value="Delete">
        </div>
</form>
</body>
</html>