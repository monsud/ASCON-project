#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

/* Definition for CPU ID */
#define XPAR_CPU_ID 0U

/* Definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

/* Canonical definitions for peripheral PS7_CORTEXA9_0 */
#define XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ 666666687


/******************************************************************/

#include "xparameters_ps.h"

#define STDIN_BASEADDRESS 0xE0001000
#define STDOUT_BASEADDRESS 0xE0001000

/******************************************************************/

/* Platform specific definitions */
#define PLATFORM_ZYNQ
 
/* Definitions for sleep timer configuration */
#define XSLEEP_TIMER_IS_DEFAULT_TIMER
 
 
/******************************************************************/
/* Definitions for driver CANPS */
#define XPAR_XCANPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_CAN_0 */
#define XPAR_PS7_CAN_0_DEVICE_ID 0
#define XPAR_PS7_CAN_0_BASEADDR 0xE0008000
#define XPAR_PS7_CAN_0_HIGHADDR 0xE0008FFF
#define XPAR_PS7_CAN_0_CAN_CLK_FREQ_HZ 23809523


/******************************************************************/

/* Canonical definitions for peripheral PS7_CAN_0 */
#define XPAR_XCANPS_0_DEVICE_ID XPAR_PS7_CAN_0_DEVICE_ID
#define XPAR_XCANPS_0_BASEADDR 0xE0008000
#define XPAR_XCANPS_0_HIGHADDR 0xE0008FFF
#define XPAR_XCANPS_0_CAN_CLK_FREQ_HZ 23809523


/******************************************************************/


/* Definitions for peripheral PS7_DDR_0 */
#define XPAR_PS7_DDR_0_S_AXI_BASEADDR 0x00100000
#define XPAR_PS7_DDR_0_S_AXI_HIGHADDR 0x3FFFFFFF


/******************************************************************/

/* Definitions for driver DEVCFG */
#define XPAR_XDCFG_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_PS7_DEV_CFG_0_DEVICE_ID 0U
#define XPAR_PS7_DEV_CFG_0_BASEADDR 0xF8007000U
#define XPAR_PS7_DEV_CFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Canonical definitions for peripheral PS7_DEV_CFG_0 */
#define XPAR_XDCFG_0_DEVICE_ID XPAR_PS7_DEV_CFG_0_DEVICE_ID
#define XPAR_XDCFG_0_BASEADDR 0xF8007000U
#define XPAR_XDCFG_0_HIGHADDR 0xF80070FFU


/******************************************************************/

/* Definitions for driver DMAPS */
#define XPAR_XDMAPS_NUM_INSTANCES 2

/* Definitions for peripheral PS7_DMA_NS */
#define XPAR_PS7_DMA_NS_DEVICE_ID 0
#define XPAR_PS7_DMA_NS_BASEADDR 0xF8004000
#define XPAR_PS7_DMA_NS_HIGHADDR 0xF8004FFF


/* Definitions for peripheral PS7_DMA_S */
#define XPAR_PS7_DMA_S_DEVICE_ID 1
#define XPAR_PS7_DMA_S_BASEADDR 0xF8003000
#define XPAR_PS7_DMA_S_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_DMA_NS */
#define XPAR_XDMAPS_0_DEVICE_ID XPAR_PS7_DMA_NS_DEVICE_ID
#define XPAR_XDMAPS_0_BASEADDR 0xF8004000
#define XPAR_XDMAPS_0_HIGHADDR 0xF8004FFF

/* Canonical definitions for peripheral PS7_DMA_S */
#define XPAR_XDMAPS_1_DEVICE_ID XPAR_PS7_DMA_S_DEVICE_ID
#define XPAR_XDMAPS_1_BASEADDR 0xF8003000
#define XPAR_XDMAPS_1_HIGHADDR 0xF8003FFF


/******************************************************************/

/* Definitions for driver EMACPS */
#define XPAR_XEMACPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_PS7_ETHERNET_0_DEVICE_ID 0
#define XPAR_PS7_ETHERNET_0_BASEADDR 0xE000B000
#define XPAR_PS7_ETHERNET_0_HIGHADDR 0xE000BFFF
#define XPAR_PS7_ETHERNET_0_ENET_CLK_FREQ_HZ 25000000
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV1 1
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV1 5
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV0 8
#define XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV1 50
#define XPAR_PS7_ETHERNET_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/

#define XPAR_PS7_ETHERNET_0_IS_CACHE_COHERENT 0
#define XPAR_XEMACPS_0_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_ETHERNET_0 */
#define XPAR_XEMACPS_0_DEVICE_ID XPAR_PS7_ETHERNET_0_DEVICE_ID
#define XPAR_XEMACPS_0_BASEADDR 0xE000B000
#define XPAR_XEMACPS_0_HIGHADDR 0xE000BFFF
#define XPAR_XEMACPS_0_ENET_CLK_FREQ_HZ 25000000
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV1 1
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV1 5
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV0 8
#define XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV1 50
#define XPAR_XEMACPS_0_ENET_TSU_CLK_FREQ_HZ 0


/******************************************************************/


/* Peripheral Definitions for peripheral PS7_AFI_0 */
#define XPAR_PS7_AFI_0_S_AXI_BASEADDR 0xF8008000
#define XPAR_PS7_AFI_0_S_AXI_HIGHADDR 0xF8008FFF


/* Peripheral Definitions for peripheral PS7_AFI_1 */
#define XPAR_PS7_AFI_1_S_AXI_BASEADDR 0xF8009000
#define XPAR_PS7_AFI_1_S_AXI_HIGHADDR 0xF8009FFF


/* Peripheral Definitions for peripheral PS7_AFI_2 */
#define XPAR_PS7_AFI_2_S_AXI_BASEADDR 0xF800A000
#define XPAR_PS7_AFI_2_S_AXI_HIGHADDR 0xF800AFFF


/* Peripheral Definitions for peripheral PS7_AFI_3 */
#define XPAR_PS7_AFI_3_S_AXI_BASEADDR 0xF800B000
#define XPAR_PS7_AFI_3_S_AXI_HIGHADDR 0xF800BFFF


/* Peripheral Definitions for peripheral PS7_DDRC_0 */
#define XPAR_PS7_DDRC_0_S_AXI_BASEADDR 0xF8006000
#define XPAR_PS7_DDRC_0_S_AXI_HIGHADDR 0xF8006FFF


/* Peripheral Definitions for peripheral PS7_GLOBALTIMER_0 */
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_BASEADDR 0xF8F00200
#define XPAR_PS7_GLOBALTIMER_0_S_AXI_HIGHADDR 0xF8F002FF


/* Peripheral Definitions for peripheral PS7_GPV_0 */
#define XPAR_PS7_GPV_0_S_AXI_BASEADDR 0xF8900000
#define XPAR_PS7_GPV_0_S_AXI_HIGHADDR 0xF89FFFFF


/* Peripheral Definitions for peripheral PS7_INTC_DIST_0 */
#define XPAR_PS7_INTC_DIST_0_S_AXI_BASEADDR 0xF8F01000
#define XPAR_PS7_INTC_DIST_0_S_AXI_HIGHADDR 0xF8F01FFF


/* Peripheral Definitions for peripheral PS7_IOP_BUS_CONFIG_0 */
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_BASEADDR 0xE0200000
#define XPAR_PS7_IOP_BUS_CONFIG_0_S_AXI_HIGHADDR 0xE0200FFF


/* Peripheral Definitions for peripheral PS7_L2CACHEC_0 */
#define XPAR_PS7_L2CACHEC_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_L2CACHEC_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Peripheral Definitions for peripheral PS7_OCMC_0 */
#define XPAR_PS7_OCMC_0_S_AXI_BASEADDR 0xF800C000
#define XPAR_PS7_OCMC_0_S_AXI_HIGHADDR 0xF800CFFF


/* Peripheral Definitions for peripheral PS7_PL310_0 */
#define XPAR_PS7_PL310_0_S_AXI_BASEADDR 0xF8F02000
#define XPAR_PS7_PL310_0_S_AXI_HIGHADDR 0xF8F02FFF


/* Peripheral Definitions for peripheral PS7_PMU_0 */
#define XPAR_PS7_PMU_0_S_AXI_BASEADDR 0xF8891000
#define XPAR_PS7_PMU_0_S_AXI_HIGHADDR 0xF8891FFF
#define XPAR_PS7_PMU_0_PMU1_S_AXI_BASEADDR 0xF8893000
#define XPAR_PS7_PMU_0_PMU1_S_AXI_HIGHADDR 0xF8893FFF


/* Peripheral Definitions for peripheral PS7_QSPI_LINEAR_0 */
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_BASEADDR 0xFC000000
#define XPAR_PS7_QSPI_LINEAR_0_S_AXI_HIGHADDR 0xFCFFFFFF


/* Peripheral Definitions for peripheral PS7_RAM_0 */
#define XPAR_PS7_RAM_0_S_AXI_BASEADDR 0x00000000
#define XPAR_PS7_RAM_0_S_AXI_HIGHADDR 0x0003FFFF


/* Peripheral Definitions for peripheral PS7_RAM_1 */
#define XPAR_PS7_RAM_1_S_AXI_BASEADDR 0xFFFC0000
#define XPAR_PS7_RAM_1_S_AXI_HIGHADDR 0xFFFFFFFF


/* Peripheral Definitions for peripheral PS7_SCUC_0 */
#define XPAR_PS7_SCUC_0_S_AXI_BASEADDR 0xF8F00000
#define XPAR_PS7_SCUC_0_S_AXI_HIGHADDR 0xF8F000FC


/* Peripheral Definitions for peripheral PS7_SLCR_0 */
#define XPAR_PS7_SLCR_0_S_AXI_BASEADDR 0xF8000000
#define XPAR_PS7_SLCR_0_S_AXI_HIGHADDR 0xF8000FFF


/******************************************************************/






































/******************************************************************/

/* Definitions for driver GPIO */
#define XPAR_XGPIO_NUM_INSTANCES 17

/* Definitions for peripheral AXI_GPIO_CIPHERTEXT_0 */
#define XPAR_AXI_GPIO_CIPHERTEXT_0_BASEADDR 0x412D0000
#define XPAR_AXI_GPIO_CIPHERTEXT_0_HIGHADDR 0x412DFFFF
#define XPAR_AXI_GPIO_CIPHERTEXT_0_DEVICE_ID 0
#define XPAR_AXI_GPIO_CIPHERTEXT_0_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_CIPHERTEXT_0_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_CIPHERTEXT_1 */
#define XPAR_AXI_GPIO_CIPHERTEXT_1_BASEADDR 0x412E0000
#define XPAR_AXI_GPIO_CIPHERTEXT_1_HIGHADDR 0x412EFFFF
#define XPAR_AXI_GPIO_CIPHERTEXT_1_DEVICE_ID 1
#define XPAR_AXI_GPIO_CIPHERTEXT_1_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_CIPHERTEXT_1_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_CIPHERTEXT_2 */
#define XPAR_AXI_GPIO_CIPHERTEXT_2_BASEADDR 0x412F0000
#define XPAR_AXI_GPIO_CIPHERTEXT_2_HIGHADDR 0x412FFFFF
#define XPAR_AXI_GPIO_CIPHERTEXT_2_DEVICE_ID 2
#define XPAR_AXI_GPIO_CIPHERTEXT_2_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_CIPHERTEXT_2_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_CIPHERTEXT_3 */
#define XPAR_AXI_GPIO_CIPHERTEXT_3_BASEADDR 0x41300000
#define XPAR_AXI_GPIO_CIPHERTEXT_3_HIGHADDR 0x4130FFFF
#define XPAR_AXI_GPIO_CIPHERTEXT_3_DEVICE_ID 3
#define XPAR_AXI_GPIO_CIPHERTEXT_3_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_CIPHERTEXT_3_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_ENABLE */
#define XPAR_AXI_GPIO_ENABLE_BASEADDR 0x41240000
#define XPAR_AXI_GPIO_ENABLE_HIGHADDR 0x4124FFFF
#define XPAR_AXI_GPIO_ENABLE_DEVICE_ID 4
#define XPAR_AXI_GPIO_ENABLE_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_ENABLE_IS_DUAL 1


/* Definitions for peripheral AXI_GPIO_KEY_0 */
#define XPAR_AXI_GPIO_KEY_0_BASEADDR 0x41200000
#define XPAR_AXI_GPIO_KEY_0_HIGHADDR 0x4120FFFF
#define XPAR_AXI_GPIO_KEY_0_DEVICE_ID 5
#define XPAR_AXI_GPIO_KEY_0_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_KEY_0_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_KEY_1 */
#define XPAR_AXI_GPIO_KEY_1_BASEADDR 0x41210000
#define XPAR_AXI_GPIO_KEY_1_HIGHADDR 0x4121FFFF
#define XPAR_AXI_GPIO_KEY_1_DEVICE_ID 6
#define XPAR_AXI_GPIO_KEY_1_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_KEY_1_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_KEY_2 */
#define XPAR_AXI_GPIO_KEY_2_BASEADDR 0x41220000
#define XPAR_AXI_GPIO_KEY_2_HIGHADDR 0x4122FFFF
#define XPAR_AXI_GPIO_KEY_2_DEVICE_ID 7
#define XPAR_AXI_GPIO_KEY_2_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_KEY_2_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_KEY_3 */
#define XPAR_AXI_GPIO_KEY_3_BASEADDR 0x41230000
#define XPAR_AXI_GPIO_KEY_3_HIGHADDR 0x4123FFFF
#define XPAR_AXI_GPIO_KEY_3_DEVICE_ID 8
#define XPAR_AXI_GPIO_KEY_3_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_KEY_3_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_NONCE_0 */
#define XPAR_AXI_GPIO_NONCE_0_BASEADDR 0x41250000
#define XPAR_AXI_GPIO_NONCE_0_HIGHADDR 0x4125FFFF
#define XPAR_AXI_GPIO_NONCE_0_DEVICE_ID 9
#define XPAR_AXI_GPIO_NONCE_0_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_NONCE_0_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_NONCE_1 */
#define XPAR_AXI_GPIO_NONCE_1_BASEADDR 0x41260000
#define XPAR_AXI_GPIO_NONCE_1_HIGHADDR 0x4126FFFF
#define XPAR_AXI_GPIO_NONCE_1_DEVICE_ID 10
#define XPAR_AXI_GPIO_NONCE_1_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_NONCE_1_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_NONCE_2 */
#define XPAR_AXI_GPIO_NONCE_2_BASEADDR 0x41270000
#define XPAR_AXI_GPIO_NONCE_2_HIGHADDR 0x4127FFFF
#define XPAR_AXI_GPIO_NONCE_2_DEVICE_ID 11
#define XPAR_AXI_GPIO_NONCE_2_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_NONCE_2_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_NONCE_3 */
#define XPAR_AXI_GPIO_NONCE_3_BASEADDR 0x41280000
#define XPAR_AXI_GPIO_NONCE_3_HIGHADDR 0x4128FFFF
#define XPAR_AXI_GPIO_NONCE_3_DEVICE_ID 12
#define XPAR_AXI_GPIO_NONCE_3_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_NONCE_3_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_PLAINTEXT_0 */
#define XPAR_AXI_GPIO_PLAINTEXT_0_BASEADDR 0x41290000
#define XPAR_AXI_GPIO_PLAINTEXT_0_HIGHADDR 0x4129FFFF
#define XPAR_AXI_GPIO_PLAINTEXT_0_DEVICE_ID 13
#define XPAR_AXI_GPIO_PLAINTEXT_0_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_PLAINTEXT_0_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_PLAINTEXT_1 */
#define XPAR_AXI_GPIO_PLAINTEXT_1_BASEADDR 0x412A0000
#define XPAR_AXI_GPIO_PLAINTEXT_1_HIGHADDR 0x412AFFFF
#define XPAR_AXI_GPIO_PLAINTEXT_1_DEVICE_ID 14
#define XPAR_AXI_GPIO_PLAINTEXT_1_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_PLAINTEXT_1_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_PLAINTEXT_2 */
#define XPAR_AXI_GPIO_PLAINTEXT_2_BASEADDR 0x412B0000
#define XPAR_AXI_GPIO_PLAINTEXT_2_HIGHADDR 0x412BFFFF
#define XPAR_AXI_GPIO_PLAINTEXT_2_DEVICE_ID 15
#define XPAR_AXI_GPIO_PLAINTEXT_2_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_PLAINTEXT_2_IS_DUAL 0


/* Definitions for peripheral AXI_GPIO_PLAINTEXT_3 */
#define XPAR_AXI_GPIO_PLAINTEXT_3_BASEADDR 0x412C0000
#define XPAR_AXI_GPIO_PLAINTEXT_3_HIGHADDR 0x412CFFFF
#define XPAR_AXI_GPIO_PLAINTEXT_3_DEVICE_ID 16
#define XPAR_AXI_GPIO_PLAINTEXT_3_INTERRUPT_PRESENT 0
#define XPAR_AXI_GPIO_PLAINTEXT_3_IS_DUAL 0


/******************************************************************/

/* Canonical definitions for peripheral AXI_GPIO_CIPHERTEXT_0 */
#define XPAR_GPIO_0_BASEADDR 0x412D0000
#define XPAR_GPIO_0_HIGHADDR 0x412DFFFF
#define XPAR_GPIO_0_DEVICE_ID XPAR_AXI_GPIO_CIPHERTEXT_0_DEVICE_ID
#define XPAR_GPIO_0_INTERRUPT_PRESENT 0
#define XPAR_GPIO_0_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_CIPHERTEXT_1 */
#define XPAR_GPIO_1_BASEADDR 0x412E0000
#define XPAR_GPIO_1_HIGHADDR 0x412EFFFF
#define XPAR_GPIO_1_DEVICE_ID XPAR_AXI_GPIO_CIPHERTEXT_1_DEVICE_ID
#define XPAR_GPIO_1_INTERRUPT_PRESENT 0
#define XPAR_GPIO_1_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_CIPHERTEXT_2 */
#define XPAR_GPIO_2_BASEADDR 0x412F0000
#define XPAR_GPIO_2_HIGHADDR 0x412FFFFF
#define XPAR_GPIO_2_DEVICE_ID XPAR_AXI_GPIO_CIPHERTEXT_2_DEVICE_ID
#define XPAR_GPIO_2_INTERRUPT_PRESENT 0
#define XPAR_GPIO_2_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_CIPHERTEXT_3 */
#define XPAR_GPIO_3_BASEADDR 0x41300000
#define XPAR_GPIO_3_HIGHADDR 0x4130FFFF
#define XPAR_GPIO_3_DEVICE_ID XPAR_AXI_GPIO_CIPHERTEXT_3_DEVICE_ID
#define XPAR_GPIO_3_INTERRUPT_PRESENT 0
#define XPAR_GPIO_3_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_ENABLE */
#define XPAR_GPIO_4_BASEADDR 0x41240000
#define XPAR_GPIO_4_HIGHADDR 0x4124FFFF
#define XPAR_GPIO_4_DEVICE_ID XPAR_AXI_GPIO_ENABLE_DEVICE_ID
#define XPAR_GPIO_4_INTERRUPT_PRESENT 0
#define XPAR_GPIO_4_IS_DUAL 1

/* Canonical definitions for peripheral AXI_GPIO_KEY_0 */
#define XPAR_GPIO_5_BASEADDR 0x41200000
#define XPAR_GPIO_5_HIGHADDR 0x4120FFFF
#define XPAR_GPIO_5_DEVICE_ID XPAR_AXI_GPIO_KEY_0_DEVICE_ID
#define XPAR_GPIO_5_INTERRUPT_PRESENT 0
#define XPAR_GPIO_5_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_KEY_1 */
#define XPAR_GPIO_6_BASEADDR 0x41210000
#define XPAR_GPIO_6_HIGHADDR 0x4121FFFF
#define XPAR_GPIO_6_DEVICE_ID XPAR_AXI_GPIO_KEY_1_DEVICE_ID
#define XPAR_GPIO_6_INTERRUPT_PRESENT 0
#define XPAR_GPIO_6_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_KEY_2 */
#define XPAR_GPIO_7_BASEADDR 0x41220000
#define XPAR_GPIO_7_HIGHADDR 0x4122FFFF
#define XPAR_GPIO_7_DEVICE_ID XPAR_AXI_GPIO_KEY_2_DEVICE_ID
#define XPAR_GPIO_7_INTERRUPT_PRESENT 0
#define XPAR_GPIO_7_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_KEY_3 */
#define XPAR_GPIO_8_BASEADDR 0x41230000
#define XPAR_GPIO_8_HIGHADDR 0x4123FFFF
#define XPAR_GPIO_8_DEVICE_ID XPAR_AXI_GPIO_KEY_3_DEVICE_ID
#define XPAR_GPIO_8_INTERRUPT_PRESENT 0
#define XPAR_GPIO_8_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_NONCE_0 */
#define XPAR_GPIO_9_BASEADDR 0x41250000
#define XPAR_GPIO_9_HIGHADDR 0x4125FFFF
#define XPAR_GPIO_9_DEVICE_ID XPAR_AXI_GPIO_NONCE_0_DEVICE_ID
#define XPAR_GPIO_9_INTERRUPT_PRESENT 0
#define XPAR_GPIO_9_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_NONCE_1 */
#define XPAR_GPIO_10_BASEADDR 0x41260000
#define XPAR_GPIO_10_HIGHADDR 0x4126FFFF
#define XPAR_GPIO_10_DEVICE_ID XPAR_AXI_GPIO_NONCE_1_DEVICE_ID
#define XPAR_GPIO_10_INTERRUPT_PRESENT 0
#define XPAR_GPIO_10_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_NONCE_2 */
#define XPAR_GPIO_11_BASEADDR 0x41270000
#define XPAR_GPIO_11_HIGHADDR 0x4127FFFF
#define XPAR_GPIO_11_DEVICE_ID XPAR_AXI_GPIO_NONCE_2_DEVICE_ID
#define XPAR_GPIO_11_INTERRUPT_PRESENT 0
#define XPAR_GPIO_11_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_NONCE_3 */
#define XPAR_GPIO_12_BASEADDR 0x41280000
#define XPAR_GPIO_12_HIGHADDR 0x4128FFFF
#define XPAR_GPIO_12_DEVICE_ID XPAR_AXI_GPIO_NONCE_3_DEVICE_ID
#define XPAR_GPIO_12_INTERRUPT_PRESENT 0
#define XPAR_GPIO_12_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_PLAINTEXT_0 */
#define XPAR_GPIO_13_BASEADDR 0x41290000
#define XPAR_GPIO_13_HIGHADDR 0x4129FFFF
#define XPAR_GPIO_13_DEVICE_ID XPAR_AXI_GPIO_PLAINTEXT_0_DEVICE_ID
#define XPAR_GPIO_13_INTERRUPT_PRESENT 0
#define XPAR_GPIO_13_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_PLAINTEXT_1 */
#define XPAR_GPIO_14_BASEADDR 0x412A0000
#define XPAR_GPIO_14_HIGHADDR 0x412AFFFF
#define XPAR_GPIO_14_DEVICE_ID XPAR_AXI_GPIO_PLAINTEXT_1_DEVICE_ID
#define XPAR_GPIO_14_INTERRUPT_PRESENT 0
#define XPAR_GPIO_14_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_PLAINTEXT_2 */
#define XPAR_GPIO_15_BASEADDR 0x412B0000
#define XPAR_GPIO_15_HIGHADDR 0x412BFFFF
#define XPAR_GPIO_15_DEVICE_ID XPAR_AXI_GPIO_PLAINTEXT_2_DEVICE_ID
#define XPAR_GPIO_15_INTERRUPT_PRESENT 0
#define XPAR_GPIO_15_IS_DUAL 0

/* Canonical definitions for peripheral AXI_GPIO_PLAINTEXT_3 */
#define XPAR_GPIO_16_BASEADDR 0x412C0000
#define XPAR_GPIO_16_HIGHADDR 0x412CFFFF
#define XPAR_GPIO_16_DEVICE_ID XPAR_AXI_GPIO_PLAINTEXT_3_DEVICE_ID
#define XPAR_GPIO_16_INTERRUPT_PRESENT 0
#define XPAR_GPIO_16_IS_DUAL 0


/******************************************************************/

/* Definitions for driver GPIOPS */
#define XPAR_XGPIOPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_GPIO_0 */
#define XPAR_PS7_GPIO_0_DEVICE_ID 0
#define XPAR_PS7_GPIO_0_BASEADDR 0xE000A000
#define XPAR_PS7_GPIO_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_GPIO_0 */
#define XPAR_XGPIOPS_0_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID
#define XPAR_XGPIOPS_0_BASEADDR 0xE000A000
#define XPAR_XGPIOPS_0_HIGHADDR 0xE000AFFF


/******************************************************************/

/* Definitions for driver IICPS */
#define XPAR_XIICPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_I2C_0 */
#define XPAR_PS7_I2C_0_DEVICE_ID 0
#define XPAR_PS7_I2C_0_BASEADDR 0xE0004000
#define XPAR_PS7_I2C_0_HIGHADDR 0xE0004FFF
#define XPAR_PS7_I2C_0_I2C_CLK_FREQ_HZ 111111115


/******************************************************************/

/* Canonical definitions for peripheral PS7_I2C_0 */
#define XPAR_XIICPS_0_DEVICE_ID XPAR_PS7_I2C_0_DEVICE_ID
#define XPAR_XIICPS_0_BASEADDR 0xE0004000
#define XPAR_XIICPS_0_HIGHADDR 0xE0004FFF
#define XPAR_XIICPS_0_I2C_CLK_FREQ_HZ 111111115


/******************************************************************/

/* Definition for input Clock */
/* Definitions for driver QSPIPS */
#define XPAR_XQSPIPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_QSPI_0 */
#define XPAR_PS7_QSPI_0_DEVICE_ID 0
#define XPAR_PS7_QSPI_0_BASEADDR 0xE000D000
#define XPAR_PS7_QSPI_0_HIGHADDR 0xE000DFFF
#define XPAR_PS7_QSPI_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_PS7_QSPI_0_QSPI_MODE 0
#define XPAR_PS7_QSPI_0_QSPI_BUS_WIDTH 2


/******************************************************************/

/* Canonical definitions for peripheral PS7_QSPI_0 */
#define XPAR_XQSPIPS_0_DEVICE_ID XPAR_PS7_QSPI_0_DEVICE_ID
#define XPAR_XQSPIPS_0_BASEADDR 0xE000D000
#define XPAR_XQSPIPS_0_HIGHADDR 0xE000DFFF
#define XPAR_XQSPIPS_0_QSPI_CLK_FREQ_HZ 200000000
#define XPAR_XQSPIPS_0_QSPI_MODE 0
#define XPAR_XQSPIPS_0_QSPI_BUS_WIDTH 2


/******************************************************************/

/* Definitions for driver SCUGIC */
#define XPAR_XSCUGIC_NUM_INSTANCES 1U

/* Definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_PS7_SCUGIC_0_DEVICE_ID 0U
#define XPAR_PS7_SCUGIC_0_BASEADDR 0xF8F00100U
#define XPAR_PS7_SCUGIC_0_HIGHADDR 0xF8F001FFU
#define XPAR_PS7_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUGIC_0 */
#define XPAR_SCUGIC_0_DEVICE_ID 0U
#define XPAR_SCUGIC_0_CPU_BASEADDR 0xF8F00100U
#define XPAR_SCUGIC_0_CPU_HIGHADDR 0xF8F001FFU
#define XPAR_SCUGIC_0_DIST_BASEADDR 0xF8F01000U


/******************************************************************/

/* Definitions for driver SCUTIMER */
#define XPAR_XSCUTIMER_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_PS7_SCUTIMER_0_DEVICE_ID 0
#define XPAR_PS7_SCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_PS7_SCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUTIMER_0 */
#define XPAR_XSCUTIMER_0_DEVICE_ID XPAR_PS7_SCUTIMER_0_DEVICE_ID
#define XPAR_XSCUTIMER_0_BASEADDR 0xF8F00600
#define XPAR_XSCUTIMER_0_HIGHADDR 0xF8F0061F


/******************************************************************/

/* Definitions for driver SCUWDT */
#define XPAR_XSCUWDT_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_PS7_SCUWDT_0_DEVICE_ID 0
#define XPAR_PS7_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_PS7_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Canonical definitions for peripheral PS7_SCUWDT_0 */
#define XPAR_SCUWDT_0_DEVICE_ID XPAR_PS7_SCUWDT_0_DEVICE_ID
#define XPAR_SCUWDT_0_BASEADDR 0xF8F00620
#define XPAR_SCUWDT_0_HIGHADDR 0xF8F006FF


/******************************************************************/

/* Definitions for driver SDPS */
#define XPAR_XSDPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_SD_0 */
#define XPAR_PS7_SD_0_DEVICE_ID 0
#define XPAR_PS7_SD_0_BASEADDR 0xE0100000
#define XPAR_PS7_SD_0_HIGHADDR 0xE0100FFF
#define XPAR_PS7_SD_0_SDIO_CLK_FREQ_HZ 50000000
#define XPAR_PS7_SD_0_HAS_CD 1
#define XPAR_PS7_SD_0_HAS_WP 1
#define XPAR_PS7_SD_0_BUS_WIDTH 0
#define XPAR_PS7_SD_0_MIO_BANK 0
#define XPAR_PS7_SD_0_HAS_EMIO 0
#define XPAR_PS7_SD_0_SLOT_TYPE 0
#define XPAR_PS7_SD_0_CLK_50_SDR_ITAP_DLY 0
#define XPAR_PS7_SD_0_CLK_50_SDR_OTAP_DLY 0
#define XPAR_PS7_SD_0_CLK_50_DDR_ITAP_DLY 0
#define XPAR_PS7_SD_0_CLK_50_DDR_OTAP_DLY 0
#define XPAR_PS7_SD_0_CLK_100_SDR_OTAP_DLY 0
#define XPAR_PS7_SD_0_CLK_200_SDR_OTAP_DLY 0


/******************************************************************/

#define XPAR_PS7_SD_0_IS_CACHE_COHERENT 0
/* Canonical definitions for peripheral PS7_SD_0 */
#define XPAR_XSDPS_0_DEVICE_ID XPAR_PS7_SD_0_DEVICE_ID
#define XPAR_XSDPS_0_BASEADDR 0xE0100000
#define XPAR_XSDPS_0_HIGHADDR 0xE0100FFF
#define XPAR_XSDPS_0_SDIO_CLK_FREQ_HZ 50000000
#define XPAR_XSDPS_0_HAS_CD 1
#define XPAR_XSDPS_0_HAS_WP 1
#define XPAR_XSDPS_0_BUS_WIDTH 0
#define XPAR_XSDPS_0_MIO_BANK 0
#define XPAR_XSDPS_0_HAS_EMIO 0
#define XPAR_XSDPS_0_SLOT_TYPE 0
#define XPAR_XSDPS_0_IS_CACHE_COHERENT 0
#define XPAR_XSDPS_0_CLK_50_SDR_ITAP_DLY 0
#define XPAR_XSDPS_0_CLK_50_SDR_OTAP_DLY 0
#define XPAR_XSDPS_0_CLK_50_DDR_ITAP_DLY 0
#define XPAR_XSDPS_0_CLK_50_DDR_OTAP_DLY 0
#define XPAR_XSDPS_0_CLK_100_SDR_OTAP_DLY 0
#define XPAR_XSDPS_0_CLK_200_SDR_OTAP_DLY 0


/******************************************************************/

/* Definitions for driver TTCPS */
#define XPAR_XTTCPS_NUM_INSTANCES 3U

/* Definitions for peripheral PS7_TTC_0 */
#define XPAR_PS7_TTC_0_DEVICE_ID 0U
#define XPAR_PS7_TTC_0_BASEADDR 0XF8001000U
#define XPAR_PS7_TTC_0_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_0_TTC_CLK_CLKSRC 0U
#define XPAR_PS7_TTC_1_DEVICE_ID 1U
#define XPAR_PS7_TTC_1_BASEADDR 0XF8001004U
#define XPAR_PS7_TTC_1_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_1_TTC_CLK_CLKSRC 0U
#define XPAR_PS7_TTC_2_DEVICE_ID 2U
#define XPAR_PS7_TTC_2_BASEADDR 0XF8001008U
#define XPAR_PS7_TTC_2_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_PS7_TTC_2_TTC_CLK_CLKSRC 0U


/******************************************************************/

/* Canonical definitions for peripheral PS7_TTC_0 */
#define XPAR_XTTCPS_0_DEVICE_ID XPAR_PS7_TTC_0_DEVICE_ID
#define XPAR_XTTCPS_0_BASEADDR 0xF8001000U
#define XPAR_XTTCPS_0_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_0_TTC_CLK_CLKSRC 0U

#define XPAR_XTTCPS_1_DEVICE_ID XPAR_PS7_TTC_1_DEVICE_ID
#define XPAR_XTTCPS_1_BASEADDR 0xF8001004U
#define XPAR_XTTCPS_1_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_1_TTC_CLK_CLKSRC 0U

#define XPAR_XTTCPS_2_DEVICE_ID XPAR_PS7_TTC_2_DEVICE_ID
#define XPAR_XTTCPS_2_BASEADDR 0xF8001008U
#define XPAR_XTTCPS_2_TTC_CLK_FREQ_HZ 111111115U
#define XPAR_XTTCPS_2_TTC_CLK_CLKSRC 0U


/******************************************************************/

/* Definitions for driver UARTPS */
#define XPAR_XUARTPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_UART_1 */
#define XPAR_PS7_UART_1_DEVICE_ID 0
#define XPAR_PS7_UART_1_BASEADDR 0xE0001000
#define XPAR_PS7_UART_1_HIGHADDR 0xE0001FFF
#define XPAR_PS7_UART_1_UART_CLK_FREQ_HZ 50000000
#define XPAR_PS7_UART_1_HAS_MODEM 0


/******************************************************************/

/* Canonical definitions for peripheral PS7_UART_1 */
#define XPAR_XUARTPS_0_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define XPAR_XUARTPS_0_BASEADDR 0xE0001000
#define XPAR_XUARTPS_0_HIGHADDR 0xE0001FFF
#define XPAR_XUARTPS_0_UART_CLK_FREQ_HZ 50000000
#define XPAR_XUARTPS_0_HAS_MODEM 0


/******************************************************************/

/* Definition for input Clock */
/* Definitions for driver USBPS */
#define XPAR_XUSBPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_USB_0 */
#define XPAR_PS7_USB_0_DEVICE_ID 0
#define XPAR_PS7_USB_0_BASEADDR 0xE0002000
#define XPAR_PS7_USB_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Canonical definitions for peripheral PS7_USB_0 */
#define XPAR_XUSBPS_0_DEVICE_ID XPAR_PS7_USB_0_DEVICE_ID
#define XPAR_XUSBPS_0_BASEADDR 0xE0002000
#define XPAR_XUSBPS_0_HIGHADDR 0xE0002FFF


/******************************************************************/

/* Definitions for driver XADCPS */
#define XPAR_XADCPS_NUM_INSTANCES 1

/* Definitions for peripheral PS7_XADC_0 */
#define XPAR_PS7_XADC_0_DEVICE_ID 0
#define XPAR_PS7_XADC_0_BASEADDR 0xF8007100
#define XPAR_PS7_XADC_0_HIGHADDR 0xF8007120


/******************************************************************/

/* Canonical definitions for peripheral PS7_XADC_0 */
#define XPAR_XADCPS_0_DEVICE_ID XPAR_PS7_XADC_0_DEVICE_ID
#define XPAR_XADCPS_0_BASEADDR 0xF8007100
#define XPAR_XADCPS_0_HIGHADDR 0xF8007120


/******************************************************************/

#endif  /* end of protection macro */