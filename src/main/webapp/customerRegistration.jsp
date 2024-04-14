<%@ include file="head.jsp"%>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4 mt-5">
		<div class="card bg-secondary p-3">
			<div class="text-center h4 text-white">Customer Registration</div>
			<form action="customer" method="get">
			<div class="row">
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-white"> First Name</label>
						<input type="text" name="first_name" class="form-control" placeholder="Enter First Name" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Email</label>
						<input type="email" name="email" class="form-control" placeholder="Enter Email" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Height</label>
						<input type="text" name="height" class="form-control" placeholder="Enter Your Height" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Age</label>
						<input type="text" name="age" class="form-control" placeholder="Enter Your Age" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-white"> Last Name</label>
						<input type="text" name="last_name" class="form-control" placeholder="Enter Last Name" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Phone</label>
						<input type="number" name="phone" class="form-control" placeholder="Enter Phone Number" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Weight</label>
						<input type="text" name="weight" class="form-control" placeholder="Enter Your Weight" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-white">Password</label>
						<input type="password" name="password" class="form-control" placeholder="Enter Password" required>
					</div>
				</div>
				<div>
					<input type="submit"  class="btn btn-primary w-100" value="Register">
				</div>
			</div>
			</form>
		</div>
	</div>
	<div class="col-md-4"></div>
</div>