<%@ include file="customerHead.jsp"%>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4 mt-5">
		<div class="card bg-secondary p-3">
			<div class="text-center h4 text-white">Customer Registration</div>
			<form action="updateProfile" method="get">
			<input type="hidden" name="customer_Id" value="<%=request.getParameter("customer_Id")%>">
			<div class="row">
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-white"> First Name</label>
						<input type="text" name="first_name" class="form-control" value="<%=request.getParameter("first_name")%>">
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Email</label>
						<input type="email" name="email" class="form-control" value="<%=request.getParameter("email")%>">
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Height</label>
						<input type="text" name="height" class="form-control" value="<%=request.getParameter("height")%>">
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Age</label>
						<input type="text" name="age" class="form-control" value="<%=request.getParameter("age")%>">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-white"> Last Name</label>
						<input type="text" name="last_name" class="form-control" value="<%=request.getParameter("last_name")%>">
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Phone</label>
						<input type="number" name="phone" class="form-control" value="<%=request.getParameter("phone")%>">
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Weight</label>
						<input type="text" name="weight" class="form-control" value="<%=request.getParameter("weight")%>">
					</div>
				</div>
				<div>
					<input type="submit"  class="btn btn-info w-100" value="Update">
				</div>
			</div>
			</form>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>