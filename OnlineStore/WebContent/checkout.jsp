<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8" import="test.data.ItemData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文確認</title>
</head>

	<%!
		ItemData data = new ItemData();	//ItemDataクラスのインスタンス
		double shippingCost = 850;	//配送料
	%>

<body>
	<%
		//必要な変数を取得する
		int qnty = Integer.parseInt(request.getParameter("quantity"));
		double price = data.getPrice()*qnty;
		double tax = data.calculateTax(price);
		double totalCost = data.calculatePrice(price, tax, shippingCost);
	%>
	<h2>注文内容</h2>
	商品	<span style="padding-left: 16px;"> ： </span>	<% out.println(data.showPrice(price)); %> <br/>
	配送料	：　	<% out.println(data.showPrice(shippingCost)); %> <br/>
	税金	<span style="padding-left: 16px;"> ：　</span> <% out.println(data.showPrice(tax)); %> <br/>
	<hr align="left" width="150"/>		
	<b style="color:red">合計　：　 <% out.println(data.showPrice(totalCost)); %> </b> <br/>
	<p></p>
	<form action="finish.jsp">
		<input style="background-color: orange" type="submit" value="注文を確定する" width="900" height="450"	/>
	</form>
</body>
</html>