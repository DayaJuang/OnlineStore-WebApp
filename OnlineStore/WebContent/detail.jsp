<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8" import="test.data.ItemData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>あつまれ どうぶつの森</title>
</head>
<body>

	<%! ItemData data = new ItemData(); 
		String price = data.showPrice(data.getPrice());
	%>

<div id='container'>
	<img height="500" src="https://images-na.ssl-images-amazon.com/images/I/71lpG-B9oDL._AC_SL1133_.jpg" style='float: left;'/>
	<h3 style="font-family:verdana">あつまれ どうぶつの森</h3>
	<p style="font-family:verdana">ブランド　：　任天堂<br/>
	<b>プラットフォーム　：　</b> Nintendo Switch <br/>
	<b>評価　：　4.7</b> <br/>
	</p>
	<hr/>
	<p style="color:red"><b><% out.println(price); %></b>(税抜)</p>
	<form action="checkout.jsp">
	<label>数量　：</label>
	<select name="quantity">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
	</select>
	<br/>
	<input type="submit" value="購入">
	</form>
	</div>

</body>
</html>