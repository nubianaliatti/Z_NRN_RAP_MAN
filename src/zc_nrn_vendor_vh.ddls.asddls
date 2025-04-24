@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VALUE HELP VENDOR'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_nrn_vendor_vh as select from ztnrn_vendor
{
    @ObjectModel.text.element: [ 'Name']
    @EndUserText.label: 'ID Vendedor'
    key vendor_id as VendorId,
    @Semantics.text: true
    @EndUserText.label: 'Nome Vendedor'
    name as Name
}

group by
vendor_id,
name
