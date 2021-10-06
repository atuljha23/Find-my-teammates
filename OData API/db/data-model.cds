namespace my.hotdeskapp;

using {
    Country,
    managed
} from '@sap/cds/common';

entity Users {
    key ID     : UUID @title : 'ID';
        userName: String @title : 'Username';
        desk  :  String @title: 'Desk';
        building  : String @title: 'Building Name';
        date     : Date @title : 'Date';
}

entity UsertoDelete {
    key id      : String @title : 'ID';
}

view UserList as
    select from Users {
        key ID : String,
        userName,
        desk,
        building,
        date
    };

view UserName as
    select from Users {
            userName
    };