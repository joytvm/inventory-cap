using {inventory} from '../../srv/Admin-service';

annotate inventory.Products with  @odata.draft.enabled  @(
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
            $Type : 'UI.DataFieldForAction',
            Action: 'AdminService.updateStatus',
            Label : 'Update Status'
        }
    ],
    UI.Facets                  : [{
        $Type : 'UI.CollectionFacet',
        ID    : 'Overview',
        Label : 'Inventory Overview',
        Facets: [
            {
                $Type : 'UI.ReferenceFacet',
                ID    : 'GeneralFacet',
                Label : 'General Overview',
                Target: '@UI.FieldGroup#GeneralGroup'
            },
            {
                $Type : 'UI.ReferenceFacet',
                ID    : 'StatusFacet',
                Label : 'Inventory Status',
                Target: '@UI.FieldGroup#StatusGroup'
            }
        ]
    }],
    UI.FieldGroup #GeneralGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                Value: description,
                Label: 'Description'
            },
            {
                Value: imageURL,
                Label: 'Image'
            }
        ]
    },
    UI.FieldGroup #StatusGroup : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                Value: quantity,
                Label: 'quantity'
            },
            {
                $Type : 'UI.DataField',
                Value      : status.name,
                Label      : 'Status',
                Criticality: status.criticality
            }
        ]
    }
);

annotate inventory.Products with @(UI.HeaderInfo: {
    Title         : {
        $Type: 'UI.DataField',
        Label: 'Product Name',
        Value: name
    },
    TypeName      : '',
    TypeNamePlural: 'Inventory',
    TypeImageUrl  : imageURL
});

// Selecton Field
annotate inventory.Products with @(UI.SelectionFields: [status_code]);

annotate inventory.Products with {
    status @Common.Label: 'Stock Status'
};

annotate inventory.Products with {
    status @Common.ValueListWithFixedValues: true
};

annotate inventory.Status with {
    code @Common.Text: name
};

annotate inventory.Products with {
    status @Common.Text: status.name
};

