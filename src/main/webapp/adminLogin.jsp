<%@ include file="head.jsp"%>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4 mt-5">
		<div class="card border-warning p-3">
			<div class="text-center h4">Admin Login</div>
			<form action="admin" method="post">
				<div class="form-floating mb-3 mt-3">
					<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
 					<label for="email">Email</label>
				</div>
				<div class="form-floating mt-3 mb-3">
  					<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
  					<label for="password">Password</label>
				</div>
				<div>
					<input type="submit"  class="btn btn-primary w-100" value="Login">
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>
