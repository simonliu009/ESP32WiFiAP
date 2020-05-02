deps_config := \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/app_trace/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/aws_iot/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/bt/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/driver/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/efuse/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp32/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp_event/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp_http_client/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp_http_server/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esp_https_ota/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/espcoredump/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/ethernet/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/fatfs/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/freemodbus/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/freertos/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/heap/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/libsodium/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/log/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/lwip/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/mbedtls/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/mdns/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/mqtt/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/nvs_flash/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/openssl/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/pthread/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/spi_flash/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/spiffs/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/unity/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/vfs/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/wear_levelling/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/wifi_provisioning/Kconfig \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/app_update/Kconfig.projbuild \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/simonliu/Espressif/ESP32/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/simonliu/Espressif/ESP32/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
