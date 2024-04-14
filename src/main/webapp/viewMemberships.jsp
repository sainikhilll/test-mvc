<%@page import="java.util.Iterator"%>
<%@page import="org.example.MembershipModel"%>
<%@page import="java.util.List"%>
<%
	String role = (String)session.getAttribute("role");
	if(role.equalsIgnoreCase("Customer")){%>
		<%@ include file="customerHead.jsp" %>
	<%}else{%>
		<%@ include file="adminHead.jsp" %>
	<%}
%>
<%
	List<MembershipModel> membershipModelList = (List<MembershipModel>)request.getAttribute("membershipModelList");
	Iterator<MembershipModel> membershipModelIterator = membershipModelList.iterator();
%>
<div class="container">
	<div class="row">
		<%
			while(membershipModelIterator.hasNext()){
			MembershipModel membershipModel = membershipModelIterator.next();
		%>
		<div class="col-md-4">
		<div class="card border-info mt-4 p-3">
		<div class="text-center">Membership</div>
		<hr>
			<div class="row mt-3">
				<div class="col-md-6">
					<div class="text-muted" style="font-size:12px;">Membership Type</div>
					<h6><%=membershipModel.getMembership_type()%></h6>
					<div class="text-muted" style="font-size:12px;">Duration</div>
					<h6><%=membershipModel.getDuration()%>Months</h6>
					<%if(role.equalsIgnoreCase("Admin")){ %>
						<form action="updateMembership.jsp" method="get">
							<input type="hidden" name="membership_Id" value="<%=membershipModel.getMembership_Id()%>">
							<input type="hidden" name="membership_type" value="<%=membershipModel.getMembership_type()%>">
							<input type="hidden" name="duration" value="<%=membershipModel.getDuration()%>">
							<input type="hidden" name="hours_per_day" value="<%=membershipModel.getHours_per_day()%>">
							<input type="hidden" name="price" value="<%=membershipModel.getPrice()%>">
							<input type="submit" class="btn btn-warning w-100 mt-2" value="Update">
						</form>
					<%}%>
				</div>
				<div class="col-md-6">
					<div class="text-muted" style="font-size:12px;">Hours Per Day</div>
					<h6><%=membershipModel.getHours_per_day()%> Hours</h6>
					<div class="text-muted" style="font-size:12px;">Price</div>
					<h6>$<%=membershipModel.getPrice()%></h6>
					<%if(role.equalsIgnoreCase("Admin")){ %>
						<a href="deleteMembership?membership_Id=<%=membershipModel.getMembership_Id()%>" class="btn btn-info w-100 mt-2">Delete</a>
					<%} %>
				</div>
				<%if(role.equalsIgnoreCase("Customer")){ %>
				<form action="enrollments" method="post">
					<input type="hidden" name="membership_Id" value="<%=membershipModel.getMembership_Id()%>">
					<input type="submit" class="btn btn-success w-100 mt-2" value="Enroll">
				</form>
				<%} %>
			</div>
		</div>
		</div>
		<%} %>
	</div>
</div>