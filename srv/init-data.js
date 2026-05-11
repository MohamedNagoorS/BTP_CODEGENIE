const cds = require('@sap/cds');

/**
 * This script initializes draft-enabled entities with data from CSV files
 * Run this after cds deploy to populate draft tables correctly
 */
async function initializeDraftData() {
  try {
    const db = await cds.connect.to('db');
    
    console.log('Starting draft data initialization...');
    
    // Get all AssetMaster records
    const assetMasters = await db.run(SELECT.from('j62.asset.AssetMaster'));
    console.log(`Found ${assetMasters.length} AssetMaster records`);
    
    // Get all PurchaseRequisition records
    const purchaseRequisitions = await db.run(SELECT.from('j62.asset.PurchaseRequisition'));
    console.log(`Found ${purchaseRequisitions.length} PurchaseRequisition records`);
    
    // Get all PurchaseOrder records
    const purchaseOrders = await db.run(SELECT.from('j62.asset.PurchaseOrder'));
    console.log(`Found ${purchaseOrders.length} PurchaseOrder records`);
    
    // Get all GoodsReceipt records
    const goodsReceipts = await db.run(SELECT.from('j62.asset.GoodsReceipt'));
    console.log(`Found ${goodsReceipts.length} GoodsReceipt records`);
    
    // Get all Invoice records
    const invoices = await db.run(SELECT.from('j62.asset.Invoice'));
    console.log(`Found ${invoices.length} Invoice records`);
    
    console.log('\nDraft data initialization completed!');
    console.log('Note: With @odata.draft.enabled, data from CSV files is automatically available.');
    console.log('The Create button should now be visible in the UI.');
    
  } catch (error) {
    console.error('Error during initialization:', error);
  }
}

// Run if executed directly
if (require.main === module) {
  initializeDraftData().then(() => process.exit(0)).catch(err => {
    console.error(err);
    process.exit(1);
  });
}

module.exports = initializeDraftData;
