using my.hotdeskapp as my from '../db/data-model';

service CatalogService {
    entity Users as projection on my.Users;
    entity UsertoDelete as projection on my.UsertoDelete;
    @readonly view UserList as select from my.UserList;
     @readonly view UserName as select from my.UserName;
}