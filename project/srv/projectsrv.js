const cds = require('@sap/cds');
const { expand, SELECT } = require('@sap/cds/lib/ql/cds-ql');

module.exports = class myservice extends cds.ApplicationService { init() {

  const { employees, leave, Attendance, AttendaceStatus} = cds.entities('myservice')

this.before(['CREATE','UPDATE'],leave,req=>{
    if(req.data.status_code === 'WFH' && req.data.hours < 4)
      req.error(400,"WFH hours must be at least 4")
  }); 
// this.on(['READ'],leave,async(req)=>{
//   const today = await cds.tx(req).run(SELECT.from(leave).columns('end_date',{ref:['emp_dep'],expand:[{ref:['ID']},{ref:['emp_name']},{ref:['emp_mail']},{ref:['emp_dept']}]}))
//  return  today;
// });



  // this.before (['CREATE', 'UPDATE'], employees, async (req) => {
  //   console.log('Before CREATE/UPDATE employees', req.data)
  // })
  // this.after ('READ', employees, async (employees, req) => {
  //   console.log('After READ employees', employees)
  // })
  // this.before (['CREATE', 'UPDATE'], leave, async (req) => {
  //   console.log('Before CREATE/UPDATE leave', req.data)
  // })
  // this.after ('READ', leave, async (leave, req) => {
  //   console.log('After READ leave', leave)
  // })
  // this.before (['CREATE', 'UPDATE'], Attendance, async (req) => {
  //   console.log('Before CREATE/UPDATE Attendance', req.data)
  // })
  // this.after ('READ', Attendance, async (attendance, req) => {
  //   console.log('After READ Attendance', attendance)
  // })


   return super.init()
}}
