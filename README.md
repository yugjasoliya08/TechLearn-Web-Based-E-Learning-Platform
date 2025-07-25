# 🎓 TechLearn – Web-Based E-Learning Platform (2025)

A user-friendly web-based E-learning platform developed in PHP to provide categorized video tutorials with progress tracking and interactive user features. Designed as a scalable, simplified alternative to complex LMS platforms like Coursera and Moodle.

---

# 📌 Project Overview

- **Type**: Full Stack Web Application  
- **Technology Stack**: PHP, MySQL, HTML, CSS, JavaScript, XAMPP  
- **Purpose**: To deliver categorized video-based tutorials with secure authentication and admin control, fostering an intuitive e-learning environment.

---

# 🚀 Features

- Secure user registration and login system  
- Admin dashboard for managing courses and users  
- Categorized video tutorials with progress tracking  
- Payment processing and status management  
- Responsive and simple user interface  
- Local hosting and testing with XAMPP  

---

## 📷 Screenshot

---

# 🛠️ Technologies Used

| Category         | Tools & Frameworks                  |
|------------------|-------------------------------------|
| Backend          | PHP, MySQL                         |
| Frontend         | HTML, CSS, JavaScript              |
| Server           | XAMPP (Apache, MySQL)              |
| Version Control  | Git, GitHub                       |

---

# 📁 Project Structure

TechLearn-Web-Based-E-Learning-Platform/
| File/Folder Name          | Description                                                                |
| ------------------------- | -------------------------------------------------------------------------- |
| `Admin/`                  | Contains admin panel files for managing users, courses, and dashboard.     |
| `Student/`                | Contains student-side pages like dashboard, enrolled courses, profile etc. |
| `css/`                    | Holds all custom CSS files for styling the web pages.                      |
| `image/`                  | Contains image assets (logo, banners, icons, etc.).                        |
| `js/`                     | JavaScript files for client-side interactivity.                            |
| `lessonvid/`              | Stores course lesson videos uploaded by admins.                            |
| `mainInclude/`            | Reusable components like header, footer, and navbar.                       |
| `video/`                  | Contains other videos (promos, intros, etc.).                              |
| `checkout.php`            | Handles the course payment checkout process.                               |
| `contact.php`             | Contact form page for user inquiries.                                      |
| `coursedetails.php`       | Displays detailed information about a specific course.                     |
| `courses.php`             | Shows a list/grid of available courses.                                    |
| `dbConnection.php`        | Establishes connection to the MySQL database.                              |
| `index.php`               | Homepage of the E-Learning platform.                                       |
| `lms_db.sql`              | SQL file containing DB schema and sample data.                             |
| `loginorsignup.php`       | Unified page for user login and registration.                              |
| `logout.php`              | Logs the user out of the current session.                                  |
| `pageNotFound.php`        | Custom 404 error page.                                                     |
| `paymentdone.php`         | Displays payment success confirmation.                                     |
| `paymentstatus.php`       | Handles and shows the result of payment process.                           |
| `studentRegistration.php` | Backend logic to register new students.                                    |
| `README.md`               | Project documentation file.                                                |
| `.gitattributes`          | Git config file for line endings and text file handling.                   |

---

# 🧑‍💻 Installation and Setup
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

# ⚙️ How It Works
Users register or login via loginorsignup.php.
Students browse courses listed in courses.php.
Upon selecting a course, detailed content and videos are shown (coursedetails.php).
Admin manages courses, users, and payment status from the Admin panel.
User progress and payments are tracked and updated in real time.

---

# 🤝 Contributing
Contributions are always welcome!
Feel free to fork the repository and submit pull requests.
For major changes or suggestions, please open an issue first to discuss.

---

# 👨‍💻 Author
Yug Jasoliya
📧 Yugjasoliya49@gmail.com
Linkdin:https://www.linkedin.com/in/yug-jasoliya-69691126b/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app
