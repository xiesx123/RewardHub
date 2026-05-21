#!/bin/bash

APP_PID_FILE="logs/pid"

# 停止 APP_PID_FILE 对应的进程
stop_app() {
    if [ -f "$APP_PID_FILE" ]; then
        local pid=$(cat "$APP_PID_FILE")
        if kill -0 "$pid" 2>/dev/null; then
            kill "$pid"
            echo "已停止进程: $pid"
        else
            echo "进程 $pid 已不存在"
        fi
        rm -f "$APP_PID_FILE"
    else
        echo "PID 文件不存在: $APP_PID_FILE"
    fi
}

case "$1" in
  start)
    nohup $HOME/.local/bin/uv run cli.py start --port 8081 > /dev/null 2>&1 &
    echo $! > "$APP_PID_FILE"
    echo "已启动，PID: $(cat $APP_PID_FILE)"
    ;;
  stop)
    stop_app
    ;;
  restart)
    stop_app
    nohup $HOME/.local/bin/uv run cli.py start --port 8081 > /dev/null 2>&1 &
    echo $! > "$APP_PID_FILE"
    echo "已重启，PID: $(cat $APP_PID_FILE)"
    ;;
  log)
    log_file="logs/creator_$(date +%Y-%m-%d).log"
    if [ -f "$log_file" ]; then
      tail -f "$log_file"
    else
      echo "日志文件不存在: $log_file"
      exit 1
    fi
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|log|oci_start|oci_stop|oci_log}"
    exit 1
    ;;
esac
