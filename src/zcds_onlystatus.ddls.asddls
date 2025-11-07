@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_onlyStatus as select from /dmo/oall_stat
association[0..*] to ZCDS_StatusText on $projection.OverallStatus = ZCDS_StatusText.OverallStatus
{
    key overall_status as OverallStatus,
    ZCDS_StatusText
}
