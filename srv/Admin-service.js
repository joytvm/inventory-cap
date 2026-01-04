/* const cds = require('@sap/cds');

class AdminService extends cds.ApplicationService {
    init() {

        /* const { Products, Status } = this.entities;
        this.Products = Products;
        this.Status = Status;

        this.before('READ', Status, req => {
            // ⭐ Allow value help calls to pass through
            if (req.query.SELECT?.columns?.some(c => c.ref?.includes('name'))) {
                return;  // skip auth check for value help
            }
        });

        // Proper CREATE handler (draft + value help friendly)
        this.on('CREATE', Products, req => {
            const { name, quantity, price, imageUrl, description } = req.data || {};

            if (!name || quantity == null || !price) {
                req.error(400, 'Missing required fields');
            }

            const status_code =
                quantity > 10 ? 'I' :
                    quantity > 0 ? 'L' :
                        'O';

            return cds.tx(req).run(
                INSERT.into(Products).entries({ name, quantity, price, status_code, imageUrl, description })
            );
        });

        // Custom action to update status
        this.on('updateStatus', req => {
            const { status } = req.data || {};
            const productID = req.params?.[0];

            if (!status) req.error(400, 'Status is required');

            const valid = ['I', 'L', 'O'];
            if (!valid.includes(status)) {
                req.error(400, 'Invalid status');
            }

            return cds.tx(req).run(
                UPDATE(Products).set({ status_code: status }).where({ ID: productID })
            ).then(() => ({ message: 'Status Updated Successfully' }));
        }); */

/*        return super.init();
    }
}

module.exports = AdminService; */