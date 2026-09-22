namespace employeemanagement;

using { cuid } from '@sap/cds/common';

/*
 * Employee Management data model
 */

entity Department : cuid {
    name: String(100) @mandatory;
    location: String(100) @mandatory;    
}
 
entity Employee : cuid {
    name: String(100) @mandatory;
    surname: String(100) @mandatory;
    email: String(100) @mandatory;
    username: String(100) @mandatory;
    password: String(100) @mandatory;
    department: Association to Department @mandatory;
    position: String(100) @mandatory;
    active: Boolean default true @mandatory;
}