# <div align="center">  Relational Database for Improved Patient Care and Reduced Exposure Risk </div>
###	The goal of this project is to create a solution to reduce COVID-19 exposure at hospitals and minimize disease transmission to and between medical professionals. This database provides medical staff with access to up-to-date, accurate patient information such as admission dates, symptoms, treatments, and the assigned medical professional.

###### *Note: The story and characters in this project are not based on real people or events. Any resemblance to real people or events is purely coincidental.*
----------------------------------------------------------------------------------
###	<div align="center">Installing Dependencies   </div> 
*	MySQL Workbench >= 8.0.
*	Scripts included in the **[SQL Folder](https://github.com/HmSalah/COVID_case_tracker/tree/main/SQL)**.
###	<div align="center"> Download and Setup  </div> 
1.	Database Creation
	*	From MySQL Workbench open the **create_db_hospital.sql** script.
	*	Execute the script.
	
2.	Patient Information
	*	From MySQL Workbench open the **patient_information.sql** script.
	*	Execute the script.
	
3.	Stored procedures and views
	*	From MySQL Workbench open the **stored_procedures_views.sql** script.
	*	Execute the script.
 	* 	Using MYSQL To verify if the sql_mode=only_full_group_by is activated for, you should execute the following query:
		
  		>**SELECT @@sql_mode;   //localhost**
	 	* Output: IGNORE_SPACE, STRICT_TRANS, ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION (If you don't see it, it means it is deactivated)
	* 	To Fix this to avoid any errors type in:

   		>**SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));**
-----------------------------------------------------------------------------------	
##	<div align="center"> Database Modeling Process </div> 	 ##
1.	**[Requirements Gathering](https://github.com/HmSalah/COVID_case_tracker/blob/main/README.md#-user-requirements-)**
	*	Created a [Statement of Requirements](https://github.com/HmSalah/COVID_case_tracker/blob/main/README.md#--1--statement-of-requirements) by summarizing [user requirements](https://github.com/HmSalah/sql_hospital_database/blob/main/README.md#-user-requirements-). 
	
2.	**[Building a Conceptual Model](https://github.com/HmSalah/COVID_case_tracker/blob/main/README.md#-2--conceptual-model-)**
  	*	Provided a high-level overview of the hospital domain and the things involved in this domain.
	
3.	**[Building a Logical - Physical Model](https://github.com/HmSalah/COVID_case_tracker/blob/main/README.md#-3--logicalphysical-mysql-model-erd-)**
	*	Using MySQL, I created a Logical Model by defining the entities and relationships.
	*	Inserted primary keys and foreign keys.
     	*	Specify the data type for each attribute.
     	*	Guaranteed flexibility for future change, applied Normalization (1NF,2NF,3NF) forms to prevent data duplication.
