/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：isr.c
 * 描述         ：中断处理例程
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/

//#include "isr.h"

#include "common.h"
#include "include.h"




/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：PIT0_IRQHandler
*  功能说明：PIT0 定时中断服务函数
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-18    已测试
*  备    注：
*************************************************************************/

void PIT_IRQHandler(void)
{
  PIT_Flag_Clear(PIT0);       //清中断标志位
  PTD5_OUT = 1;
  
  bz_cnt++;
  sensor();
  control();
  PTD5_OUT = 0;
}
    
