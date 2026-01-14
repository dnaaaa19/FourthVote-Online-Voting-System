# FourthVote Online Voting System
**FourthVote** is a Java-based desktop application designed to provide a secure, transparent, and efficient digital election experience. Developed using **Java** for the UI and **MySQL** for robust data management, this system automates the entire election lifecycle—from voter registration to real-time result tabulation.

## Key Features

### Multi-Role Access Control
The system provides dedicated interfaces for two types of users:
* **User (Voter):** Can manage their profiles, browse active elections, and securely cast their ballots.
* **Administrator:** Has full authority to manage the system, including creating elections, updating candidate information, and monitoring user participation.

### Secure User Authentication
Each user is verified through a secure login system. The application ensures that only registered voters can access the portal, using unique identifiers to maintain security and prevent unauthorized access.

### Structured Voting Process
Voters can select their preferred candidates after completing the verification step. The system automatically validates whether the user has already voted, strictly enforcing the "one voter, one vote" principle to ensure election fairness.

### Live Vote Counting & Monitoring
The application features a real-time dashboard that displays live vote counts. This allows both users and admins to monitor election progress instantly, providing a transparent and up-to-date monitoring experience.

## Technologies Used

* **Web Technologies:** HTML, CSS, and JavaScript for a responsive user interface.
* **Database Management:** MySQL with BCNF (Boyce-Codd Normal Form) normalization to ensure data consistency.
* **System Logic:** Object-Oriented Visual Programming (OOVP) principles.
* **Security:** JDBC with PreparedStatements to prevent SQL injection and secure database transactions.
