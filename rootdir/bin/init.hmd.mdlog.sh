#!/vendor/bin/sh

umask 022
export PS4='+{$LINENO:${FUNCNAME[0]}} '
set -x

Log(){
    log -p d -t hmdmodemlog $1
}

Log "Clean the log file"
/vendor/bin/diag_mdlog -k -c

Log "start hmd modem log"

mkdir -p /sdcard/hmdlogs/mdlog

fsync /sdcard/hmdlogs/

#/system/vendor/bin/diag_mdlog_system -u -f /data/vendor/hmdlogs/mdlog/diag.cfg -o /data/vendor/hmdlogs/mdlog
#modify by jacky.wei@hmdglobal.com for required by  wenming.zheng@hmdglobal.com from email at 2021.01.05
/system/vendor/bin/diag_mdlog -u -f /vendor/etc/diag_config/diag.cfg -o /sdcard/hmdlogs/mdlog -q 2

Log "end hmd modem log, exit scripty"

export PS4='+{$LINENO:${FUNCNAME[0]}} '
set +x

