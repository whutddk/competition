///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\nvic.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\nvic.c" -D LPLD_K60 -lCN
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\nvic.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_NVIC_Init
        EXTERN __aeabi_memcpy4

        PUBLIC NVIC_init
        PUBLIC nvic_init_struct

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\BSP\nvic.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 NVIC_InitTypeDef nvic_init_struct;
nvic_init_struct:
        DS8 20
//    4 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void NVIC_init()
//    6 {
NVIC_init:
        PUSH     {R7,LR}
//    7   nvic_init_struct.NVIC_IRQChannel = PORTD_IRQn;
        MOVS     R0,#+90
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//    8   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//    9   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   10   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   11   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   12   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   13   
//   14   
//   15   //上位机的接收中断应该最高
//   16 #if USE_UART5
//   17   nvic_init_struct.NVIC_IRQChannel = UART5_RX_TX_IRQn;
        MOVS     R0,#+55
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   18 #else
//   19   nvic_init_struct.NVIC_IRQChannel = UART0_RX_TX_IRQn;
//   20 #endif
//   21   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   22   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   23   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   24   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   25   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   26       
//   27   nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn; //1ms调度，内部只有计数
        MOVS     R0,#+68
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   28   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   29   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   30   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   31   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   32   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   33   
//   34   nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;//控制系统调度，理应包括CCD读取和PID_ctl
        MOVS     R0,#+69
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   35   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   36   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 3;
        MOVS     R0,#+3
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   37   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   38   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   39   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   40   
//   41 }
        POP      {R0,PC}          ;; return
        DATA
??NVIC_init_0:
        DC32     nvic_init_struct

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  20 bytes in section .bss
// 200 bytes in section .text
// 
// 200 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
