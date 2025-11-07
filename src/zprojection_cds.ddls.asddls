@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.resultSet.sizeCategory: #XS
define root view entity ZProjection_cds as select from ZINT_CDS_view
{
    key SalesOrderId,
    Name,
    DocumentType,
    CreatedBy,
    CreatedOn,
     @Consumption.valueHelpDefinition: [{ entity: { name: 'ZCDS_Status_VH', element: 'OverallStatus'} }]
    Status
}
