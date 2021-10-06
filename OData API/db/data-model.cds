namespace my.hotdeskapp;

using {
    Country,
    managed
} from '@sap/cds/common';

entity Users {
    key ID     : UUID;
        userName: String;
        desk  :  String;
        building  : String;
        date     : Date;
}

entity UsertoDelete {
    key id      : String;
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