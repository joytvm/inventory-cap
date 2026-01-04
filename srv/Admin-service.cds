using {inventory} from '../db/schema';

service AdminService @(requires: 'admin') {
    entity Products as projection on inventory.Products;

    // Add this line
    entity Status   as projection on inventory.Status;

    action updateStatus(status: String);
}
