# AWS Project


This project aims at providing the full-stack application development experience by implementing the frontend application using Angular 2 or higher version, and the backend portion of the application using RESTful Web Services, and JDBC or JPA. The backend implementation can be done using Spring Boot platform.

The application allows prospective students to fill out a survey form to provide feedback about their campus visit. It also allows users to view all surveys recorded to date. The application starts with a welcome homepage, which in essence has two links: Student Survey and List All Surveys. The Student Survey link allows a prospective student to fill out a survey form with an acknowledgement. When the user clicks the submit button, the angular application should invoke a RESTful call which in turn uses JDBC or JPA to store the data in the data base. List All Surveys link allows a user to view all surveys done to date. Here is a revised version of the student survey form that you can use for this effort.

In particular, the student survey form contains the following:
o Text boxes for first name, last name, street address, city, state, zip, telephone number, e-mail, and date of survey, which are required fields.

o Checkboxes that allow prospective students to indicate what they liked most about the campus. The checkboxes should include students, location, campus,
atmosphere, dorm rooms, and sports.

o Radio buttons that allow the prospective students to indicate how they became interested in the university. Options include friends, television, Internet, and other.

o A dropdown list of options for the user to select the likelihood of him/her recommending this school to other prospective students. The three options of the dropdown list are: Very Likely, Likely, Unlikely.

o A text area for additional comments, and

o Submit and cancel buttons
