using my.hotdeskapp as my from '../db/data-model';

service CatalogService {
    entity Users as projection on my.Users;
    entity UsertoDelete as projection on my.UsertoDelete;
    @readonly view UserList as select from my.UserList;
     @readonly view UserName as select from my.UserName;
}

annotate CatalogService.Users with @(UI : {
    HeaderInfo       : {
        TypeName       : 'User',
        TypeNamePlural : 'Users',
        Title          : {Value : ID},
        Description    : {Value : userName}
    },
    SelectionFields  : [
        userName,
        desk,
        building,
        date
    ],
    LineItem         : [
        {Value : userName},
        {Value : desk},
        {Value : building},
        {Value : date}
    ],
    Facets           : [{
        $Type  : 'UI.CollectionFacet',
        Label  : 'user Info',
        Facets : [{
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Main',
            Label  : 'Main Facet'
        }]
    }],
    FieldGroup #Main : {Data : [
        {Value : userName},
        {Value : building},
        {Value : desk},
        {Value : date}
    ]}
});