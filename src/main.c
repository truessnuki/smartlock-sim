#include "common.h"

#include "hal/uart.h"
#include "hal/clock.h"
#include "hal/clutch_eng.h"
#include "hal/turn_eng.h"
#include "hal/led.h"
#include "hal/hall_sensor.h"
#include "hal/adc.h"

#include "app/keyturn_ctrl/keyturn_ctrl.h"
#include "app/logging/logging.h"
#include "app/dispatcher/dispatcher.h"

#include <string.h>

#include <windows.h>

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

#ifdef SIMULATION
        if(getstatus(status) == STATUS_KILL_SIMULATION)
        {
            break;
        } else
#endif
        if(getstatus(status) != STATUS_SUCCESS)
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
