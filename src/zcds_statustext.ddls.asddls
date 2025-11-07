@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status with test cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_StatusText as select from /dmo/oall_stat_t
association[1..1] to ZCDS_onlyStatus on $projection.OverallStatus = ZCDS_onlyStatus.OverallStatus
{

 @ObjectModel.text.element: [ 'Text' ]
    key overall_status as OverallStatus,
    @Semantics.language: true
    key language as Language,
    @Semantics.text: true
    text as Text,
    ZCDS_onlyStatus
}
