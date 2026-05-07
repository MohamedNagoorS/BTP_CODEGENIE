namespace j62.asset;

entity AssetMaster {
  key ID                        : UUID;
      AssetClass                : String;
      Description               : String;
      CompanyCode               : String default '1010';
      CostCenter                : String;
      CapitalizedOn             : Date;
      ref_PurchaseRequisitionID : UUID;
      toPurchaseRequisition     : Association to PurchaseRequisition
                                    on toPurchaseRequisition.ID = ref_PurchaseRequisitionID;
}

entity PurchaseRequisition {
  key ID                        : UUID;
      AccountAssignmentCategory : String default 'A';
      ShortText                 : String;
      Quantity                  : Integer;
      UnitOfMeasure             : String;
      MaterialGroup             : String;
      Plant                     : String;
      ValuationPrice            : Decimal(15, 2);
      ref_PurchaseOrderID       : UUID;
      toPurchaseOrder           : Association to PurchaseOrder
                                    on toPurchaseOrder.ID = ref_PurchaseOrderID;
      items                     : Composition of many PurchaseRequisitionItem
                                    on items.parent = $self;
}

entity PurchaseRequisitionItem {
  key ID                        : UUID;
      parent                    : Association to PurchaseRequisition;
      ItemNumber                : Integer;
      Material                  : String;
      MaterialDescription       : String;
      Quantity                  : Integer;
      UnitOfMeasure             : String;
      UnitPrice                 : Decimal(15, 2);
      TotalAmount               : Decimal(15, 2);
      DeliveryDate              : Date;
      AccountAssignmentCategory : String;
      Plant                     : String;
}

entity PurchaseOrder {
  key ID                : UUID;
      PurchaseOrderType : String;
      Supplier          : String;
      OrderQuantity     : Integer;
      NetPrice          : Decimal(15, 2);
      ref_GoodsReceiptID : UUID;
      toGoodsReceipt    : Association to GoodsReceipt
                            on toGoodsReceipt.ID = ref_GoodsReceiptID;
      items             : Composition of many PurchaseOrderItem
                            on items.parent = $self;
}

entity PurchaseOrderItem {
  key ID                  : UUID;
      parent              : Association to PurchaseOrder;
      ItemNumber          : Integer;
      Material            : String;
      MaterialDescription : String;
      OrderQuantity       : Integer;
      UnitOfMeasure       : String;
      NetPrice            : Decimal(15, 2);
      TotalAmount         : Decimal(15, 2);
      DeliveryDate        : Date;
      Plant               : String;
}

entity GoodsReceipt {
  key ID               : UUID;
      MaterialDocument : String;
      PostingDate      : Date;
      ref_InvoiceID    : UUID;
      toInvoice        : Association to Invoice
                           on toInvoice.ID = ref_InvoiceID;
      items            : Composition of many GoodsReceiptItem
                           on items.parent = $self;
}

entity GoodsReceiptItem {
  key ID                  : UUID;
      parent              : Association to GoodsReceipt;
      ItemNumber          : Integer;
      Material            : String;
      MaterialDescription : String;
      Quantity            : Integer;
      UnitOfMeasure       : String;
      StorageLocation     : String;
      Batch               : String;
      Plant               : String;
}

entity Invoice {
  key ID                    : UUID;
      SupplierInvoiceNumber : String;
      FiscalYear            : String;
      GrossAmount           : Decimal(15, 2);
      TaxCode               : String;
      items                 : Composition of many InvoiceItem
                                on items.parent = $self;
}

entity InvoiceItem {
  key ID                  : UUID;
      parent              : Association to Invoice;
      ItemNumber          : Integer;
      Material            : String;
      MaterialDescription : String;
      Quantity            : Integer;
      UnitOfMeasure       : String;
      UnitPrice           : Decimal(15, 2);
      NetAmount           : Decimal(15, 2);
      TaxAmount           : Decimal(15, 2);
      GrossAmount         : Decimal(15, 2);
}
