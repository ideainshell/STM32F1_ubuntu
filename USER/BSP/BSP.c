/******************** (C) COPYRIGHT 2012 WildFire Team **************************
 * �ļ���  ��bsp.c
 * ����    ���弶��ʼ��    
 * ʵ��ƽ̨��Ұ��STM32������
 * ��汾  ��ST3.5.0
 	ϵ   ͳ��uCOS-III
 *
 * ����    ��wildfire team 
 * ��̳    ��www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
 * �Ա�    ��http://firestm32.taobao.com
**********************************************************************************/

#include "includes.h"
#include "os_cfg_app.h"
/*
 * ��������BSP_Init
 * ����  ��ʱ�ӳ�ʼ����Ӳ����ʼ��
 * ����  ����
 * ���  ����
 */
void BSP_Init(void)
{
 	SysTick_init();
    LED_GPIO_Config();  /* LED �˿ڳ�ʼ�� */
}

/*
 * ��������SysTick_init
 * ����  ������SysTick��ʱ��
 * ����  ����
 * ���  ����
 */
void SysTick_init(void)
{
    SysTick_Config(SystemCoreClock/OS_CFG_TICK_RATE_HZ);//��ʼ����ʹ��SysTick��ʱ��
	if (SysTick_Config(SystemCoreClock/OS_CFG_TICK_RATE_HZ))	// ST3.5.0��汾
	{ 
		/* Capture error */ 
		while (1);
	}
}


/***********ʱ�����غ���***************/
//void CPU_TS_TmrInit(void)
//{
//}
//
//uint32_t CPU_TS_TmrRd(void)
//{
//	uint32_t i;
//	return i;
//}

