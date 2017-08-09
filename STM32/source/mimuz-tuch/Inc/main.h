/*
 * main.h
 *
 *  Created on: 2016/08/22
 *      Author: dfm1

  (CC at)2016 by D.F.Mac. @TripArts Music
 */

#ifndef MAIN_H_
#define MAIN_H_

#define LEDTIMEMAX 7
#define WAIT_TIME_MS 1

void SystemClock_Config(void);
void Error_Handler(int num);
static void MX_GPIO_Init(void);

static void onNoteOn(uint8_t ch, uint8_t note, uint8_t vel);
static void onNoteOff(uint8_t ch, uint8_t note, uint8_t vel);
static void onCtlChange(uint8_t ch, uint8_t num, uint8_t value);

#define TOUCH_CHANNELS 6
#define SENSOR_MARGIN_BASE   30 // 13
#define SENSOR_MARGIN_DIV    768 //  384
#define SENSOR_MARGIN_LIMIT  15 // 7
#define SENSOR_DOWN_VALUE    5  // 2
#define SENSOR_UP_VALUE      9  // 4
#define SENSOR_CHECK_NUM     15 // 7
#define SENSOR_CALIB_TIMES  512
#define SENSOR_FILTER_DIV    12 // 4

#define SEND_DBG_KIND_VAL 0
#define SEND_DBG_KIND_COMP 1
#define DBG_SEND_INTERVAL 100


typedef struct _TTouchGPIO{
  GPIO_TypeDef *pOutGPIOPort;
  GPIO_TypeDef *pLEDGPIOPort;
  GPIO_TypeDef *pInGPIOPort;
  uint16_t OutPin;
  uint16_t LedPin;
  uint16_t InPin;
  uint16_t dummy;
} TTouchGPIO;

void sensorLEDOn(int ch);
void sensorLEDOff(int ch);
void sensorPinOut(int ch);
void sensorPinClear(int ch);
int sensorPinCheck(int ch);
void sensorMeasure(int ch);
void sensorLedBlink(void);
void sensorCalibration(void);

void trigNoteOff();
int main(void);

void sendDbgData(int kind);

#endif /* MAIN_H_ */
