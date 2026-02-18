namespace mymngt;

using {cuid} from '@sap/cds/common';

entity books :cuid{
    book_id:Int32;
    book_name:String(20);
    book_author:String(20);
}
entity  employee{
    emp_id:Int16;
    emp_name:String(20);
    emp_role:String(20);

}