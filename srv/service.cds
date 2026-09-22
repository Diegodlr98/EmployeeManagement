using {employeemanagement.Employee,employeemanagement.Department} from '../db/schema';

service EmployeeService {

    entity Employees as projection on Employee {

            ID,
            name,
            surname,
            email,
            username,
            department,
            position,
            active,
        };

    entity Departments as projection on Department;

}
