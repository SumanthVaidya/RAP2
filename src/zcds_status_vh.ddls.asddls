@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status_VH'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZCDS_Status_VH as select from ZCDS_onlyStatus
association [0..*] to ZCDS_StatusText as _text on $projection.OverallStatus = _text.OverallStatus 
{
  // @UI.textArrangement: #TEXT_ONLY
   @ObjectModel.text.association: '_text'
    key OverallStatus,
    /* Associations */
   // @UI.textArrangement: #TEXT_ONLY
   // @ObjectModel.text.reference.association: '_text'
       _text
}
