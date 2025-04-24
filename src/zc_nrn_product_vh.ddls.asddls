@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VALUE HELP PRODUCT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_NRN_PRODUCT_VH as select from ZR_NRN_PRODUCT
{
    @ObjectModel.text.element: [ 'Description' ]
    @EndUserText.label: 'Id Produto'
    key ProductId,
    
    @Semantics.text : true
    @EndUserText.label : 'Descrição'
    Description
}

group by 
    ProductId,
    Description
