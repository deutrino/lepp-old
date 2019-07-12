WEBMIN_FW_TCP_INCOMING = 22 80 443 5432 12320 12321 12322   # TODO: check postgres port

PHP_VERSION=7.2

COMMON_OVERLAYS += tkl-webcp adminer nginx
COMMON_CONF += tkl-webcp adminer-nginx adminer-pgsql

include $(FAB_PATH)/common/mk/turnkey/pgsql.mk
include $(FAB_PATH)/common/mk/turnkey/php.mk
include $(FAB_PATH)/common/mk/turnkey.mk
