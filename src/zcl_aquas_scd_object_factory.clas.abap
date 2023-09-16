CLASS zcl_aquas_scd_object_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    CLASS-METHODS factory IMPORTING iv_object_type   TYPE char4
                          RETURNING VALUE(ro_object) TYPE REF TO zif_aquas_scd_dev_object.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_aquas_scd_object_factory IMPLEMENTATION.
  METHOD factory.
    CASE iv_object_type.
      WHEN 'PROG'.
        CREATE OBJECT ro_object TYPE zcl_aquas_scd_object_prog.
      WHEN OTHERS.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
