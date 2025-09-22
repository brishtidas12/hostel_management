# Hostel Management Database Project
Overview
This project designs and implements a relational database for a hostel management system. It models primary entities such as Hostels, Rooms, Students, Wardens, Fee Payments, and Maintenance Requests.

Database Design:
Hostel (Strong Entity)
Attributes: Hostel_ID (Primary Key), Hostel_Name, Capacity

Room (Strong Entity)
Attributes: Room_Number (Primary Key), Room_Type, Capacity

Student (Strong Entity)
Attributes: Student_ID (Primary Key), Name, Contact_Number, Room_Number (Foreign Key)

Warden (Strong Entity)
Attributes: Warden_ID (Primary Key), Name, Contact_Number

Fee_Payment (Weak Entity)
Attributes: Payment_ID (Primary Key), Amount, Payment_Date

Maintenance_Request (Weak Entity)
Attributes: Request_ID (Primary Key), Student_ID (Foreign Key), Room_Number (Foreign Key), Request_Date

The design uses primary keys for unique identification and foreign keys to maintain references between related tables.

Relationships:
Student assigned to Room

Maintenance Request linked to Student and Room

Sample Queries:
Retrieve all students with their assigned room details

List all hostels with capacity information

Show fee payment history

Get maintenance requests with student and room details

Fetch all wardens and their contact information

Technology Used:
MySQL Command Line Client
