<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
       /* Reset styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Global styles */
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-color: #f5f5f5;
}

header, nav, main, footer {
  padding: 15px;
}

header {
  background-color: #333;
  color: #fff;
  text-align: center;
}

nav ul {
  list-style-type: none;
  display: flex;
  justify-content: center;
  gap: 20px;
}

nav ul li {
  display: inline;
}

nav a {
  text-decoration: none;
  color: #333;
  padding: 5px 10px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

nav a:hover {
  background-color: #f0f0f0;
}

main {
  margin-top: 20px;
}

section {
  background-color: #fff;
  margin-bottom: 20px;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

table {
  width: 100%;
  border-collapse: collapse;
}

table th, table td {
  padding: 10px;
  border-bottom: 1px solid #ddd;
}

.chart {
  height: 300px; /* Set an appropriate height for your chart */
  background-color: #f0f0f0;
  border-radius: 5px;
}

footer {
  text-align: center;
  background-color: #333;
  color: #fff;
  padding: 10px 0;
}

    </style>
</head>

<body>
  <header>
    <h1>Payments Gateway Dashboard</h1>
  </header>
  <nav>
    <ul>
      <li><a href="#overview">Overview</a></li>
      <li><a href="#transactions">Transactions</a></li>
      <li><a href="#analytics">Analytics</a></li>
      <li><a href="#settings">Settings</a></li>
    </ul>
  </nav>
  <main>
    <section id="overview">
      <h2>Overview</h2>
      <!-- Overview content goes here -->
    </section>
    <section id="transactions">
      <h2>Transactions</h2>
      <table>
        <thead>
          <tr>
            <th>Date</th>
            <th>Transaction ID</th>
            <th>Amount</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <!-- Transaction data will be populated dynamically -->
        </tbody>
      </table>
    </section>
    <section id="analytics">
      <h2>Analytics</h2>
      <div class="chart">
        <!-- Chart content (e.g., using Chart.js or other libraries) -->
      </div>
    </section>
    <section id="settings">
      <h2>Settings</h2>
      <form>
        <label for="apiKey">API Key:</label>
        <input type="text" id="apiKey" name="apiKey" placeholder="Enter API Key">
        <button type="submit">Save</button>
      </form>
    </section>
  </main>
  <footer>
    <p>&copy; 2024 Payments Gateway Inc. All rights reserved.</p>
  </footer>
</body>

</html>


