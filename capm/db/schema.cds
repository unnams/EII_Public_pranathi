namespace incidentmngt.db;
using {cuid} from '@sap/cds/common';

entity Incident: cuid{
    case_id :String(20);
    case_desc:String(20);
    case_handled_by:String(20);
    SLA:DateTime;

}
entity Agent: cuid{
    emp_id:String(5);
    first_name:String(10);
    last_name:String(10);
    team:String(10);
    role:String(10);
    dob:Date;

}