<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Calc JSP</title>
</head>
<body>

	<form style="margin: auto; width: 200px;" method="POST">
		<div><label for="n1">Number 1: </label><input type="number" name="n1" step="0.01" /></div></br></br>
		<div><label for="n2">Number 2: </label><input type="number" name="n2" step="0.01" /></div></br></br>
		Sum<input id="sum" type="radio" name="ops" value=1> | Average<input id="avg" type="radio" name="ops" value=2></br></br>
		<input type="submit" value="Calculate"> | <input type="reset" value="Clean"></br></br>
	</form>

	<%
	if (request.getParameter("n1") == null || request.getParameter("n2") == null) {
		out.print("<p style='text-align: center;'>Type the numbers, select a mathematics operation and press 'Calculate!'</p>");
	}else if(request.getParameter("n1") == "" && request.getParameter("n2") == ""){
		out.print("<p style='text-align: center;'>Type the numbers, select a mathematics operation and press 'Calculate!'</p>");
	}else{
		float numb1 = Float.parseFloat(request.getParameter("n1"));
		float numb2 = Float.parseFloat(request.getParameter("n2"));
		int operation = Integer.parseInt(request.getParameter("ops"));
		float result;
		switch(operation){
			case 1:
				result = numb1 + numb2;
				out.print("<p style='text-align: center;'>The sum of the numbers is: </br></br>");
				out.print(numb1);out.print(" + ");out.print(numb2);out.print(" = ");out.print(result);out.print("</p>");
			break;
			case 2:
				result = (numb1+numb2)/2;
				out.print("<p style='text-align: center;'>The average of the numbers is: </br></br>");
				out.print(numb1);out.print(" + ");out.print(numb2);out.print(" / ");out.print("2");out.print(" = ");out.print(result);out.print("</p>");
			break;
			default:
				out.print("");
		}
	}
	%>



</body>
</html>