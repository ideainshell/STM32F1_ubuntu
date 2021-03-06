/******************** (C) COPYRIGHT 2012 WildFire Team **************************
 * 文件名  ：bsp.c
 * 描述    ：板级初始化    
 * 实验平台：野火STM32开发板
 * 库版本  ：ST3.5.0
 	系   统：uCOS-III
 *
 * 作者    ：wildfire team 
 * 论坛    ：www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
 * 淘宝    ：http://firestm32.taobao.com
**********************************************************************************/

#include "includes.h"
#include "os_cfg_app.h"
/*
 * 函数名：BSP_Init
 * 描述  ：时钟初始化、硬件初始化
 * 输入  ：无
 * 输出  ：无
 */
void BSP_Init(void)
{
 	SysTick_init();
    LED_GPIO_Config();  /* LED 端口初始化 */
}

/*
 * 函数名：SysTick_init
 * 描述  ：配置SysTick定时器
 * 输入  ：无
 * 输出  ：无
 */
void SysTick_init(void)
{
    SysTick_Config(SystemCoreClock/OS_CFG_TICK_RATE_HZ);//初始化并使能SysTick定时器
	if (SysTick_Config(SystemCoreClock/OS_CFG_TICK_RATE_HZ))	// ST3.5.0库版本
	{ 
		/* Capture error */ 
		while (1);
	}
}


/***********时间戳相关函数***************/
//void CPU_TS_TmrInit(void)
//{
//}
//
//uint32_t CPU_TS_TmrRd(void)
//{
//	uint32_t i;
//	return i;
//}

