//控制部分通用代码
#include "include.h"

struct _ctl ctl;

void CTL_SEN_init()//控制参数初始化
{
  ctl.S3010.Kp = 0;
  ctl.S3010.Ki = 0;
  ctl.S3010.Kd = 0;
  
  ctl.motto.aim = 0;
  
  ctl.motto.Kp = 1.1;
  ctl.motto.Ki = 0.3;
  ctl.motto.Kd = 0;
  

  
  ctl.motto.out = 0;
  
  line.lose_cnt = 0;
  line.Hight = 0;
  line.flag_lose = 0;
  line.final = 0;
  line.cross = 0;
  line.pos = 0;
}


//控制中断函数
void CTL_isr()//控制系统调度 //10ms
{
  static uint8 cnt = 0;

  cnt++;

  
  if ( flag_stop == 0 ) //无急停标志
  {
    S3010_CTL();
    
    //20ms中断区
    if ( cnt >= 2 )
    {
      cnt = 0;
      
      motto_getsped();//测速
      ctl_sped();//速度控制
      motto_set();//电机输出    
    }
    
  }
  else
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );

    
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1520 );
    
  }
  //此处是代码冗余
  safty_check();
}