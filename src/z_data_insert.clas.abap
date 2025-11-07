CLASS z_data_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    methods data_insert.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS z_data_insert IMPLEMENTATION.

METHOD data_insert.

data: it_table TYPE table of zdb_table,
        lv_datetime TYPE timestamp.
        get TIME STAMP FIELD lv_datetime.
DELETE from zdb_table.

  it_table = VALUE #( (  sales_order_id = '000001'
  name           = 'SUMANTH'
  document_type = 'PDF'
  created_by     = 'Suman_cb'
  created_on     = lv_datetime )
  (  sales_order_id = '000002'
  name           = 'SANTU'
  document_type = '.DOC'
  created_by     = 'Santu_cb'
  created_on     = lv_datetime )
  (  sales_order_id = '000003'
  name           = 'Sunil'
  document_type = '.DOC'
  created_by     = 'Sunil_cb'
  created_on     = lv_datetime )
  (  sales_order_id = '000004'
  name           = 'Sanket'
  document_type = '.DOC'
  created_by     = 'Sanket_cb'
  created_on     = lv_datetime )
  (  sales_order_id = '000005'
  name           = 'Hitesh'
  document_type = '.DOC'
  created_by     = 'Hitesh_cb'
  created_on     = lv_datetime ) ).

  INSERT zdb_table FROM TABLE @it_table.


ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

  data_insert(  ).

 out->write(
     EXPORTING
       data   = 'DATA IS INSERTED'
   ).


  ENDMETHOD.
ENDCLASS.
