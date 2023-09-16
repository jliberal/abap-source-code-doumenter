CLASS zcl_aquas_scd_ctrl DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    CLASS-METHODS document_program IMPORTING iv_program              TYPE programm
                                   RETURNING VALUE(ro_documentation) TYPE REF TO zcl_aquas_scd_documentation.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA gif_object TYPE REF TO zif_aquas_scd_dev_object.
    CLASS-METHODS document_object IMPORTING iv_object_name          TYPE string
                                            iv_object_type          TYPE char4
                                  RETURNING VALUE(ro_documentation) TYPE REF TO zcl_aquas_scd_documentation.
    METHODS constructor IMPORTING iv_object_type          TYPE char4.
ENDCLASS.



CLASS zcl_aquas_scd_ctrl IMPLEMENTATION.
  METHOD document_program.
    ro_documentation = document_object( iv_object_name = CONV #( iv_program )
                                        iv_object_type = 'PROG').
  ENDMETHOD.

  METHOD document_object.
    DATA(lo_ctrl) = NEW zcl_aquas_scd_ctrl( iv_object_type ).
  ENDMETHOD.


  METHOD constructor.
    me->gif_object = zcl_aquas_scd_object_factory=>factory( iv_object_type ).
  ENDMETHOD.

ENDCLASS.
