using j62.asset from '../db/schema';

service J62AssetService @(path: '/odata/v4/J62AssetService') {
  @odata.draft.enabled
  entity AssetMaster as projection on asset.AssetMaster {
    *,
    toPurchaseRequisition
  };

  annotate AssetMaster with @(
    Common.ValueList #ref_PurchaseRequisitionID : {
      CollectionPath : 'PurchaseRequisition',
      Parameters     : [
        {
          $Type             : 'Common.ValueListParameterInOut',
          LocalDataProperty : ref_PurchaseRequisitionID,
          ValueListProperty : 'ID'
        },
        {
          $Type             : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty : 'ShortText'
        }
      ]
    }
  );

  @odata.draft.enabled
  entity PurchaseRequisition as projection on asset.PurchaseRequisition {
    *,
    toPurchaseOrder,
    items
  };

  entity PurchaseRequisitionItem as projection on asset.PurchaseRequisitionItem {
    *
  };

  annotate PurchaseRequisition with @(
    Common.ValueList #ref_PurchaseOrderID : {
      CollectionPath : 'PurchaseOrder',
      Parameters     : [
        {
          $Type             : 'Common.ValueListParameterInOut',
          LocalDataProperty : ref_PurchaseOrderID,
          ValueListProperty : 'ID'
        },
        {
          $Type             : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty : 'Supplier'
        }
      ]
    }
  );

  @odata.draft.enabled
  entity PurchaseOrder as projection on asset.PurchaseOrder {
    *,
    toGoodsReceipt,
    items
  };

  entity PurchaseOrderItem as projection on asset.PurchaseOrderItem {
    *
  };

  annotate PurchaseOrder with @(
    Common.ValueList #ref_GoodsReceiptID : {
      CollectionPath : 'GoodsReceipt',
      Parameters     : [
        {
          $Type             : 'Common.ValueListParameterInOut',
          LocalDataProperty : ref_GoodsReceiptID,
          ValueListProperty : 'ID'
        },
        {
          $Type             : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty : 'MaterialDocument'
        }
      ]
    }
  );

  @odata.draft.enabled
  entity GoodsReceipt as projection on asset.GoodsReceipt {
    *,
    toInvoice,
    items
  };

  entity GoodsReceiptItem as projection on asset.GoodsReceiptItem {
    *
  };

  annotate GoodsReceipt with @(
    Common.ValueList #ref_InvoiceID : {
      CollectionPath : 'Invoice',
      Parameters     : [
        {
          $Type             : 'Common.ValueListParameterInOut',
          LocalDataProperty : ref_InvoiceID,
          ValueListProperty : 'ID'
        },
        {
          $Type             : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty : 'SupplierInvoiceNumber'
        }
      ]
    }
  );

  @odata.draft.enabled
  entity Invoice as projection on asset.Invoice {
    *,
    items
  };

  entity InvoiceItem as projection on asset.InvoiceItem {
    *
  };


}
