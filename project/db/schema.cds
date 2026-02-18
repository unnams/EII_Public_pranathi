using {cuid,sap.common.CodeList} from '@sap/cds/common';
namespace wfh;
entity employees:cuid{
    emp_id:String(100);
    emp_name:String(100) ;
    emp_mail:String(100) ;
    emp_dept:String(100); 
    // @unique: [emp_name,emp_mail,emp_dep]

}
entity leave:cuid{
    emp_id:Association to employees;
    employee_name:Association to employees;
    start_date:DateTime;
    end_date:DateTime;
    emp_dep:Association to employees;//this should be equal to ID of employee entity
    type:String(100);
    status:Association to AttendanceStatus;
    Leave_status:Boolean default false;
    comments:String(500);
    // hours:Association to Attendance
}
entity Attendance:cuid{
    emp_id:Association to employees;
    emp_name:Association to employees;
    emp_mail:Association to employees;
    Date:DateTime;
    status:Association to AttendanceStatus;
    hours:Decimal(4,2);
    //@unique: [emp_name,emp_mail]
}
entity AttendanceStatus : CodeList{
  key code : String(3) enum {
    PRESENT = 'PRE';
    WFH     = 'WFH'; 
    LEAVE   = 'LEV';
    LATE    = 'LAT';
  };
  
}


