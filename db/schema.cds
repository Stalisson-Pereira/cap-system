namespace my.project;

using { managed } from '@sap/cds/common';

entity Customers : managed {
    key ID   : UUID;
    name     : String;
    age      : Integer;
    phone    : String;
    email    : String;
    orders   : Composition of many Orders on orders.customer = $self;
}

entity Products : managed {
    key ID          : UUID;
    name            : String;
    description     : String;
    price           : Decimal(10,2);
    quantity        : Integer;
}

entity Orders : managed {
    key ID         : UUID;
    orderDate      : Date;
    totalAmount    : Decimal(10,2);
    customer       : Association to Customers;
    items          : Composition of many OrderItems on items.order = $self;
}

entity OrderItems : managed {
    key ID        : UUID;
    quantity      : Integer;
    price         : Decimal(10,2);
    order         : Association to Orders;
    product       : Association to Products;
}