1. 锁定屏幕方向

            void main() {
                AppSettings settings = AppSettings();
                // Don't allow landscape mode
                SystemChrome.setPreferredOrientations([
                    DeviceOrientation.portraitUp,
                    DeviceOrientation.portraitDown,
                ])
                .then((_) => runApp(
                    MyApp(settings: settings),
                ));
            }