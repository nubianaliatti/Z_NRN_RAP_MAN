@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VALUE HELP customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_nrn_customer_vh as select from ztnrn_customer
{
    @ObjectModel.text.element: [ 'Name']
    @EndUserText.label: 'ID Cliente'
    key customer_id as CustomerId,
    
    @Semantics.text: true
    @EndUserText.label: 'Nome Cliente'
    name as Name
}
