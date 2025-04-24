@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS COMPOSITION ORDER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_NRN_ORDER
  as select from ZR_NRN_ORDER
  composition  [1..*] of ZI_NRN_ORDER_IT as _Itens 
  association [1..1] to zc_nrn_company_vh as _Company on $projection.Company = _Company.CompanyId
  association [1..1] to zc_nrn_customer_vh as _Customer on $projection.Customer = _Customer.CustomerId
  association [1..1] to zc_nrn_vendor_vh as _Vendor on $projection.Vendor = _Vendor.VendorId
{
  key Orderid,
      Customer,
      _Customer.Name as CustomerName,
      Vendor,
      _Vendor.Name as VendorName,
      Company,
      _Company.Name as CompanyName,
      Usnam,
      _Itens,
      _Company,
      _Customer,
      _Vendor
}
