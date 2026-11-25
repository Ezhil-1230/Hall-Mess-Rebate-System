# Hall Mess Rebate System

A Java **JSP + JDBC + MySQL** web application built to digitize hostel mess rebate submissions, student login/registration, and hall-wise administrative approvals for **Selaiyur Hall**, **St. Thomas Hall**, and **Heber Hall**.

---

## Tech Stack

- **Frontend / Views:** JavaServer Pages (JSP), HTML5, CSS3
- **Backend / Connectivity:** Java, JDBC (`java.sql.*`)
- **Database:** MySQL (`ezhil`)
- **Server / IDE:** Apache Tomcat, Eclipse Dynamic Web Project

---

## Features

- **Landing Portal (`NewFile.jsp`):** Role selection for **Student** and **Admin**.
- **Student Registration & Login (`register.jsp`, `log.jsp`):** Students register with name, contact number, hall, and room number, then sign in with name and room number.
- **Mess Rebate Submission (`debate.jsp`):** Students submit their register number, room, stay address, hall, leave start/end dates, and mobile number (recorded with `PENDING` status and application date).
- **Hall-Wise Admin Dashboards (`admin.jsp`, `selaiyur.jsp`, `heber.jsp`, `thomas.jsp`):** Hall wardens sign in to view rebate applications filtered by their hall and approve pending requests (`update.jsp`, `hupdate.jsp`, `tupdate.jsp`).

---

## Project Structure

```text
Case_Study/
├── database/
│   └── ezhil.sql                # MySQL database & 6-table schema
├── WebContent/
│   ├── WEB-INF/
│   │   ├── lib/                 # Place mysql-connector-java-*.jar here
│   │   └── web.xml              # Welcome file configured to NewFile.jsp
│   ├── images/                  # Hall & campus background images
│   ├── NewFile.jsp              # Home / role selection page
│   ├── register.jsp             # Student registration form
│   ├── register1.jsp            # Registration confirmation page
│   ├── log.jsp                  # Student login page
│   ├── debate.jsp               # Mess rebate application form
│   ├── successfull.jsp          # Submission confirmation page
│   ├── admin.jsp                # Hall admin login page
│   ├── selaiyur.jsp             # Selaiyur Hall admin dashboard
│   ├── heber.jsp                # Heber Hall admin dashboard
│   ├── thomas.jsp               # St. Thomas Hall admin dashboard
│   ├── update.jsp               # Approve action (Selaiyur)
│   ├── hupdate.jsp              # Approve action (Heber)
│   └── tupdate.jsp              # Approve action (St. Thomas)
└── src/
```

---

## Setup & How to Run

### 1. Import the MySQL Database
1. Start MySQL (e.g., via XAMPP, WAMP, or MySQL Server) on `localhost:3306`.
2. Open **phpMyAdmin** (`http://localhost/phpmyadmin`) or the MySQL CLI and import **`database/ezhil.sql`**.
   - This creates the `ezhil` database and the 6 required tables: `register`, `login`, `debate`, `sadmin`, `hadmin`, and `tadmin`.
3. Default JDBC connection configured in the JSPs:
   - **URL:** `jdbc:mysql://localhost:3306/ezhil`
   - **Username:** `root`
   - **Password:** `""` (empty)

### 2. Add the MySQL JDBC Driver
- Download `mysql-connector-java` (e.g. `mysql-connector-java-5.1.x.jar` or `mysql-connector-j-8.x.jar`) and place it inside:
  `WebContent/WEB-INF/lib/`
  *(or Tomcat's `lib/` directory)*.

### 3. Deploy & Run on Apache Tomcat
1. Import `Case_Study` into **Eclipse IDE for Enterprise Java Developers** (**File → Import → Existing Projects into Workspace**).
2. Configure **Apache Tomcat** as the target server runtime.
3. Right-click the project → **Run As → Run on Server**.
4. Open **`http://localhost:8080/Case_Study/`** (automatically routes to `NewFile.jsp`).

---

## Hall Admin Credentials

| Hall | Username | Password |
|---|---|---|
| Selaiyur Hall | `selaiyur` | `selaiyur` |
| Heber Hall | `heber` | `heber` |
| St. Thomas Hall | `thomas` | `thomas` |
