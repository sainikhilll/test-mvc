<%
	String role = (String)session.getAttribute("role");
	if(role.equalsIgnoreCase("Customer")){%>
		<%@ include file="customerHead.jsp" %>
	<%}else{%>
		<%@ include file="adminHead.jsp" %>
	<%}
%>
<div class="container">
	<div class="row justify-content-center align-items-center mt-5">
		<div class="col-md-4"></div>
		<div class="col-md-4">
		<div class="card mt-4 p-3 bg-dark text-white">
		<H3 class="text-center">Add Membership</H3>
		<hr>
			<form action="updateMembership" method="get">
			<input type="hidden" name="membership_Id" value="<%=request.getParameter("membership_Id")%>">
				<div class="mb-3 mt-2 ">
					<label class="form-label">Membership Type</label>
					<input type="text" class="form-control" name="membership_type" id="vehicle_name" value="<%=request.getParameter("membership_type")%>">
				</div>
				<div class="mb-3 mt-2">
					<label class="form-label">Duration</label>
					<input type="text" class="form-control" name="duration" id="vehicle_type" value="<%=request.getParameter("duration")%>">
				</div>
				<div class="mb-3 mt-3">
					<label class="form-label">Hours Per Day</label>
					<input type="text" class="form-control" name="hours_per_day" id="vehicle_number" value="<%=request.getParameter("hours_per_day")%>">
				</div>
				<div class="mb-3 mt-3">
					<label class="form-label">Price</label>
					<input type="text" class="form-control" name="price" id="vehicle_capacity" value="<%=request.getParameter("price")%>">
				</div>
				<input type="submit" class="btn btn-warning w-100 mt-3" value="Update">
			</form>
		</div>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>