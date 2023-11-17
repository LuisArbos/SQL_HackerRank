/*

New Companies

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

FOUNDER -> LEAD MANAGER -> SENIOR MANAGER ->  MANAGER -> EMPLOYEE

 Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

    The tables may contain duplicate records.
    The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

The following tables contain company data:

COMPANY TABLE: 

COLUMN		TYPE
 company_code	 STRING
 founder	 STRING

LEAD MANAGER TABLE:

COLUMN			TYPE
 company_code	 	 STRING
 lead_manager_code	 STRING

SENIOR MANAGER TABLE:

COLUMN			TYPE
 company_code	 	 STRING
 senior_manager_code	 STRING
 lead_manager_code	 STRING

MANAGER TABLE:

COLUMN			TYPE
 manager_code		 STRING
 company_code	 	 STRING
 senior_manager_code	 STRING
 lead_manager_code	 STRING

EMPOLOYEE TABLE:

COLUMN			TYPE
 employee_code 		 STRING
 manager_code		 STRING
 company_code	 	 STRING
 senior_manager_code	 STRING
 lead_manager_code	 STRING

*/

/* MYSQL SUBMISSION */

SELECT COMPANY.COMPANY_CODE, COMPANY.FOUNDER, COUNT(DISTINCT EMPLOYEE.LEAD_MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.SENIOR_MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.EMPLOYEE_CODE) FROM COMPANY INNER JOIN EMPLOYEE ON COMPANY.COMPANY_CODE = EMPLOYEE.COMPANY_CODE GROUP BY COMPANY.COMPANY_CODE, COMPANY.FOUNDER ORDER BY COMPANY.COMPANY_CODE ASC

/* MS SQL SERVER */

SELECT COMPANY.COMPANY_CODE, COMPANY.FOUNDER, COUNT(DISTINCT EMPLOYEE.LEAD_MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.SENIOR_MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.MANAGER_CODE), COUNT(DISTINCT EMPLOYEE.EMPLOYEE_CODE) FROM COMPANY INNER JOIN EMPLOYEE ON COMPANY.COMPANY_CODE = EMPLOYEE.COMPANY_CODE GROUP BY COMPANY.COMPANY_CODE, COMPANY.FOUNDER ORDER BY COMPANY.COMPANY_CODE ASC;
