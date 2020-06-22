<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>FeedBack</title>
<link href="Feedback design.css" rel="stylesheet" type="text/css">
</head>

<body>
	<header>
		<div class="row">
			<div class="logo">
			<img src="final_select (1).png">
                        
			</div>
			<div class="Feedback">
                            <h1> FEEDBACK</h1>
            <form action="Feedback.jsp" method="post">
				<p><b>Name</b></p>
                                <input type="text" name="name" placeholder="Name"  required><br><br>
                                <p><b>Contact</b></p>
                                <input type="tel" name="contact" placeholder="Contact" maxlength="10" pattern="[789][0-9]{9}" oninvalid="this.setCustomValidity('Enter a valid contact no eg:8457896584')" oninput="setCustomValidity('')" required><br><br>
				
				<p><b>Email Id</b></p>
                                <input type="email" name="Email id" placeholder="Email Id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" oninvalid="this.setCustomValidity('Enter a valid email address')" oninput="setCustomValidity('')" required><br><br>
				
                <p><b>Suggestion</b></p>
                <input type="text" name="suggestion" placeholder="Suggestion"  required><br><br>
                <input type="submit" name="submit" value="Submit"><br><br>
				
			</form>
			</div>
            <ul class="main-nav">
			<li class="active"><a href="Index1.jsp">HOME</a></li>
            </ul>
                     <script
            
    </div>
    </header>

</body>
</html>
