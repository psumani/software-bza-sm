#ifndef __USB_CNFG_H
#define __USB_CNFG_H

/* USB High Speed support*/
#define USB_HIGH_SPEED                  0

/* USB interrupt priority */
#define USB_INTR_PRIORITY               0
#define USB_DEV_PRIORITY                0   // 1 - Frame is high priority,
                                            // 2 - EPs are high priority
/* Endpoint priority setting*/
#define USB_EP_PRIORITY                 0x00000000

/* USB Events */
#define USB_SOF_EVENT                   0
#define USB_ERROR_EVENT                 1   // for debug
#define USB_SOF_FRAME_NUMB              0   // disable frame number

//DMA Settings
#define USB_DMA_DD_MAX_NUMB             0   // number of DMA descriptors
#define USB_DMA_ID_MAX_NUMB             0   // number of Isochronous DMA descriptors
#define DMA_INT_ENABLE_MASK             0   // DMA interrupt enable (End of Transfer,
                                            // New DD request, System error interrupt)
/* USB Errata */
//#define USB1_ERRATA                         // USB_NEED_CLK is always asserted
//#define USB2_ERRATA                         // U1CONNECT/U2CONNECT signal is not functional

/* USB PORT settings */
#define USB_PORT_SEL                    1

/* USB Clock settings */
#define USB_CLK_DIV                     6

/* Device power atrb  */
#define USB_SELF_POWERED                0
#define USB_REMOTE_WAKEUP               1

/* Max Interfaces number*/
#define USB_MAX_INTERFACE               1

/* Endpoint definitions */
#define Ep0MaxSize                      8
#define ReportEpHid                     ENP1_IN
#define ReportEpMaxSize                 3
#define ReportEpPollingPeriod           2   // resolution 1ms

/* Class defenitions*/
#define HID_INTERFACE_0                 0
#define HID_BOOT_DEVICE                 1
#define HID_IDLE_SUPP                   1
#define HID_ID_NUMB                     0

#define HID_MOUSE_ID                    0

/* Other defenitions */

#endif