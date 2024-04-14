<%@ include file="head.jsp"%>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4 mt-5">
		<div class="card border-warning p-3">
			<div class="text-center h4">Customer Login</div>
			<form action="customer" method="post">
				<div class="form-floating mb-3 mt-3">
					<input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
					<label for="email">Email</label>
				</div>
				<div class="form-floating mb-3 mt-3">
					<input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
					<label for="password">Password</label>
				</div>
				<div>
					<input type="submit"  class="btn btn-primary w-100" value="Login">
				</div>
				<div>
					<a href="customerRegistration.jsp">New Here? Click to Register</a>
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>