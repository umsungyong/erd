<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form id=>
	<input type="file" name="file1">
	<input type="text" name="writer">
	<button onclick="upload()">zzzzs</button>
	</form>
<script>
	function(){
		var data = new FormData();
		data.append('file1',document.querySelector('#file1')[0]);
		data.append('writer',document.querySelector('#writer').value);
		$.ajax({
			url:'/upload',
			encttpe:'multipart/form-data',
			data:data,
			method:'post',
			processData: false,
			contentType: false,
			success:function(res){
				
			},
			error:function(err){
				
			}
		});
	}
</script>
</body>
</html>
