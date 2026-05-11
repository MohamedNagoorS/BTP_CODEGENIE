using J62AssetService from '../../../../srv/service';

annotate J62AssetService.AssetMaster with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ID,
      Label : 'Asset ID'
    },
    {
      $Type : 'UI.DataField',
      Value : AssetClass,
      Label : 'Asset Class'
    },
    {
      $Type : 'UI.DataField',
      Value : Description,
      Label : 'Description'
    },
    {
      $Type : 'UI.DataField',
      Value : CompanyCode,
      Label : 'Company Code'
    },
    {
      $Type : 'UI.DataField',
      Value : CostCenter,
      Label : 'Cost Center'
    },
    {
      $Type : 'UI.DataField',
      Value : CapitalizedOn,
      Label : 'Capitalized On'
    }
  ],
  UI.FieldGroup #GeneralInformation : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'Asset ID'
      },
      {
        $Type : 'UI.DataField',
        Value : AssetClass,
        Label : 'Asset Class'
      },
      {
        $Type : 'UI.DataField',
        Value : Description,
        Label : 'Description'
      },
      {
        $Type : 'UI.DataField',
        Value : CompanyCode,
        Label : 'Company Code'
      },
      {
        $Type : 'UI.DataField',
        Value : CostCenter,
        Label : 'Cost Center'
      },
      {
        $Type : 'UI.DataField',
        Value : CapitalizedOn,
        Label : 'Capitalized On'
      },
      {
        $Type : 'UI.DataField',
        Value : ref_PurchaseRequisitionID,
        Label : 'Purchase Requisition ID'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'GeneralInformationFacet',
      Label : 'General Information',
      Target : '@UI.FieldGroup#GeneralInformation'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'PurchaseRequisitionFacet',
      Label : 'Purchase Requisition Details',
      Target : 'toPurchaseRequisition/@UI.FieldGroup#Details'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Asset Master',
    TypeNamePlural : 'Asset Masters',
    Title : {
      $Type : 'UI.DataField',
      Value : Description
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ID
    }
  },
  UI.SelectionFields : [
    ID,
    AssetClass,
    CompanyCode,
    CostCenter
  ]
);

annotate J62AssetService.PurchaseRequisition with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ID,
      Label : 'PR ID'
    },
    {
      $Type : 'UI.DataField',
      Value : ShortText,
      Label : 'Short Text'
    },
    {
      $Type : 'UI.DataField',
      Value : Quantity,
      Label : 'Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitOfMeasure,
      Label : 'Unit'
    },
    {
      $Type : 'UI.DataField',
      Value : ValuationPrice,
      Label : 'Valuation Price'
    }
  ],
  UI.FieldGroup #Details : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'PR ID'
      },
      {
        $Type : 'UI.DataField',
        Value : AccountAssignmentCategory,
        Label : 'Account Assignment Category'
      },
      {
        $Type : 'UI.DataField',
        Value : ShortText,
        Label : 'Short Text'
      },
      {
        $Type : 'UI.DataField',
        Value : Quantity,
        Label : 'Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitOfMeasure,
        Label : 'Unit of Measure'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialGroup,
        Label : 'Material Group'
      },
      {
        $Type : 'UI.DataField',
        Value : Plant,
        Label : 'Plant'
      },
      {
        $Type : 'UI.DataField',
        Value : ValuationPrice,
        Label : 'Valuation Price'
      },
      {
        $Type : 'UI.DataField',
        Value : ref_PurchaseOrderID,
        Label : 'Purchase Order ID'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'PRDetailsFacet',
      Label : 'Purchase Requisition Details',
      Target : '@UI.FieldGroup#Details'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'PRItemsFacet',
      Label : 'Purchase Requisition Items',
      Target : 'items/@UI.LineItem'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'PurchaseOrderFacet',
      Label : 'Purchase Order Details',
      Target : 'toPurchaseOrder/@UI.FieldGroup#Details'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Purchase Requisition',
    TypeNamePlural : 'Purchase Requisitions',
    Title : {
      $Type : 'UI.DataField',
      Value : ShortText
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ID
    }
  },
  UI.SelectionFields : [
    ID,
    ShortText,
    MaterialGroup,
    Plant
  ]
);

annotate J62AssetService.PurchaseRequisitionItem with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ItemNumber,
      Label : 'Item'
    },
    {
      $Type : 'UI.DataField',
      Value : Material,
      Label : 'Material'
    },
    {
      $Type : 'UI.DataField',
      Value : MaterialDescription,
      Label : 'Description'
    },
    {
      $Type : 'UI.DataField',
      Value : Quantity,
      Label : 'Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitOfMeasure,
      Label : 'Unit'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitPrice,
      Label : 'Unit Price'
    },
    {
      $Type : 'UI.DataField',
      Value : TotalAmount,
      Label : 'Total Amount'
    },
    {
      $Type : 'UI.DataField',
      Value : DeliveryDate,
      Label : 'Delivery Date'
    }
  ],
  UI.FieldGroup #ItemDetails : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ItemNumber,
        Label : 'Item Number'
      },
      {
        $Type : 'UI.DataField',
        Value : Material,
        Label : 'Material'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialDescription,
        Label : 'Material Description'
      },
      {
        $Type : 'UI.DataField',
        Value : Quantity,
        Label : 'Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitOfMeasure,
        Label : 'Unit of Measure'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitPrice,
        Label : 'Unit Price'
      },
      {
        $Type : 'UI.DataField',
        Value : TotalAmount,
        Label : 'Total Amount'
      },
      {
        $Type : 'UI.DataField',
        Value : DeliveryDate,
        Label : 'Delivery Date'
      },
      {
        $Type : 'UI.DataField',
        Value : AccountAssignmentCategory,
        Label : 'Account Assignment Category'
      },
      {
        $Type : 'UI.DataField',
        Value : Plant,
        Label : 'Plant'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'ItemDetailsFacet',
      Label : 'Item Details',
      Target : '@UI.FieldGroup#ItemDetails'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'PR Item',
    TypeNamePlural : 'PR Items',
    Title : {
      $Type : 'UI.DataField',
      Value : Material
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ItemNumber
    }
  }
);

annotate J62AssetService.PurchaseOrder with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ID,
      Label : 'PO ID'
    },
    {
      $Type : 'UI.DataField',
      Value : PurchaseOrderType,
      Label : 'PO Type'
    },
    {
      $Type : 'UI.DataField',
      Value : Supplier,
      Label : 'Supplier'
    },
    {
      $Type : 'UI.DataField',
      Value : OrderQuantity,
      Label : 'Order Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : NetPrice,
      Label : 'Net Price'
    }
  ],
  UI.FieldGroup #Details : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'PO ID'
      },
      {
        $Type : 'UI.DataField',
        Value : PurchaseOrderType,
        Label : 'Purchase Order Type'
      },
      {
        $Type : 'UI.DataField',
        Value : Supplier,
        Label : 'Supplier'
      },
      {
        $Type : 'UI.DataField',
        Value : OrderQuantity,
        Label : 'Order Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : NetPrice,
        Label : 'Net Price'
      },
      {
        $Type : 'UI.DataField',
        Value : ref_GoodsReceiptID,
        Label : 'Goods Receipt ID'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'PODetailsFacet',
      Label : 'Purchase Order Details',
      Target : '@UI.FieldGroup#Details'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'POItemsFacet',
      Label : 'Purchase Order Items',
      Target : 'items/@UI.LineItem'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'GoodsReceiptFacet',
      Label : 'Goods Receipt Details',
      Target : 'toGoodsReceipt/@UI.FieldGroup#Details'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Purchase Order',
    TypeNamePlural : 'Purchase Orders',
    Title : {
      $Type : 'UI.DataField',
      Value : Supplier
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ID
    }
  },
  UI.SelectionFields : [
    ID,
    PurchaseOrderType,
    Supplier
  ]
);

annotate J62AssetService.PurchaseOrderItem with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ItemNumber,
      Label : 'Item'
    },
    {
      $Type : 'UI.DataField',
      Value : Material,
      Label : 'Material'
    },
    {
      $Type : 'UI.DataField',
      Value : MaterialDescription,
      Label : 'Description'
    },
    {
      $Type : 'UI.DataField',
      Value : OrderQuantity,
      Label : 'Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitOfMeasure,
      Label : 'Unit'
    },
    {
      $Type : 'UI.DataField',
      Value : NetPrice,
      Label : 'Net Price'
    },
    {
      $Type : 'UI.DataField',
      Value : TotalAmount,
      Label : 'Total Amount'
    },
    {
      $Type : 'UI.DataField',
      Value : DeliveryDate,
      Label : 'Delivery Date'
    }
  ],
  UI.FieldGroup #ItemDetails : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ItemNumber,
        Label : 'Item Number'
      },
      {
        $Type : 'UI.DataField',
        Value : Material,
        Label : 'Material'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialDescription,
        Label : 'Material Description'
      },
      {
        $Type : 'UI.DataField',
        Value : OrderQuantity,
        Label : 'Order Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitOfMeasure,
        Label : 'Unit of Measure'
      },
      {
        $Type : 'UI.DataField',
        Value : NetPrice,
        Label : 'Net Price'
      },
      {
        $Type : 'UI.DataField',
        Value : TotalAmount,
        Label : 'Total Amount'
      },
      {
        $Type : 'UI.DataField',
        Value : DeliveryDate,
        Label : 'Delivery Date'
      },
      {
        $Type : 'UI.DataField',
        Value : Plant,
        Label : 'Plant'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'ItemDetailsFacet',
      Label : 'Item Details',
      Target : '@UI.FieldGroup#ItemDetails'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'PO Item',
    TypeNamePlural : 'PO Items',
    Title : {
      $Type : 'UI.DataField',
      Value : Material
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ItemNumber
    }
  }
);

annotate J62AssetService.GoodsReceipt with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ID,
      Label : 'GR ID'
    },
    {
      $Type : 'UI.DataField',
      Value : MaterialDocument,
      Label : 'Material Document'
    },
    {
      $Type : 'UI.DataField',
      Value : PostingDate,
      Label : 'Posting Date'
    }
  ],
  UI.FieldGroup #Details : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'GR ID'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialDocument,
        Label : 'Material Document'
      },
      {
        $Type : 'UI.DataField',
        Value : PostingDate,
        Label : 'Posting Date'
      },
      {
        $Type : 'UI.DataField',
        Value : ref_InvoiceID,
        Label : 'Invoice ID'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'GRDetailsFacet',
      Label : 'Goods Receipt Details',
      Target : '@UI.FieldGroup#Details'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'GRItemsFacet',
      Label : 'Goods Receipt Items',
      Target : 'items/@UI.LineItem'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'InvoiceFacet',
      Label : 'Invoice Details',
      Target : 'toInvoice/@UI.FieldGroup#Details'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Goods Receipt',
    TypeNamePlural : 'Goods Receipts',
    Title : {
      $Type : 'UI.DataField',
      Value : MaterialDocument
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ID
    }
  },
  UI.SelectionFields : [
    ID,
    MaterialDocument,
    PostingDate
  ]
);

annotate J62AssetService.GoodsReceiptItem with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ItemNumber,
      Label : 'Item'
    },
    {
      $Type : 'UI.DataField',
      Value : Material,
      Label : 'Material'
    },
    {
      $Type : 'UI.DataField',
      Value : MaterialDescription,
      Label : 'Description'
    },
    {
      $Type : 'UI.DataField',
      Value : Quantity,
      Label : 'Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitOfMeasure,
      Label : 'Unit'
    },
    {
      $Type : 'UI.DataField',
      Value : StorageLocation,
      Label : 'Storage Location'
    },
    {
      $Type : 'UI.DataField',
      Value : Batch,
      Label : 'Batch'
    },
    {
      $Type : 'UI.DataField',
      Value : Plant,
      Label : 'Plant'
    }
  ],
  UI.FieldGroup #ItemDetails : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ItemNumber,
        Label : 'Item Number'
      },
      {
        $Type : 'UI.DataField',
        Value : Material,
        Label : 'Material'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialDescription,
        Label : 'Material Description'
      },
      {
        $Type : 'UI.DataField',
        Value : Quantity,
        Label : 'Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitOfMeasure,
        Label : 'Unit of Measure'
      },
      {
        $Type : 'UI.DataField',
        Value : StorageLocation,
        Label : 'Storage Location'
      },
      {
        $Type : 'UI.DataField',
        Value : Batch,
        Label : 'Batch'
      },
      {
        $Type : 'UI.DataField',
        Value : Plant,
        Label : 'Plant'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'ItemDetailsFacet',
      Label : 'Item Details',
      Target : '@UI.FieldGroup#ItemDetails'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'GR Item',
    TypeNamePlural : 'GR Items',
    Title : {
      $Type : 'UI.DataField',
      Value : Material
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ItemNumber
    }
  }
);

annotate J62AssetService.Invoice with @(
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ID,
      Label : 'Invoice ID'
    },
    {
      $Type : 'UI.DataField',
      Value : SupplierInvoiceNumber,
      Label : 'Supplier Invoice Number'
    },
    {
      $Type : 'UI.DataField',
      Value : FiscalYear,
      Label : 'Fiscal Year'
    },
    {
      $Type : 'UI.DataField',
      Value : GrossAmount,
      Label : 'Gross Amount'
    },
    {
      $Type : 'UI.DataField',
      Value : TaxCode,
      Label : 'Tax Code'
    }
  ],
  UI.FieldGroup #Details : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ID,
        Label : 'Invoice ID'
      },
      {
        $Type : 'UI.DataField',
        Value : SupplierInvoiceNumber,
        Label : 'Supplier Invoice Number'
      },
      {
        $Type : 'UI.DataField',
        Value : FiscalYear,
        Label : 'Fiscal Year'
      },
      {
        $Type : 'UI.DataField',
        Value : GrossAmount,
        Label : 'Gross Amount'
      },
      {
        $Type : 'UI.DataField',
        Value : TaxCode,
        Label : 'Tax Code'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'InvoiceDetailsFacet',
      Label : 'Invoice Details',
      Target : '@UI.FieldGroup#Details'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'InvoiceItemsFacet',
      Label : 'Invoice Items',
      Target : 'items/@UI.LineItem'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Invoice',
    TypeNamePlural : 'Invoices',
    Title : {
      $Type : 'UI.DataField',
      Value : SupplierInvoiceNumber
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ID
    }
  },
  UI.SelectionFields : [
    ID,
    SupplierInvoiceNumber,
    FiscalYear
  ]
);

annotate J62AssetService.InvoiceItem with @(
  Capabilities : {
    InsertRestrictions : {Insertable : true},
    UpdateRestrictions : {Updatable : true},
    DeleteRestrictions : {Deletable : true}
  },
  UI.LineItem : [
    {
      $Type : 'UI.DataField',
      Value : ItemNumber,
      Label : 'Item'
    },
    {
      $Type : 'UI.DataField',
      Value : Material,
      Label : 'Material'
    },
    {
      $Type : 'UI.DataField',
      Value : MaterialDescription,
      Label : 'Description'
    },
    {
      $Type : 'UI.DataField',
      Value : Quantity,
      Label : 'Quantity'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitOfMeasure,
      Label : 'Unit'
    },
    {
      $Type : 'UI.DataField',
      Value : UnitPrice,
      Label : 'Unit Price'
    },
    {
      $Type : 'UI.DataField',
      Value : NetAmount,
      Label : 'Net Amount'
    },
    {
      $Type : 'UI.DataField',
      Value : TaxAmount,
      Label : 'Tax Amount'
    },
    {
      $Type : 'UI.DataField',
      Value : GrossAmount,
      Label : 'Gross Amount'
    }
  ],
  UI.FieldGroup #ItemDetails : {
    $Type : 'UI.FieldGroupType',
    Data : [
      {
        $Type : 'UI.DataField',
        Value : ItemNumber,
        Label : 'Item Number'
      },
      {
        $Type : 'UI.DataField',
        Value : Material,
        Label : 'Material'
      },
      {
        $Type : 'UI.DataField',
        Value : MaterialDescription,
        Label : 'Material Description'
      },
      {
        $Type : 'UI.DataField',
        Value : Quantity,
        Label : 'Quantity'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitOfMeasure,
        Label : 'Unit of Measure'
      },
      {
        $Type : 'UI.DataField',
        Value : UnitPrice,
        Label : 'Unit Price'
      },
      {
        $Type : 'UI.DataField',
        Value : NetAmount,
        Label : 'Net Amount'
      },
      {
        $Type : 'UI.DataField',
        Value : TaxAmount,
        Label : 'Tax Amount'
      },
      {
        $Type : 'UI.DataField',
        Value : GrossAmount,
        Label : 'Gross Amount'
      }
    ]
  },
  UI.Facets : [
    {
      $Type : 'UI.ReferenceFacet',
      ID : 'ItemDetailsFacet',
      Label : 'Item Details',
      Target : '@UI.FieldGroup#ItemDetails'
    }
  ],
  UI.HeaderInfo : {
    TypeName : 'Invoice Item',
    TypeNamePlural : 'Invoice Items',
    Title : {
      $Type : 'UI.DataField',
      Value : Material
    },
    Description : {
      $Type : 'UI.DataField',
      Value : ItemNumber
    }
  }
);
