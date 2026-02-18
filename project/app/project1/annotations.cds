using myservice as service from '../../srv/projectsrv';
annotate service.employees with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : emp_id,
            },
            // {
            //     $Type : 'UI.DataField',
            //     Value : title,
            // },
            {
                $Type : 'UI.DataField',
                Label : 'employee_name',
                Value : emp_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'employee_email',
                Value : emp_mail,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        // {
        //     $Type : 'UI.ReferenceFacet',
        //     ID : 'GeneratedFacet2',
        //     Label : 'General Information 2',
        //     Target : '@UI.FieldGroup#GeneratedGroup',
        // },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'employee_ID',
            Value : emp_id,
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : title,
        // },
        {
            $Type : 'UI.DataField',
            Label : 'employee_name',
            Value : emp_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'employee_email',
            Value : emp_mail,
        },
    ],
);

// annotate service.employees with @{
//      @Common.ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'employees',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : employee_ID,
//                 ValueListProperty : 'employee_ID',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'employee_ID',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'employee_name',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'employee_email',
//             },
//             // {
//             //     $Type : 'Common.ValueListParameterDisplayOnly',
//             //     ValueListProperty : 'email',
//             // },
//         ],
//     }
// };

 