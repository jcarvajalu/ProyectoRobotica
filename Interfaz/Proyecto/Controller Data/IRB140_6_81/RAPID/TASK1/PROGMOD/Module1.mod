MODULE Module1
    
    CONST robtarget Target_10:=[[466.539953566,-142.635568483,482.286643786],[0.280895683,0.141722572,0.948287929,-0.041980138],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[506.291651246,0,679.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        waitDO A1,1;
        Rutina1;
        waitDO A2,1;
        RutinaHome;
        waitDO A3,1;
        Rutina1;
        waitDO B1,1;
        RutinaHome;
        waitDO B2,1;
        Rutina1;
        waitDO B3,1;
        RutinaHome;
        waitDO P1,1;
        Rutina1;
        waitDO P2,1;
        RutinaHome;
        waitDO P3,1;
        Rutina1;
        waitDO A1,1;
        Rutina1;
    ENDPROC
    
    PROC Rutina1()
        MoveJ Target_10,v1000,z100,tool0\WObj:=wobj0;
    ENDPROC
    
    PROC RutinaHome()
        MoveJ Target_20,v1000,z100,tool0\WObj:=wobj0;
    ENDPROC
    
ENDMODULE