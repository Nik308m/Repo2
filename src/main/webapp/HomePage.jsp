<html>
   <head><title>AddressBook</title></head>
   
   <body bgcolor="cyan">
     
   <h3>Please Enter the Details to add in AddressBook   
    <form action="/submission" method="post">
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="mname">Middle name:</label>
  <input type="text" id="mname" name="mname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  
   <label for="mnum">Mobile Number:</label>
  <input type="text" id="mnum" name="mnum"><br><br>
  
   <label for="mailid">Email ID:</label>
  <input type="text" id="mailid" name="mailid"><br><br>
  
   <label for="address">Address:</label>
  <input type="text" id="address" name="address"><br><br>
  
   <label for="Notes">Add Notes:</label>
  <input type="text" id="Notes" name="Notes"><br><br>
  <input type="submit" value="Submit">
  
</form> 
<hr>

<form action="/fetchByFname"  method="get">
 <label for="Fetch Details Of">Fetch Details By First Name :</label>
  <input type="text" id="fname" name="fname"><br><br>
  <input type="submit" value="Submit">
</form>

<hr>

<form action="/fetchByLname"  method="get">
 <label for="Fetch Details Of">Fetch Details By Last Name :</label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">
</form>
   </body>
</html>