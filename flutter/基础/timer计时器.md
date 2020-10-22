1. timer

         /// 启动倒计时的计时器。
        void _startTimer() {
            _timer = Timer.periodic(Duration(seconds: 1), (timer) {
                setState(() {});
                if (_seconds <= 1) {
                    widget.onCountDownFinishCallBack(true);
                    _cancelTimer();
                    return;
                }
                _seconds--;
            });
        }

        /// 取消倒计时的计时器。
        void _cancelTimer() {
            _timer?.cancel();
        }