<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
<style type="text/css">
label {
	display: inline-block;
	width: 200px;
	margin: 5px;
	text-align: left;
}
button{
padding:10px;
margin: 10px;
}
input[type=text],input[type=password], select{
width: 200px;
}
input[type=radio]{
display:inlline-block;
margin-left:45px;
}
input[type=checkbox]{
display: inline-block;
margin-right: 190px;
}
.error{
       color:red;
       font-style:italic;
}
</style>
</head>
<body>
	<div align="center">
		<h2>User Registration</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<div>
			<form:label path="name">Full name: </form:label>
			<form:input path="name" />
			<form:errors path="name" cssClass="error"/>
             </div>
             
            <div>
			<form:label path="email">E-mail: </form:label>
			<form:input path="email" />
			<form:errors path="email" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="password">Password: </form:label>
			<form:password path="password" />
			<form:errors path="password" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="birthday">Birthday: </form:label>
			<form:input type="date" path="birthday" />
			<form:errors path="birthday" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="profession">Profession: </form:label>
			<form:select path="profession" items="${professionList}"></form:select>
			<form:errors path="profession" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="gender" >Gender:</form:label>
			<form:radiobutton path="gender" value="Male"/>Male
			<form:radiobutton path="gender" value="Female"/>Female
			<form:errors path="gender" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="married">Married?: </form:label>
			<form:checkbox path="married"></form:checkbox>
			<form:errors path="married" cssClass="error"/>
			</div>
			
			<div>
			<form:label path="note">Note:</form:label>	
			<form:textarea path="note" rows="5" col="25"/>
			<form:errors path="note" cssClass="error"/>
            </div>
            
           
			<form:button>Register</form:button>
		</form:form>

	</div>
</body>
</html>