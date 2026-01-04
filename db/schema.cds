namespace inventory;

using {
    managed,
    cuid,
    sap.common.CodeList
} from '@sap/cds/common';

define entity Products : managed, cuid {
    name        : String;
    quantity    : Integer;
    price       : Decimal;
    status      : Association to Status;
    imageURL    : String;
    description : String;
}

entity Status : CodeList {
    key code        : String enum {
            OutOfStock = 'O';
            InStock = 'I';
            LowStock = 'L'
        };
        criticality : Integer;
}
