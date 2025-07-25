# 🎓 TechLearn – Web-Based E-Learning Platform (2025)

A user-friendly web-based E-learning platform developed in PHP to provide categorized video tutorials with progress tracking and interactive user features. Designed as a scalable, simplified alternative to complex LMS platforms like Coursera and Moodle.

---

## 📌 Project Overview

- **Type**: Full Stack Web Application  
- **Technology Stack**: PHP, MySQL, HTML, CSS, JavaScript, XAMPP  
- **Purpose**: To deliver categorized video-based tutorials with secure authentication and admin control, fostering an intuitive e-learning environment.

---

## 🚀 Features

- Secure user registration and login system  
- Admin dashboard for managing courses and users  
- Categorized video tutorials with progress tracking  
- Payment processing and status management  
- Responsive and simple user interface  
- Local hosting and testing with XAMPP  

---

## 📷 Screenshot

---

## 🛠️ Technologies Used

| Category         | Tools & Frameworks                  |
|------------------|-------------------------------------|
| Backend          | PHP, MySQL                         |
| Frontend         | HTML, CSS, JavaScript              |
| Server           | XAMPP (Apache, MySQL)              |
| Version Control  | Git, GitHub                       |

---

## 📁 Project Structure
TechLearn-Web-Based-E-Learning-Platform/
├── Admin/                   # Admin panel (course & user management)
├── Student/                 # Student dashboard and profiles
├── css/                     # Styling (CSS files)
├── image/                   # Image assets
├── js/                      # Client-side JavaScript files
├── lessonvid/               # Video tutorials for lessons
├── mainInclude/             # Common includes (header, footer, etc.)
├── video/                   # Additional video resources
├── checkout.php             # Payment processing script
├── contact.php              # Contact page
├── coursedetails.php        # Course detail page
├── courses.php              # Course listings page
├── dbConnection.php         # Database connection config
├── index.php                # Home page
├── lms_db.sql               # Database schema and initial data
├── loginorsignup.php        # User login and registration page
├── logout.php               # User logout script
├── pageNotFound.php         # 404 error page
├── paymentdone.php          # Payment success handler
├── paymentstatus.php        # Payment status page
├── studentRegistration.php  # Student registration processing
├── README.md                # Project documentation
├── .gitattributes           # Git configuration file

---

## 🧑‍💻 Installation and Setup
Clone the repository:
git clone https://github.com/yugjasoliya08/TechLearn-Web-Based-E-Learning-Platform.git
cd TechLearn-Web-Based-E-Learning-Platform

Set up XAMPP:
Download and install XAMPP.
Move the project folder inside the htdocs directory of XAMPP.
Launch Apache and MySQL services via XAMPP Control Panel.

Database Setup:
Open phpMyAdmin.
Create a new database (e.g., techlearn).
Import lms_db.sql into this database.

Run the Application:
Open browser and go to:
http://localhost/TechLearn-Web-Based-E-Learning-Platform/index.php

---

## ⚙️ How It Works
Users register or login via loginorsignup.php.
Students browse courses listed in courses.php.
Upon selecting a course, detailed content and videos are shown (coursedetails.php).
Admin manages courses, users, and payment status from the Admin panel.
User progress and payments are tracked and updated in real time.

---

## 🤝 Contributing
Contributions are always welcome!
Feel free to fork the repository and submit pull requests.
For major changes or suggestions, please open an issue first to discuss.

---

## 👨‍💻 Author
Yug Jasoliya
📧 Yugjasoliya49@gmail.com
Linkdin:https://www.linkedin.com/in/yug-jasoliya-69691126b/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app
