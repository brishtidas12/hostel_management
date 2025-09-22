# Hostel Management Database Project
Overview
This project designs and implements a relational database for a hostel management system. It models primary entities such as Hostels, Rooms, Students, Wardens, Fee Payments, and Maintenance Requests.

Database Design:
1. Hostel (Strong Entity)
Attributes: Hostel_ID (Primary Key), Hostel_Name, Capacity

2. Room (Strong Entity)
Attributes: Room_Number (Primary Key), Room_Type, Capacity

3. Student (Strong Entity)
Attributes: Student_ID (Primary Key), Name, Contact_Number, Room_Number (Foreign Key)

4. Warden (Strong Entity)
Attributes: Warden_ID (Primary Key), Name, Contact_Number

5. Fee_Payment (Weak Entity)
Attributes: Payment_ID (Primary Key), Amount, Payment_Date

5. Maintenance_Request (Weak Entity)
Attributes: Request_ID (Primary Key), Student_ID (Foreign Key), Room_Number (Foreign Key), Request_Date

The design uses primary keys for unique identification and foreign keys to maintain references between related tables.

Relationships:
1. Student assigned to Room

2. Maintenance Request linked to Student and Room

Sample Queries:
1. Retrieve all students with their assigned room details

2. List all hostels with capacity information

3. Show fee payment history

4. Get maintenance requests with student and room details

5. Fetch all wardens and their contact information

Technology Used:
MySQL Command Line Client
