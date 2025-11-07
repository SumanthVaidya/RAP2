@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface cds view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory: #XS
define root view entity ZINT_CDS_view as select from zdb_table
association to ZCDS_onlyStatus as _status on $projection.Status = _status.OverallStatus
{
    key sales_order_id as SalesOrderId,
    name as Name,
    document_type as DocumentType,
    created_by as CreatedBy,
    created_on as CreatedOn,
    status as Status,
    _status
}
