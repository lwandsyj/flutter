1. pubspec.yaml 文件位于dart应用的根目录。遵循yaml 规范

2. 参数说明

+ name: 库/应用的名称，必须

+ environment： dart2 开始必须

+ dependencies： dart 依赖库

+ dev_dependencies: 开发依赖包

+ version: 版本号

+ description: 描述信息

+ homepage: 软件包主页

+ repository： 软件包的源代码存储库的URL

3. 获取包

pub get 命令确定当前应用所依赖的包，并将它们保存到中央系统缓存（central system cache）中。如果当前应用依赖了一个公开包， Pub 会从 Pub 站点 该包。对于一个 Git 依赖， Pub 会 Clone 该 Git 仓库。同样包括包的相关依赖也会被下载。例如，如果 js 包依赖 test 包， pub 会同时获取 js 包和 test 包。

        pub get

Pub 会创建一个.packages 文件（位于应用程序的根路目录下），该文件将应用程序所依赖的每个包名相应的映射到系统缓存中的包。