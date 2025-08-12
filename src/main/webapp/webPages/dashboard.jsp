<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>ELMS - Dashboard</title>
  <link rel="stylesheet" href="/CLW_LEAVE/cssFiles/dashboard.css" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="/CLW_LEAVE/jsFiles/script.js"></script>
  <style>
    /*
      The inline styles from your original code are moved to dashboard.css
      to keep all styling in one place, which is good practice.
      The following is a minimal set to ensure the layout works.
    */
    body {
      margin: 0;
      font-family: 'Times New Roman', sans-serif;
      transition: background-color 0.3s, color 0.3s;
      margin-left: 240px;
      padding: 30px;
    }

    .dashboard-container {
      display: flex;
    }

    .sidebar {
      width: 230px;
      min-height: 100vh;
      background-color: #1c1c1c;
      color: white;
      padding: 20px;
    }

    .main-content {
      flex: 1;
      padding: 20px;
      transition: background 0.3s, color 0.3s;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .top-controls {
      display: flex;
      align-items: center;
      gap: 15px;
    }
  </style>
</head>

<body class="dark">
  <div class="dashboard-container">
    <aside class="sidebar">
      <%@ include file="../backgroundProcess/dynamicMenu.jsp" %>
    </aside>

    <main class="main-content" id="mainContent">
      <header>
        <h1>Employee Leave Management</h1>
        <div class="top-controls">
          <p>Railway ELMS Dashboard</p>
          <label class="switch">
            <input type="checkbox" id="theme-toggle" checked>
            <span class="slider"></span>
          </label>
        </div>
      </header>

      <section class="content">
        <div class="info-box">
          <h3>Welcome to your Dashboard</h3>
          <p>This area will switch themes from Light to Dark based on toggle above.</p>
        </div>
      </section>
    </main>
  </div>

  <div class="modal" id="leave-modal">
    <div class="modal-content">
      <span class="close-btn" onclick="closeModal()">&times;</span>
      <h3>Leave Details</h3>
      <p><strong>Type:</strong> Casual Leave</p>
      <p><strong>Dates:</strong> 02–03 July</p>
      <p><strong>Status:</strong> Approved</p>
      <button onclick="closeModal()">Close</button>
    </div>
  </div>

  <script>
    // Theme toggle
    document.getElementById('theme-toggle').addEventListener('change', function () {
      const body = document.body;
      if (this.checked) {
        // Switch to dark mode
        body.classList.remove('light');
        body.classList.add('dark');
      } else {
        // Switch to light mode
        body.classList.remove('dark');
        body.classList.add('light');
      }
    });

    // Initial state is now set directly in the HTML with class="dark" and checked.
    // The previous DOMContentLoaded listener is no longer necessary.

    // Modal functions
    function openModal() {
      document.getElementById("leave-modal").style.display = "flex";
    }

    function closeModal() {
      document.getElementById("leave-modal").style.display = "none";
    }

    window.onclick = function(e) {
      const modal = document.getElementById("leave-modal");
      if (e.target === modal) modal.style.display = "none";
    };
  </script>
</body>
</html>