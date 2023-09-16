INTERFACE zif_aquas_scd_dev_object
  PUBLIC .
  METHODS get_source_code IMPORTING iv_object      TYPE string
                          RETURNING VALUE(rt_code) TYPE string_table.
ENDINTERFACE.
