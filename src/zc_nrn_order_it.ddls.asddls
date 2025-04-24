@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS CONSUMPTION ORDER ITENS'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity zc_nrn_order_it as projection on ZI_NRN_ORDER_IT
{
    key OrderId,
    key Item,
    @ObjectModel.text.element: [ 'Description' ]
    @Consumption.valueHelpDefinition: [{ entity: {name:'zc_nrn_product_vh', element:'ProductID'},useForValidation:true}]
    Product,
    Description,
    Value,
    Currency,
    Quantity,
    SalesPrice,
    UnityMeasure,
    /* Associations */
    _Order: redirected to parent zc_nrn_order,
    _Product
}
