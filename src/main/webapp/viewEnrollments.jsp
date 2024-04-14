<%@page import="org.example.MembershipBusinees"%>
<%@page import="org.example.MembershipModel"%>
<%@page import="org.example.CustomerModel"%>
<%@page import="org.example.CustomerBusiness"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.example.EnrollmentsModel"%>
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
	List<EnrollmentsModel> enrollmentsModelList = (List<EnrollmentsModel>)request.getAttribute("enrollmentsModelList");
	Iterator<EnrollmentsModel> enrollmentModelIterator = enrollmentsModelList.iterator();


%>
<div class="container">
	<div class="row">
		<div class="col-md-11">
		<%while(enrollmentModelIterator.hasNext()){
			EnrollmentsModel enrollmentsModel = enrollmentModelIterator.next();

			CustomerBusiness customerBusiness = new CustomerBusiness();
			CustomerModel customerModel = customerBusiness.getCustomerById(enrollmentsModel.getCustomer_Id());

			MembershipBusinees membershipBusinees = new MembershipBusinees();
			MembershipModel membershipModel = membershipBusinees.getMembershipById(enrollmentsModel.getMembership_Id());

		%>
			<div class="card p-3 mt-3">
				<div class="row">
				<%if(role.equalsIgnoreCase("Customer")){ %>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Membership Name</div>
						<h6><%=membershipModel.getMembership_type()%></h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Membership Price</div>
						<h6>$<%=membershipModel.getPrice()%></h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Duration</div>
						<h6><%=membershipModel.getDuration()%> Months</h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Hours Per Day</div>
						<h6><%=membershipModel.getHours_per_day()%> Hours</h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Enrollment Date</div>
						<h6><%=enrollmentsModel.getDate()%></h6>
					</div>
					<%} %>
					<%if(role.equalsIgnoreCase("Admin")){ %>
					<h4 class="text-center">Enrollment</h4>
						<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Membership Name</div>
						<h6><%=membershipModel.getMembership_type()%></h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Customer Name</div>
						<h6><%=customerModel.getFirst_name()%> <%=customerModel.getLast_name()%></h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Age</div>
						<h6><%=customerModel.getAge()%>years</h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Price</div>
						<h6>$<%=membershipModel.getPrice()%></h6>
					</div>
					<div class="col-md-2">
						<div class="text-muted" style="fonrt-size:12px">Enrollment Date</div>
						<h6><%=enrollmentsModel.getDate()%></h6>
					</div>
					<%} %>
				</div>
			</div>
			<%} %>
		</div>
	</div>
</div>