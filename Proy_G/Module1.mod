MODULE Module1
    CONST robtarget C_1:=[[100,150,20],[0.5,0.5,0.5,-0.5],[-2,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget C_2:=[[200,150,20],[0.5,0.5,0.5,-0.5],[-1,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget C_3:=[[300,150,20],[0.5,0.5,0.5,-0.5],[-1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR signaldi Pos_dejar;
    TASK PERS wobjdata W_Banda:=[FALSE,TRUE,"",[[0,0,100],[1,0,0,0]],[[-200,-900,230],[1,0,0,0]]];
    CONST robtarget Home_G:=[[679.496732003,0,579.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget A_1:=[[140,50,20],[0.5,-0.5,0.5,0.5],[0,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget A_2:=[[280,50,20],[0.5,-0.5,0.5,0.5],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget A_3:=[[420,50,20],[0.5,-0.5,0.5,0.5],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget B_1:=[[140,50,-297.5],[0.5,-0.5,0.5,0.5],[0,0,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget B_2:=[[280,50,-297.5],[0.5,-0.5,0.5,0.5],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget B_3:=[[420,50,-297.5],[0.5,-0.5,0.5,0.5],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS wobjdata W_Armario:=[FALSE,TRUE,"",[[750,280,520],[0.707107,0,0,-0.707107]],[[0,0,0],[1,0,0,0]]];
    CONST robtarget H_A:=[[280,-139.508914925,103.770212837],[0.5,-0.5,0.5,0.5],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget H_B:=[[280,-139.933171273,-197.954698627],[0.5,-0.5,0.5,0.5],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget H_C:=[[199.999965031,324.731782319,210.32453317],[0.5,0.5,0.5,-0.5],[-2,-1,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS num op_agarrar:=3;
    PERS num op_dejar:=3;
    PERS bool flag_A1:=FALSE;
    PERS bool flag_A2:=FALSE;
    PERS bool flag_A3:=FALSE;
    PERS bool flag_B1:=FALSE;
    PERS bool flag_B2:=FALSE;
    PERS bool flag_B3:=FALSE;
    PERS bool flag_C1:=FALSE;
    PERS bool flag_C2:=FALSE;
    PERS bool flag_C3:=FALSE;
    PERS tooldata planB:=[TRUE,[[0,0,200],[1,0,0,0]],[1,[0,0,1],[1,0,0,0],0,0,0]];
    LOCAL PERS tooldata Servo:=[TRUE,[[0,0,114.2],[1,0,0,0]],[0.215,[8.7,12.3,49.2],[1,0,0,0],0.00021,0.00024,0.00009]];
  
    
    !***********************************************************
    !
    ! M?dulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: gio
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
        !Add your code here
        inicio:
        WaitDO DO_03,1;
        MoveJ Home_G,v300,z5,planB\WObj:=wobj0;
        setAO posi, op_agarrar;
        Agarrar op_agarrar,[0,-100,0],TRUE;
        Dejar op_dejar,[0,0,100],FALSE;
        GOTO inicio;
    ENDPROC
PROC Agarrar(num option, pos offset, bool d)
    ! Realizar acciones basadas en la opción seleccionada
    TEST option
        CASE 1:
            ! Realizar acción para la opción 1
            flag_A1:=True; 
            MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
            Move_offset A_1, offset, FALSE, d;
            MoveL H_A,v500,z5,planB\WObj:=W_Armario;
        CASE 2:
            ! Realizar acción para la opción 2
            flag_A2:=True; 
            MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
            Move_offset A_2, offset, FALSE, d;
            MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
        CASE 3:
            ! Realizar acción para la opción 3
            flag_A3:=True; 
            MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
            Move_offset A_3, offset, FALSE, d;
            MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
        CASE 4:
            ! Realizar acción para la opción 1
            flag_B1:=True; 
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
            Move_offset B_1, offset, FALSE, d;
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
        CASE 5:
            ! Realizar acción para la opción 2
            flag_B2:=True;
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
            Move_offset B_2, offset, FALSE, d;
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
        CASE 6:
            ! Realizar acción para la opción 3
            flag_B3:=True;
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
            Move_offset B_3, offset, FALSE, d;
            MoveJ H_B,v500,z5,planB\WObj:=W_Armario;
        DEFAULT:
            ! Manejar caso donde la opción no es válida
    ENDTEST
        MoveJ H_A,v500,z5,planB\WObj:=W_Armario;
        apagarFlag;
   ENDPROC   
PROC Dejar(num option, pos offset,bool d)
    ! Realizar acciones basadas en la opción seleccionada
    TEST option
        CASE 1:
            ! Realizar acción para la opción 1
            flag_C1:=True;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
            Move_offset C_1, offset, TRUE, d;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
        CASE 2:
            ! Realizar acción para la opción 2
            flag_C2:=True;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
            Move_offset C_2, offset, TRUE, d;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
        CASE 3:
            ! Realizar acción para la opción 3
            flag_C3:=True;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
            Move_offset C_3, offset, TRUE, d;
            MoveJ H_C,v500,z5,planB\WObj:=W_Banda;
        DEFAULT:
            ! Manejar caso donde la opción no es válida
    ENDTEST
        MoveJ Home_G,v500,z5,planB\WObj:=wobj0;
        apagarFlag;
   ENDPROC 
   
   

PROC Move_offset(robtarget target, pos offset,bool W, bool d)
    ! Moverse a 100 mm por encima del punto
    IF W THEN
        MoveL Offs (target, offset.x, offset.y, offset.z), v500, z5, planB\WObj:=W_Banda;
        ! Bajar linealmente al punto
        MoveL target, v50, z5, planB\WObj:=W_banda; 
    ELSE
        MoveL Offs (target, offset.x, offset.y, offset.z), v500, z5, planB\WObj:=W_Armario;
        ! Bajar linealmente al punto
        MoveL target, v50, z5, planB\WObj:=W_Armario; 
    ENDIF
    WaitTime 1;
    ! Activar o Desactivar la entrada digital número
    IF d THEN
        SetDO DO_01, 1;
        WaitTime 1;
        SetDO DO_01, 0;
    ELSE
        SetDO DO_02, 1;
        WaitTime 1;
        SetDO DO_02, 0;
    ENDIF
    WaitTime 5;
    ! Volver a subir
    IF W THEN
        MoveL Offs (target, offset.x, offset.y, offset.z), v50, z5, planB\WObj:=W_Banda;
    ELSE
        MoveL Offs (target, offset.x, offset.y, offset.z), v50, z5, planB\WObj:=W_Armario;
    ENDIF
ENDPROC
PROC apagarFlag()
    flag_A1:=False;
    flag_A2:=False;
    flag_A3:=False;
    flag_B1:=False;
    flag_B2:=False;
    flag_B3:=False;
    flag_C1:=False;
    flag_C2:=False;
    flag_C3:=False;
ENDPROC


    LOCAL PROC Puntos()
        MoveL Home_G,v500,z5,planB\WObj:=wobj0;
        MoveL C_1,v500,z5,planB\WObj:=W_Banda;
        MoveL C_2,v500,z5,planB\WObj:=W_Banda;
        MoveL C_3,v500,z5,planB\WObj:=W_Banda;
        MoveL A_1,v500,z5,planB\WObj:=W_Armario;
        MoveL A_2,v500,z5,planB\WObj:=W_Armario;
        MoveL A_3,v500,z5,planB\WObj:=W_Armario;
        MoveL B_1,v500,z5,planB\WObj:=W_Armario;
        MoveL B_2,v500,z5,planB\WObj:=W_Armario;
        MoveL H_A,v500,z5,planB\WObj:=W_Armario;
        MoveL B_3,v500,z5,planB\WObj:=W_Armario;
        MoveL H_B,v500,z5,planB\WObj:=W_Armario;
        MoveL H_C,v500,z5,planB\WObj:=W_Banda;
    ENDPROC

ENDMODULE