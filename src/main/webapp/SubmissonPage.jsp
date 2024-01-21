<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
  body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #2c3e50, #3498db); /* Stylish gradient background */
    color: #fff;
    margin: 0;
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
  }

  form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
            width: 900px;
            max-width: 100%;
            box-sizing: border-box;
        }

  label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
    color: #333;
  }

  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }

  th, td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: left;
  }

  th {
    background-color: #4caf50;
    color: white;
  }
  
    .styled-button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    
    
  }

  .styled-button.primary {
    background-color: #3498db;
    color: #fff;
    margin: 50px;
  }

  .styled-button.secondary {
    background-color: #e74c3c;
    color: #fff;
    
  }

  .styled-button:hover {
    background-color: #2c3e50;
  }
  
</style>
  
  <title>Address Book Form</title>
</head>
<body>
  <div style="max-width: 600px; margin: auto;">
    <form id="myForm" action="/submission" method="post">
      <h3 style="color:black;">Please Enter the Details to add in AddressBook</h3>
      <label for="fname">First name:</label>
      <input type="text" id="fname" name="fname">
      <label for="mname">Middle name:</label>
      <input type="text" id="mname" name="mname">
      <label for="lname">Last name:</label>
      <input type="text" id="lname" name="lname">
      <label for="mnum">Mobile Number:</label>
      <input type="text" id="mnum" name="mnum">
      <label for="mailid">Email ID:</label>
      <input type="text" id="mailid" name="mailid">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address">
      <label for="Notes">Add Notes:</label>
      <input type="text" id="Notes" name="Notes">
       <input type="submit" value="Submit">
    </form>
   
  </div>
   <button type="submit" class="styled-button primary" onclick="myFunction()">Go to Search By First Name Page</button>
    <button type="button" class="styled-button secondary"  onclick="myFunction1()">Go to Search By Last Name Page</button>
  
  <script>
    // Define the function to handle the JSON response
    function handleJsonResponse(response) {
      // You can perform actions based on the JSON response here
      console.log("Received JSON response:", response);

      // Example: Display a message to the user
      alert("Data has been submitted successfully!!!");
    }

    // Attach an event listener to the form submission
    document.getElementById('myForm').addEventListener('submit', function (event) {
      event.preventDefault(); // Prevent the default form submission

      // Create a FormData object to collect form data
      var formData = new FormData(this);

      // Make the POST request using fetch
      fetch('/submission', {
        method: 'POST',
        headers: {
          // No need to set 'Content-Type' as FormData takes care of it
        },
        body: formData,
      })
      .then(response => response.text())
      .then(data => {
        // Call the function to handle the JSON response
        handleJsonResponse(data);
      })
      .catch(error => {
        console.error('Error:', error);
      });
    });
    
    
    
    


    function myFunction() {
       window.location.href = "/FetchByFirstName";
       }
        function myFunction1() {
              window.location.href = "/FetchByLastName";
              }
  </script>
</body>
</html>
