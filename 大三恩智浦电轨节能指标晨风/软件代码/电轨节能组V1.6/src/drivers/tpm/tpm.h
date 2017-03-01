//===========================================================================
//文件名称：tpm.h
//功能概要：tpm底层驱动构件头文件
//版权所有：苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//更新记录：2013-3-9   V2.0 柏祥
//===========================================================================
#ifndef TPM_H_
#define TPM_H_

#include "common.h"

#define tpm0_irq_no 17
#define tpm1_irq_no 18
#define tpm2_irq_no 19
//定义TPM模块号
typedef enum
{
    TPM0,
    TPM1,
    TPM2,

    TPM_MAX,
} TPMn_e;

//定义TPM 通道号
typedef enum
{

    TPM_CH0,
    TPM_CH1,
    TPM_CH2,
    TPM_CH3,
    TPM_CH4,
    TPM_CH5,
    TPM_CH6,
    TPM_CH7,

} TPM_CHn_e;

typedef enum
{
    TPM_CLKIN0,
    TPM_CLKIN1,
} TPM_CLKIN_e;

//分频系数
typedef enum
{
    TPM_PS_1,
    TPM_PS_2,
    TPM_PS_4,
    TPM_PS_8,
    TPM_PS_16,
    TPM_PS_32,
    TPM_PS_64,
    TPM_PS_128,

    TPM_PS_MAX,
}TPM_PS_e;

//用于开始计数 或者 重载计数
typedef enum
{
    EXTRG_IN,       //外部触发
    CMP0_OUT,       //CMP0 输出

    TRG_CFG_RES0,   //保留
    TRG_CFG_RES1,   //保留

    PIT0_TRG,       //PIT0 触发
    PIT1_TRG,       //PIT0 触发

    TRG_CFG_RES2,   //保留
    TRG_CFG_RES3,   //保留

    TPM0_OVER,      //TPM0溢出
    TPM1_OVER,      //TPM1溢出
    TPM2_OVER,      //TPM2溢出

    TRG_CFG_RES4,   //保留

    RTC_ALARM,      //RTC报警
    RTC_SEC,        //RTC秒中断

    LPTMR_TRG,      //LPTMR 触发

    TRG_CFG_RES5,   //保留


}TPMx_TRG_CFG_e;


/*********************** PWM **************************/

#define TPM0_PRECISON 1000u     //定义占空比精度，100即精度为1%，1000u则精度为0.1%，用于占空比 duty 形参传入，即占空比为 duty/TPM_PRECISON
#define TPM1_PRECISON 100u     //定义占空比精度，100即精度为1%，1000u则精度为0.1%，用于占空比 duty 形参传入，即占空比为 duty/TPM_PRECISON
#define TPM2_PRECISON 100u     //定义占空比精度，100即精度为1%，1000u则精度为0.1%，用于占空比 duty 形参传入，即占空比为 duty/TPM_PRECISON

//=========================================================================
//函数名称：tpm_enable_int                                                        
//功能概要：使能tpm模块中断。                                                
//参数说明：tpmModule:模块号：0、1、2                                                                                
//函数返回：无
//=========================================================================
void tpm_enable_int(uint8_t tpmModule);
//=========================================================================
//函数名称：tpm_disable_int                                                        
//功能概要：禁止tpm模块初始化。                                                
//参数说明：tpmModule:模块号：0、1、2                                                                             
//函数返回：无
//=========================================================================
void tpm_disable_int(uint8_t tpmModule);
//=========================================================================
//函数名称：tpm_init                                                        
//功能概要：初始化tpm模块。                                                
//参数说明：uartNo:串口号：0、1、2                                                                                
//函数返回：函数执行状态：0=正常；非0=异常
//=========================================================================
extern void  tpm_pwm_init(TPMn_e, TPM_CHn_e, uint32_t freq, uint32_t duty);  //初始化TPM的PWM功能并设置频率、占空比。设置通道输出占空比。同一个TPM，各通道的PWM频率是一样的，共3个TPM

//=========================================================================
//函数名称：tpm_stop                                                        
//功能概要：禁止tpm模块。                                        
//参数说明：uartNo:串口号：0、1、2                                                                                
//函数返回：无
//=========================================================================
void tpm_stop(uint8_t tpmModule);


extern void  tpm_pwm_duty(TPMn_e, TPM_CHn_e,              uint32_t duty);  //设置通道占空比,占空比为 （duty * 精度） % ，如果 TPM_PRECISON 定义为 1000 ，duty = 100 ，则占空比 100*0.1%=10%
extern void  tpm_pwm_freq(TPMn_e,            uint32_t freq);               //设置TPM的频率（改频率后，需要重新配置占空比）



extern void     tpm_pulse_init(TPMn_e tpmn,TPM_CLKIN_e clkin,TPM_PS_e ps);
extern void     tpm_pulse_clean (TPMn_e tpmn);
extern uint16_t    tpm_pulse_get (TPMn_e tpmn);

#endif 
