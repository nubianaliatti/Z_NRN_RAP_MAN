@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS CONSUMPTION ORDER'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_nrn_order as projection on ZI_NRN_ORDER
{
    @Consumption.valueHelpDefinition: [{entity: { name:'zc_nrn_order_vh',element: 'Orderid'},useForValidation:true}]
    key Orderid,
    @ObjectModel.text.element: ['CustomerName']
    @Consumption.valueHelpDefinition: [{entity: { name:'zc_nrn_customer_vh',element: 'CustomerId'},useForValidation:true}]
    Customer,
    CustomerName,
    @Consumption.valueHelpDefinition: [{entity: { name:'zc_nrn_vendor_vh',element: 'VendorId'},useForValidation:true}]
    @ObjectModel.text.element: ['VendorName']
    Vendor,
    VendorName,
    @Consumption.valueHelpDefinition: [{entity: { name:'zc_nrn_company_vh',element: 'CompanyId'},useForValidation:true}]
    @ObjectModel.text.element: ['CompanyName']
    Company,
    CompanyName,
    Usnam,
    /* Associations */
    _Itens: redirected to composition child zc_nrn_order_it
}
