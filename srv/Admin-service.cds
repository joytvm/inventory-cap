using {inventory} from '../db/schema';

service AdminService @(requires: 'admin') {
    entity Products as projection on inventory.Products;
}
