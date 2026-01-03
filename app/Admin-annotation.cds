using {inventory} from '../srv/Admin-service';

annotate inventory.Products with @odata.draft.enabled @(
    UI.LineItem                : [
        {
            Label: 'Product',
            Value: name
        },
        {
            Label: 'Quantity',
            Value: quantity
        },
        {
            Label: 'Price',
            Value: price
        },
        {
            Label      : 'Status',
            Value      : status.name,
            Criticality: status.criticality,
        },
        {
            $Type: 'UI.DataFieldForAction',
            Action: 'AdminService.updateStatus',
            Label: 'Update Status'
        }
    ],

    UI.Facets                  : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneralFacet',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneralGroup'
    }],

    UI.FieldGroup #GeneralGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            { Value: description, Label: 'Description' },
            { Value: imageURL, Label: 'Image' },
            { Value: name, Label: 'Product Name'}
        ]
    }
);
