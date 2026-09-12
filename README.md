# Restaurant Management System

[![Java](https://img.shields.io/badge/Java-8-007396.svg?logo=openjdk&logoColor=white)](https://www.oracle.com/java/)
[![Java Swing](https://img.shields.io/badge/Java%20Swing-GUI-ED8B00.svg?logo=java&logoColor=white)](https://docs.oracle.com/javase/tutorial/uiswing/)
[![NetBeans](https://img.shields.io/badge/NetBeans-IDE-1B6AC6.svg?logo=apache-netbeans&logoColor=white)](https://netbeans.apache.org/)
[![MySQL JDBC](https://img.shields.io/badge/MySQL%20JDBC-8.0.30-4479A1.svg?logo=mysql&logoColor=white)](https://dev.mysql.com/doc/connector-j/en/)
[![Status](https://img.shields.io/badge/Status-Internship%20Project-success.svg)](#)

A Java Swing desktop application for managing restaurant operations such as customer login, food ordering, reservations, staff management, billing, and sales reporting.

This project is implemented using Java, Swing UI forms, NetBeans GUI Builder, and a MySQL database connection through JDBC.

## Project Overview

The Restaurant Management System (RMS) is designed to support daily restaurant workflows in a simple desktop environment. It allows employees or administrators to:

- Create and use a user account
- Log in securely
- View and manage food items
- Place customer orders
- Reserve tables
- Track staff and billing information
- Generate total sales and bill records

## Features

- User authentication with login and account creation
- Food menu interface for browsing and managing menu items
- Table and reservation management for restaurant bookings
- Order and billing screens for restaurant transactions
- Sales and bill totals views for recorded orders
- Printable bill and receipt generation through the Java print system
- Java Swing-based desktop GUI
- JDBC connection to a MySQL database

## Tech Stack

- Java SE
- Java Swing / NetBeans GUI Forms
- MySQL database
- JDBC

## Project Structure

```text
rms/
├── src/
│   ├── dbconnect/
│   │   └── dbconnect.java
│   └── rms/
│       ├── login.java
│       ├── registerform.java
│       ├── afterlog.java
│       ├── food.java
│       ├── order.java
│       ├── reserved.java
│       ├── bill.java
│       ├── stuff.java
│       ├── total.java
│       └── totalsales.java
├── build.xml
├── manifest.mf
└── orders.txt
```

## Database Configuration

The project uses a JDBC connection declared in the Java file:

```java
src/dbconnect/dbconnect.java
```

The source code connects to the local MySQL instance with:

```java
jdbc:mysql://localhost:3306/rms
username: root
password: toor
```

Before running the application, make sure:

1. MySQL is installed and running locally.
2. A database named `rms` exists.
3. The required tables are created in the database.
4. The JDBC driver for MySQL is available in the Java project classpath.

The repository also includes a Docker Compose service and an initialization schema file for matching that database setup:

```yaml
docker-compose.yml
```

```sql
init.sql
```

The initialization file is structured around the table names used by the codebase:

```sql
regis
food
tableee
roles
sale
allsale
cash
```

If your local MySQL credentials differ from the repository defaults, update the database connection details in the Java source file before running the project.

## Prerequisites

To run this project successfully, install the following:

- JDK 8 or higher
- NetBeans IDE or another Java IDE
- MySQL Server or Docker
- MySQL JDBC driver

## How to Run

This project is configured as a NetBeans Java Swing project and the main class is `rms.login`.

### Option 1: Using NetBeans

1. Open the project folder in NetBeans IDE.
2. Open the project from the workspace root.
3. Build the project from NetBeans.
4. Run the project using the configured main class `rms.login`.


## Main Application Flow

1. Launch the application.
2. Sign in through the login screen.
3. Create or use a staff/customer account if needed.
4. Navigate through the restaurant dashboard.
5. Manage food items, orders, billing, reservations, and total sales.

## Project Screens

The application includes a series of Swing forms for:

- Login screen
- Registration / account creation
- Main dashboard after login
- Food menu screen
- Orders and table reservation screens
- Billing and totals screens
- Staff management screen
- Total sales report screen

## Future Improvements

Potential improvements for this project include:

- Adding a modern web-based frontend
- Introducing role-based access control
- Improving payment and invoice handling
- Adding product stock management
- Adding data validation and error handling
- Enhancing bill generation with print/export improvements
- Replacing hard-coded JDBC credentials with environment configuration

> *This project is a demo desktop application created as part of an internship or learning exercise, and there are many opportunities to expand and improve it further.*

## License

This project is provided as a learning or academic project. No license has been specified.