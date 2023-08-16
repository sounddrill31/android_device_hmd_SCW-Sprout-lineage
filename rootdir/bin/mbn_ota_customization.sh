#! /vendor/bin/sh

chmod 777 /data/vendor/modem_config/mcfg_sw/ -R
chown -hR radio.system /data/vendor/modem_config/*

setprop persist.vendor.mbn.bind 2
