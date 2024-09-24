using my.project as my from '../db/schema';

service CatalogService {
    entity Products as projection on my.Products;
    entity Customers as projection on my.Customers;
    entity Orders as projection on my.Orders;
    entity OrderItems as projection on my.OrderItems;
}