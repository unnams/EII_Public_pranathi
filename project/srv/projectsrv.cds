using { wfh as w } from '../db/schema';

service myservice{
    entity employees as projection on w.employees;
    entity leave as projection on w.leave;
    entity Attendance as projection on w.Attendance;
    entity AttendanceStatus as projection on w.AttendanceStatus;
}




