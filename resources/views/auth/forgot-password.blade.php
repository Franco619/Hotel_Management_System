<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--favicon-->
	<link rel="icon" href="{{ asset('backend/assets/images/favicon-32x32.png') }}" type="image/png" />
	<!-- loader-->
	<link href="{{ asset('backend/assets/css/pace.min.css') }}" rel="stylesheet" />
	<script src="{{ asset('backend/assets/js/pace.min.js') }}"></script>
	<!-- Bootstrap CSS -->
	<link href="{{ asset('backend/assets/css/bootstrap.min.css') }}" rel="stylesheet">
	<link href="{{ asset('backend/assets/css/bootstrap-extended.css') }}" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
	<link href="{{ asset('backend/assets/css/app.css') }}" rel="stylesheet">
	<link href="{{ asset('backend/assets/css/icons.css') }}" rel="stylesheet">
	<title>Rocker - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="">
	<!-- wrapper -->
	<div class="wrapper">
		<div class="authentication-forgot d-flex align-items-center justify-content-center">
			<div class="card forgot-box">
				<div class="card-body">
					<div class="p-3">
						<div class="text-center">
							<img src="{{ asset('backend/assets/images/icons/forgot-2.png') }}" width="100" alt="" />
						</div>
						<h4 class="mt-5 font-weight-bold">Forgot Password?</h4>
						<p class="text-muted">Enter your registered email ID to reset the password</p>

                          <form method="POST" action="{{ route('password.email') }}">
                                @csrf
						<div class="my-4">
							<label class="form-label">Email Address</label>
							<input type="email" id="email" name="email" class="form-control" placeholder="example@user.com" />
						</div>
						<div class="d-grid gap-2">
							<button type="submit"  class="btn btn-primary">Send</button>
                             
							 <a href="{{ route('login') }}" class="btn btn-light"><i class='bx bx-arrow-back me-1'></i>Back to Login</a>
						</div>

                        </form>

                         
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end wrapper -->
</body>

</html>