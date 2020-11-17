<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>��ǰ ���</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class="dispaly-3">��ǰ���</h1>
			</div>
		</div>
		<%
			ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i=0; i<listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>
				<p><a href ="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">�� ����</a>
				</div>
				<%
				}
				%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
			
</body>
</html>