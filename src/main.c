// basic
#include <nuki_common.h>

#ifndef SIMULATION
#error "Please #define SIMULATION for this project"
#endif
// hal
#include "hal/uart.h"
#include "hal/clock.h"
#include "hal/clutch_eng.h"
#include "hal/turn_eng.h"
#include "hal/led.h"
#include "hal/hall_sensor.h"
#include "hal/adc.h"
// sal
#include "sal/keyturn_ctrl/keyturn_ctrl.h"
#include "sal/logging/logging.h"
#include "app/dispatcher/dispatcher.h"

#include <string.h>
#if defined(WIN64) || defined(WIN32)
#include <windows.h>    // Sleep
#elif defined(LINUX)
#include <unistd.h>
void Sleep(unsigned int milliseconds)
{
    usleep(milliseconds * 1000);
}
#endif

int main()
{
    // hal initialize
    uart_init(115200);


    log_init();

    adc_init();

    clock_init();

    cluch_eng_init();

    turn_eng_init();

    hall_sensor_init();

    led_init();

    // app initialize
    dispatcher_init();

    keyturn_ctrl_init();

    log_i("init done");

    status_t status;

    while(1)
    {
        status = dispatcher_task();

        if(getstatus(status) == STATUS_KILL_SIMULATION)
        {
            break;
        } else if(getstatus(status) != STATUS_SUCCESS)
        {
            log_e("%s: %s", compstr(status), errstr(status));
        }

        status = keyturn_ctrl_task();

        if(getstatus(status) != STATUS_SUCCESS)
        {
            log_e("keyturn_ctr_task status: %s", errstr(status));
            break;
        }

        Sleep(10);
    }


    log_i("stop smartlock!");

    // app terminate
    keyturn_ctrl_terminate();


    // hal terminate
    led_terminate();

    hall_sensor_terminate();

    turn_eng_terminate();

    cluch_eng_terminate();

    clock_terminate();

    adc_terminate();

    uart_terminate();

    return 0;
}
