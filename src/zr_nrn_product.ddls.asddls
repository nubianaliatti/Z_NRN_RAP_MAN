@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS BASIC PRODUCT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_NRN_PRODUCT as select from ztnrn_product
{
    key product_id as ProductId,
    description as Description,
    @Semantics.amount.currencyCode: 'Currency'
    value as Value,
    currency as Currency,
    @Semantics.quantity.unitOfMeasure: 'UnityMeasure'
    quantity as Quantity,
    unity_measure as UnityMeasure
}
