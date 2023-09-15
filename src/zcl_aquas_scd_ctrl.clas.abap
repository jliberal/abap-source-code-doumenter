CLASS zcl_aquas_scd_ctrl DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    CLASS-METHODS document_program IMPORTING iv_program              TYPE programm
                                   RETURNING VALUE(ro_documentation) TYPE ref to zcl_aquas_scd_documentation.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_aquas_scd_ctrl IMPLEMENTATION.
  METHOD document_program.

  ENDMETHOD.

ENDCLASS.
