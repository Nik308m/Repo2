<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Address Book App </title>
    <style>
    body {
  font-family: 'Arial', sans-serif;
  background: linear-gradient(to right, #8e44ad, #3498db); /* Violet-like gradient background */
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
            width: 300px;
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
        
           button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container button {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="fetchForm" action="/fetchByFname"  method="get">
        <label for="fname">Fetch Details By First Name:</label>
        <input type="text" id="fname" name="fname" required>
        <input type="submit" value="Submit">
    </form>
  

    <div id="tableContainer"></div>
    
    <div class="button-container">
        <button onclick="myFunction()">Go to Search by Last Name</button>
        <button onclick="myFunction1()">Go to Submission Page</button>
    </div>

    <script>
  	
    	 document.getElementById('fetchForm').addEventListener('submit', function (event) {
             event.preventDefault();

             const fname = document.getElementById('fname').value;
             
              let myurl='/fetchByFname?fname='+fname;
             fetch(myurl , {
                 method: 'GET'
             })
                 .then(response => response.json())
                 .then(data => {
                	 displayTable(data);
                 })
                 .catch(error => console.error('Error:', error));
         });

         function displayTable(data) {
             const tableContainer = document.getElementById('tableContainer');
             tableContainer.innerHTML = ''; // Clear previous table, if any
             
             if (data.length > 0) {
            	 
                 const table = document.createElement('table');
                 const headerRow = table.createTHead().insertRow(0);

                 Object.keys(data[0]).forEach(key => {
                     const th = document.createElement('th');
                     th.textContent = key;
                     headerRow.appendChild(th);
                 });

                 const tbody = table.createTBody();

                 data.forEach(item => {
                     const row = tbody.insertRow();
                     Object.values(item).forEach(value => {
                         const cell = row.insertCell();
                         cell.textContent = value;
                     });
                 });

                 tableContainer.appendChild(table);
             } else {
                 tableContainer.textContent = 'No data found';
             }
         }
    	

         function myFunction() {
            window.location.href = "/FetchByLastName";
            }
             function myFunction1() {
                   window.location.href = "/SubmitPage";
                   }
   
    </script>
</body>
</html>
