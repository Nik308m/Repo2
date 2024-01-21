<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background: linear-gradient(to right, #00bcd4, #009688); /* Cyan-like gradient background */
      color: #fff;
      margin: 0;
      padding: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    h1 {
      margin-bottom: 10px;
      margin-top: 0; /* Adjusted margin-top */
    }

    .styled-button {
      background-color: #4caf50; /* Green color */
      color: #fff;
      padding: 15px 30px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      margin-top: 10px; /* Adjusted margin-top */
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .styled-button:hover {
      background-color: #45a049;
    }
  </style>
  <title>AddressBook</title>
</head>
<body>

  <h1>AddressBook</h1>

  <button class="styled-button" onclick="myFunction()">Save New Contact Info</button>
  <button class="styled-button" onclick="myFunction1()">Search Existing Contacts By First Name</button>
  <button class="styled-button" onclick="myFunction2()">Search Existing Contacts By Last Name</button>
  
  <script>
  function myFunction1() {
      window.location.href = "/FetchByFirstName";
  }
  
   function myFunction() {
         window.location.href = "/SubmitPage";
         }
   
   function myFunction2() {
       window.location.href = "/FetchByLastName";
       }
        
   
   </script>

</body>
</html>
