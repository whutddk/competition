/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：port.h
 * 描述         ：外部中断函数配置头文件
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：野火嵌入式开发工作室
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef _PORT_H_
#define _PORT_H_

typedef enum
{


    //中断方式选择
    IRQ_ZERO     = 0x08 << 16,   //低电平触发
    IRQ_RISING   = 0x09 << 16,   //上升沿触发
    IRQ_FALLING  = 0x0A << 16,   //下降沿触发
    IRQ_EITHER   = 0x0B << 16,   //跳变沿触发
    IRQ_ONE      = 0x0C << 16,   //高电平触发

    //DMA方式
    DMA_RISING   = 0x01 << 16,   //上升沿触发
    DMA_FALLING  = 0x02 << 16,   //下降沿触发
    DMA_EITHER   = 0x03 << 16,   //跳变沿触发

    HDS          = 0x01 << 6,    //输出高驱动能力
    ODO          = 0x01 << 5,    //漏极输出
    PF           = 0x01 << 4,    //带无源滤波器
    SSR          = 0x01 << 2,    //输出慢变化率          Slow slew rate

    //下拉上拉选择
    PULLDOWN     = 0x02 << 0,      //下拉
    PULLUP       = 0x03 << 0,      //上拉

} port_cfg;

typedef enum exti_cfg
{
    zero_down     = 0x08u,     //低电平触发，内部下拉
    rising_down   = 0x09u,     //上升沿触发，内部下拉
    falling_down  = 0x0Au,     //下降沿触发，内部下拉
    either_down   = 0x0Bu,     //跳变沿触发，内部下拉
    one_down      = 0x0Cu,     //高电平触发，内部下拉

    //用最高位标志上拉和下拉
    zero_up       = 0x88u,     //低电平触发，内部上拉
    rising_up     = 0x89u,     //上升沿触发，内部上拉
    falling_up    = 0x8Au,     //下降沿触发，内部上拉
    either_up     = 0x8Bu,     //跳变沿触发，内部上拉
    one_up        = 0x8Cu      //高电平触发，内部上拉
} exti_cfg;

void  exti_init(PORTx, u8 n, exti_cfg);

void  port_init(PTxn ptxn, u32 cfg );


#endif
