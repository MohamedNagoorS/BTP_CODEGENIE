const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
  // This service handler ensures draft-enabled entities work properly
  // CAP automatically handles draft creation and activation
  
  // Log when service is ready
  this.on('served', () => {
    console.log('J62AssetService is now available');
    console.log('Draft-enabled entities: AssetMaster, PurchaseRequisition, PurchaseOrder, GoodsReceipt, Invoice');
  });
});
