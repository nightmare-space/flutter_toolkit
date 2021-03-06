const changeLogText = """
1.6.1:
优化:
-Rom生成默认为项目名.zip
新增:
-Rom生成后计算md5并命名

1.6.0:(2020年3月28日)
优化:
-MIUI精简列表移除系统更新
-执行精简显示删除的内容
-更新去除vendor avb算法
-添加对boot dtb的avb2.0去除
-其他细节优化
新增:
-状态栏时间显秒
-对小米10等动态分区的支持(感谢@Nosafari提供的思路)
-远程控制投屏
-此版本会有一点大是还没有分离出不必要内置的插件

1.5.9:(2020年3月18日)
修复:
-boot工具在动态分区设备无法使用的问题(需要等我晚一点更新服务器资源)
优化:
-ROM工具备份页面
-支持导出本机的system,vendor,boot,recovery

1.5.8:（2020年3月16日）
优化:
登录验证算法
修复:
工程无法创建的问题
新增:
一键集成面具Root的功能

1.5.7:（2020年3月11日）
新增:
文件管理器对apktool的部分支持(见酷安评论)
改动:
终端使用apktool工具不再需要加echo头
其它细节优化
1.5.7:（2020年3月10日）
移除所有java调用sh的引用

1.5.6:（2020年3月10日）
优化：
CPU概况页面
ROM工具经常不显示输出的情况
新增:
NightSSH初步实现，欢迎测试
MToolkit Linux端全力开发中

1.5.5:（2020年3月8日）
新增:
文件管理器批量选择功能
文件批量复制剪切删除
优化:
反复性的闪退问题

1.5.4:（2020年3月6日）
移除:
黑域开关功能
优化:
开机动画快捷替换功能
DIP更改风险优化
根据建议更改ROM工程切换
ROM精简不删除小米钱包
新增Apktool终端的支持
不过这个版本存在几率闪退现象，原因未知，慎重更新

1.5.3:（2020年3月5日）
优化:
用户密码明文保存的问题
采用AES对称加密储存
其他细节优化
新增:
ZipAlign对齐优化

1.5.2:（2020年3月2日）
修复:
一系列的主题问题
改动:
按照unix标准重写终端模拟器(目前的表现可能还没有那么好)
终端模拟器开源
将ROM工具弹窗全部换成新的终端
NiSsh功能开发中(类似xshell,juiceSsh)
优化:
优化ROM页面多处问题
细节优化，第一次打开app，不会同时存在面具弹窗与储存权限弹窗冲突的情况
一些页面过渡优化

1.5.1:（2020年2月20日）
-继续在文件管理器页面发力了
-把文件的复制功能与剪切功能写了
-修了几个小问题
文件管理器依旧内测！！！
开始上网课了，如果把安卓su的提权搞懂能很大帮到这个工具箱

1.5.0:（2020年2月18日）
-修复返回按键无法拦截的问题
-文件夹管理器复制功能初步实现
-文件管理器支持新建文件夹与文件
文件管理器页面均为内测!!!

1.4.9:（2020年2月16日）
-修复ROM页面无法拉到最下面的bug
-添加之前移除的简易终端
-修复文件管理器根目录一些文件夹错乱的情况
-修复一些文字错乱的情况

1.4.8:（2020年2月15日）
-修复主题无法保存的bug
-修复dat2img转换时页面异常返回的bug
-修复破解卡米丢失META-INF文件夹的问题
-重写了一点文件管理器以支持桌面端
-尝试加入完整终端模拟器失败(so库编译失败)

1.4.7:（2020年2月13日）
-修复上个版本改崩的大问题
-修复精简是不删除的问题
-修复avb没有完全去除的问题
-增加精简列表
-增加账户名称更改与密码修改功能

1.4.6:（2020年2月12日）
-支持ROM工程切换
-移除一些不必要的显示
-优化页面切换效果

1.4.5:（2020年2月12日）
-修复一键式卡米破解失败的问题

1.4.4:（2020年2月11日）
-优化ROM工具页面
-优化软检测更新页面
-去除系统定制页面(移动到一键)
-修复用户信息页面title标题歪掉的问题
-修复ab机型合并失败
-移除SharePreference
-移除PackageInfo
-支持替换vbmeta.img

1.4.3:（2020年2月10日）
-添加一加刷机包Payload.bin的解压
-修复修改DPI时布局被卡进去的问题
-夜间主题适配常用功能
每天尽量更一点

1.4.2:（2020年2月9日）
-优化一键制作界面
-添加去除Vendor中的data锁
-破解卡米支持一键
-暂时移除系统定制功能

1.4.1:（2020年2月8日）
-重构上百个dart文件(规范类名，方法名，不影响具体功能)
-优化侧栏切换页面算法
-添加侧栏当前页面指示器
-修复设置默认页面小房子图标不及时变化的问题
-破解卡米兼容到安卓10

1.4.0:（2020年2月7日）
-优化avb去除
-移除所有bmob SDK，采用rest API
-优化账号多处登录算法

1.3.9: (2020年2月6日)
-新增主题切换动画
-修复新账号开通Vip重启软件丢失问题

1.3.8: (2020年2月4日)
-适配深色主题
-修复若干Bug(在内测群更新过很多次，不记得改了哪儿了)
-部分UI优化
-更改了资源所在的源

1.3.7: (2019年12月31日)
-从1.3.6到1.3.7很多bug修了不记得了
-修复资源安装问题
-修复工具箱busybox与内置busybox冲突问题
-修复安卓Q合并odex丢失framework问题
-修复sar机型Selinux安全上下文问题
-添加avb去除
-更改内核宽容方案
-添加MIUI的精简方案

1.3.6: (2019年11月16日)
-修复资源无法安装的问题

1.3.5: (2019年11月16日)
-此版本测试版，还没有重构完整，先更一次，把一些没有写好的功能临时取消了

1.3.4: (2019年10月20日)
-将永久会员显示为永久不再为具体时间(即将生效)
-修复ROM页面生成刷机包没有脚本问题

1.3.3: (2019年10月19日）
-资源可以多个同时下载啦
-ROM相关功能已基本稳定(会员功能正式开通,作者也要恰饭的,原测试会员即将撤销)

1.3.2: (2019年10月14日）
-远程控制重构中
-添加数据线刷机功能

1.3.1: (2019年10月12日）
-更新了软件主题风格
-几个新功能还在开发中
-工具箱页面开启ADB调试后能显示ip地址
-优化状态栏的颜色显示
-重构了很多代码

1.3.0: (2019年10月6日）
-修复安卓Q的插件安装问题
-对Rom工具进行各种优化
-更新Deodex算法
-修复一大堆群友反馈的Bug
-优化资源管理器的UI

1.2.9: (2019年10月1日）
-修复终端模拟器一些问题
-换了服务器源(这个影响有点大)

1.2.8: (2019年9月27日）
-记不起改了啥；
-这段时间没更还是改的挺多；
-同步一下最新的代码；

1.2.7: (2019年8月19日）
-零零散散修复了一些

1.2.6: (2019年8月12日）
-合并Deodex兼容到8.0
-修复解压ROM失败
-添加一键制作功能
-boot处理工具
-反编译功能初步实现（目前能反，回编译dex，反编译apk马上就能开发出来）
-一键内核宽容

1.2.5: (2019年8月5日）
-解压img不受文件名的限制，解压到文件名对应的文件夹，而不是固定的system文件夹
-img打包可以打包ROM下所有的文件夹，
-img解压后即可手动删除，不需要留在打包时识别大小
-制作刷机包丢失*.patch.dat文件的问题
-增加各种转换提供默认路径，优先system路径
-解压刷机包增加对不是zip后缀的支持
-刷机包制作无法刷入的bug
-替换拉取官方文件管理器为MX自带
-修复分区打包丢失用户添加文件fs_config的问题
-7.1python环境无法使用的问题(如之前无法使用，清除数据重新下载python环境)
-添加错误日志记录功能

1.2.4: (2019年8月1日）
-修复ROM相关功能的各种逻辑错误

1.2.3: (2019年8月1日）
-修复img打包丢失符号链接得问题
-修复工具箱需要重复登录的问题
-添加ROM相关功能，刷机包制作

1.2.2: (2019年7月31日)
-修复合并dex工具残缺
-优化合并dex逻辑
-修复一些细节的bug
感谢qq@Nosafari,@116868388及群友的测试

1.2.1: (2019年7月29日）
用户管理系统上线（左侧拉栏点击旋转的logo进行注册登录）
将一些功能独立到侧拉栏（终端模拟器，应用管理器，）
文件管理器初步实现（几乎不能用）
重写终端模拟器（实现简单终端）
添加代码编辑器（可在MX工具箱写Python跟C语言）
添加ROM相关工具（Brotli，Sdat2img,解包，打包等）

1.2.0: (2019年6月23日）
ListView取消原生安卓效果
加入了过度动画的资源(上次不小心删了)
增加资源检测(设置页面)
添加获取面具Root功能
将由下到上的动画更改为透明度渐变(需打开动画)
增加了Dialog动画的速度
增加自动输入文本功能

1.1.9: (2019年6月10日）
-MAC更改功能
-重写了MIUI桌面布局更改的逻辑
-撤销了暂时没用到的资源文件,减少了体积

1.1.8: (2019年5月28日
-重写应用管理页面！！！（后面加操作提示）
-增加Selinux开关
-增加电量伪装功能

1.1.7: (2019年5月20日）
-优化应用管理页面
-增加build编辑
-根据反馈增加开关内部过度动画功能

1.1.6: (2019年5月7日）
-增加应用冻结列表左右滑动删除功能
-系统应用也能被增加到应用冻结列表（谨慎操作）
-修复一些页面红掉的bug（没修复完，剩下的作者复现不了bug）

1.1.5: (2019年5月5日）
-应用管理功能全面优化
-可以批量卸载用户/系统软件
-可以批量杀掉进程
-可添加批量冻结列表,支持一键冻结应用
-重写WIFI密码查看,不再使用原生方法
--修复桌面布局修改部分手机失去按钮

1.1.4: (2019年4月25日）
支持冻结程序等功能

1.1.3: (2019年4月20日）
-增加Boot跟Recovery备份与刷入功能
-CPU动画增加颜色渐变

1.1.2: (2019年4月16日）
-增加对Framework框架的备份
-支持全局选择面具模块模式或者普通模式

1.1.1: (2019年4月11日）
-修复安卓6.0以下的安装问题

1.0.9: (2019年4月7日）
-初步开发CPU功能
-优化一丢丢逻辑

1.0.8: (2019年4月5日）
-优化一丢丢逻辑
-换了个Logo

1.0.7: (2019年4月4日）
-取消垃圾的启动动画（逻辑上导致部分手机无法启动）
-加入桌面布局样式（有主题的情况下也行了）
-优化网络ADB调试功能
-禁用测试中功能
-优化修改开机动画功能
-电池风格一键切换（有官方没有的电量外显）
-添加两个过度动画

1.0.6: (2019年4月3日）
-感谢酷安老哥@vifrification的反馈

1.0.5: (2019年4月2日）
-重写大量布局，修复大量逻辑
-支持安卓9.0

1.0.4: (2018年12月17日）
-代码全部重写，采用谷歌Flutter跨平台框架
-软件原生跟Flutter混合开发

1.0.3: (2018年10月15日）
-兼容安卓8.0，重写大量代码

1.0.2: (2018年07月01日)
-软件界面换新，代码全部重写，采用NavigationView+ToolBar+TabLayout+ViewPager+Fragment布局,

1.0.1: (2018年02月13日)
-修复一些可执行的脚本

1.0.0: (2018年02月04日) 
-程序的开始 
-PreferenceFragment继承AppCompatActivity布局，局限性大 
-简单的布局，简单的代码，实用的功能 
-采用大量线程处理
-软件不开源,不加固不混淆，欢迎使用反编译后得到的源码
""";
