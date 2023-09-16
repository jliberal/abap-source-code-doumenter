CLASS zcl_aquas_scd_object_prog DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_aquas_scd_dev_object.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_aquas_scd_object_prog IMPLEMENTATION.
  METHOD zif_aquas_scd_dev_object~get_source_code.
    DATA lv_program TYPE programm.
    lv_program = iv_object.
    READ REPORT lv_program INTO rt_code.
  ENDMETHOD.

ENDCLASS.
