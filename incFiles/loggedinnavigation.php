<nav class="navbar">
	<!-- LOGO -->
	<a href="myaccount.php">
		<div class="logo">MyMovieLocker</div>
	</a>

	    <!-- NAVIGATION MENU -->
	    <ul class="nav-links">

		    <!-- NAVIGATION MENUS -->
		    <div class="menu">
			<li><a href="index.php">Home</a></li>
			<?php
				if($_SESSION["email"] != "")
				{
					echo "<li><a href=\"myaccount.php\">My Account</a></li>";
				}
			?>
			<li><a href="movies.php">Movies</a></li>
			<?php
				if($_SESSION["email"] != "")
				{
					echo "<li><a href=\"locker.php\">Locker</a></li>";
					echo "<li><a href=\"login.php?logout=true\">Logout</a></li>";
				}
				else
				{
					echo "<li><a href=\"login.php\">Login</a></li>";
				}

			?>
			<li><a href="developers.php">API</a></li>
			<li><a href="b_FAQ.php">FAQ</a></li>
			<li><a href="b_contact.php">Contact</a></li>
			 
        
		</div>
		    </ul>
	 
</nav>