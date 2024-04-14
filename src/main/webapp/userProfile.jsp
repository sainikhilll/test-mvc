<%@page import="org.example.CustomerModel"%>
<%@page import="org.example.CustomerBusiness"%>
<%@ include file="customerHead.jsp" %>
<%
	String customer_Id = (String)session.getAttribute("customer_Id");
	CustomerBusiness customerBusiness = new CustomerBusiness();
	CustomerModel customerModel = customerBusiness.getCustomerById(customer_Id);
%>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="card p-3 mt-3">
			<h5 class="text-center">Your Profile</h5>
			<hr>
			<div class="row">
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Full Name</div>
					<h6><%=customerModel.getFirst_name()%> <%=customerModel.getLast_name()%></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Email</div>
					<h6><%=customerModel.getEmail() %></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted" style="font-size:12px">Phone</div>
					<h6><%=customerModel.getPhone()%></h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Height</div>
					<h6><%=customerModel.getHeight()%> cms</h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Weight</div>
					<h6><%=customerModel.getWeight()%> lbs</h6>
				</div>
				<div class="col-md-4">
					<div class="text-muted mt-2" style="font-size:12px">Age</div>
					<h6><%=customerModel.getAge()%> Years</h6>
				</div>
			</div>
			<form action="updateProfile.jsp">
				<input type="hidden" name="customer_Id" value="<%=customerModel.getCustomer_Id()%>">
				<input type="hidden" name="first_name" value="<%=customerModel.getFirst_name()%>">
				<input type="hidden" name="last_name" value="<%=customerModel.getLast_name()%>">
				<input type="hidden" name="email" value="<%=customerModel.getEmail()%>">
				<input type="hidden" name="phone" value="<%=customerModel.getPhone()%>">
				<input type="hidden" name="height" value="<%=customerModel.getHeight()%>">
				<input type="hidden" name="weight" value="<%=customerModel.getWeight()%>">
				<input type="hidden" name="age" value="<%=customerModel.getAge()%>">
				<input type="submit" class="btn btn-secondary w-100 mt-3" value="Update Profile">
			</form>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>