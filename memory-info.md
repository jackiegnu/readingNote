
手机内存使用信息对比
====================
[TOC]

##三星手机与小米手机对比
>**对比型号**
> 三星手机：SM-G9208 （Galaxy S6）
>  三星手机：SM-J5008 （Galaxy j5）   
> 小米手机：Note(MI 4W)

##平台信息对比
|手机厂商|Android platform| Kernel|
|:---:|
|Samsung-SM-G9208| 5.1.1|3.10.51
|Samsung-SM-J5008 | 5.1|3.10.49
|MI|4.4.4|3.4.0|
|---|

##硬件信息对比
###Samsung-SM-G9208手机
[SAMSUNG Exynos7420](http://zhidao.baidu.com/link?url=L-puFLH7JVQz_O1ZTnQZDBy-aW3Us-1tkx49Z86aj6yoGTiqG0CLL8IfhfqTbNj4qNPB5sVloUgDzDHsY0LxjI2Xs8VHiQn8bqETQhTjgQi)

>*Big.little 8核* 
>*64bit处理器*

```
$ adb shell cat /proc/cpuinfo
Processor       : AArch64 Processor rev 0 (aarch64)
processor       : 0
processor       : 1
processor       : 2
processor       : 3
processor       : 4
processor       : 5
processor       : 6
processor       : 7
Features        : fp asimd aes pmull sha1 sha2 crc32
CPU implementer : 0x41
CPU architecture: AArch64
CPU variant     : 0x1
CPU part        : 0xd07
CPU revision    : 0

Hardware        : SAMSUNG Exynos7420
```

###Samsung-SM-GJ5008 手机
Qualcomm Technologies, Inc MSM8916

> *四核ARMv8 *
> *64Bit 处理器
```
$ adb shell cat /proc/cpuinfo
processor       : 0
model name      : ARMv7 Processor rev 0 (v7l)
BogoMIPS        : 38.40
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32 evtstrm
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 0

processor       : 1
model name      : ARMv7 Processor rev 0 (v7l)
BogoMIPS        : 38.40
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32 evtstrm
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 0

processor       : 2
model name      : ARMv7 Processor rev 0 (v7l)
BogoMIPS        : 38.40
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32 evtstrm
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 0

processor       : 3
model name      : ARMv7 Processor rev 0 (v7l)
BogoMIPS        : 38.40
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32 evtstrm
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 0

Hardware        : Qualcomm Technologies, Inc MSM8916
Revision        : 0004
Serial          : 0000de910000d417
Processor       : ARMv7 Processor rev 0 (v7l)
```


###小米手机
[Qualcomm MSM8974PRO-AC](http://baike.baidu.com/link?url=vdWLQRrsYuMet5GvNmK0Be-sT6erDIm2cGQWh250FD0jLLMH148agSG7tu3mnNTrxurIE4eWLBTw3Afj-2Gny_)

> *四核ARMv7 *
> *32Bit 处理器
```
$ adb shell cat /proc/cpuinfo
Processor       : ARMv7 Processor rev 1 (v7l)
processor       : 0
BogoMIPS        : 38.40

processor       : 1
BogoMIPS        : 38.40

processor       : 2
BogoMIPS        : 38.40

processor       : 3
BogoMIPS        : 38.40

Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt
CPU implementer : 0x51
CPU architecture: 7
CPU variant     : 0x2
CPU part        : 0x06f
CPU revision    : 1

Hardware        : Qualcomm MSM8974PRO-AC
Revision        : 0000
Serial          : 0000000000000000
```
###硬件对比结果

>|手机厂商| 处理器位数| ARM 架构信息 | CPU核数| CPU频率(GHz) | RAM(KB) | 
> |:---:|-----|-----|
> |Samsung -SM-G9208| 64|Cortex-A57 & Cortex-A53| 8 | 2.1 & 1.5| 2746864|
>  |Samsung -SM-J5008| 64(不确定)|cortex A53 | 4 | 1.2| 1421944 |
> |MI|32|??| 4 | 2.5 | 2932012|
>|---|

##手机对比操作流程
- 手机重启
- 系统重启后运行 dumpsys > xx-dumpsys 命令得到手机系统的运行信息
- 再次手机重启后， 运行dumpsys meminfo > xx-meminfo获得手机内存的信息
>xx-dumpsys分别代表：samsung-dumpsys 与 mi-dumpsys
>xx-meminfo分别代表：samsung-meminfo 与 mi-meminfo

##开机后手机运行进程对比


###Native进程的内存占用对比
|   进程名  |Samsung-SM-G9208(KB)|Samsung-SM-J5008(KB)  | MI(KB) | 
|:--------|:-------------:|:-----------:| :--:|
| system | **177325** |76860 | 30763 | Y|
| com.android.phone | 29515| 32670 |  12004| Y|
|com.android.systemui|**119156**|  50810 | 52710| Y|
|mediaserver|26671| 13789 |18566| Y|
|surfaceflinger|25513| 18613 | 6247| Y|
|zygote|23944| 11061 |11827| Y|
|com.android.mms|22502| 15068 | 13436| Y|
|com.android.bluetooth|17039| 0| 9268| Y|
|com.android.nfc| 14422|6829 |  0 |
|android.process.acore|12234| 9851 |13340|
|zygote64|12137|0| 0|
|android.process.media|9385| 8402 |12491|
|com.android.incallui|8494| 8171 |15225| Y|
|rild|6183(双卡双待)| 3946(双卡双待)|  4021(单卡)|
|rild|5738(双卡双待)| 3558(双卡双待)| 0 |
|vold|6144| 3829 | 573
|drmserver|4678|2449 |1117
|qmuxd|1373|366 | 498
|keystore|1277| 565 | 396
|netd|1163| 334 |657
|/init|1120| 622 | 533
|ueventd|799| 496 | 618
|servicemanager|582| 167 | 129
|installd|549| 61 | 165
|debuggerd|533|112 |153
|adbd|516|260 |329
|dumpsys|423| 254 |175
|immvibed|384| 0 | 431
|----|

>**Native进程**
>定义为由Google实现其基本功能，是Android Framework基本组成，可以由手机厂商自行修改定义的部分。

>**总结**：
>由以上Native进程的内存信息可以得出如下结论：
> --- 相同进程Samsung手机较MI手机内存占用较大些，由于三星在Google的基础上进行了大量修改。
> --- Samsung-G9208 手机的**system**点用为177MB， 友商(小米)为30MB。
> --- Samsung-G9208 手机的**com.android.systemui**点用为119MB， 友商(小米)为52MB。  
> --- 其他进程基本上差别不大。

###进程信息对比
>|手机厂商| 进程总数 | 占用内存(KB)
>|:---:| :---:| :----:|
>|Samsung-SM-G9208| 133| 1837695 
>|Samsung-SM-J5008| 108| 569219 
>|MI|99|518007|2257973| 518007 
>|---|


###内存信息对比

>|手机厂商| Total(KB) | Used(KB) | Free(KB)
>|:---:|
>|Samsung-SM-G9208| 2746864 | 1837695|855610 
>|Samsung-SM-J5008| 1421944| 603489|650935
>|MI|2932012|518007|2257973
>|---|

##进程与内存信息
###Samsung-SM-G9208 手机内进程信息
>**内存使用情况**：
>Total RAM: 2746864 kB
 >Free RAM: 855610 kB 
 >Used RAM: 1837695 kB
 >Lost RAM: 53559 kB
 >**进程数目**: 133

| 进程名 | 内存占用（KB）| PID|
|------|
|com.sec.android.app.launcher|255148|4509|
|com.android.keyguard.keyguardwallpaper|236156|4173|
|system|177325|3579|
|com.android.systemui|119156|4073|
|com.samsung.inputmethod|38438|4899|
|com.samsung.android.app.galaxyfinder:tagService|34062|5310|
|com.sec.android.widgetapp.ap.hero.cmaweather:surfaceWidget|29934|5035|
|com.android.phone|29515|4491|
|com.android.systemui.imagewallpaper|28034|4323|
|com.android.systemui.recentsactivity|27275|4277|
|mediaserver|26671|2999|
|surfaceflinger|25513|2973|
|com.sec.imsservice|25455|4578|
|zygote|23944|3031|
|com.android.mms|22502|7402|
|com.samsung.android.providers.context|19855|5595|
|com.samsung.android.app.sreminder:cardproviders|18759|4626|
|com.android.bluetooth|17039|6361|
|com.sec.spp.push|14688|8121|
|com.android.nfc|14422|4474|
|android.process.acore|12234|4849|
|zygote64|12137|3028|
|com.samsung.android.sconnect|11583|8540|
|com.bst.airmessage|11209|5733|
|com.trustonic.tuiservice|10911|6595|
|com.samsung.android.app.FileShareServer|10840|8301|
|com.sec.android.daemonapp|9886|4202|
|com.android.contacts|9704|5675|
|com.osp.app.signin|9653|8420|
|com.sec.android.app.samsungapps|9502|8446|
|android.process.media|9385|4122|
|com.samsung.dcm:DCMService|8944|8167|
|com.sec.imslogger|8886|4688|
|com.policydm|8818|6748|
|com.android.incallui|8494|6655|
|com.sec.android.gallery3d|8391|8202|
|com.samsung.android.themecenter:manager|7011|4090|
|com.samsung.android.MtpApplication|6902|8267|
|com.sec.android.emergencymode.service|6484|4455|
|rild|6183|3105|
|vold|6144|2971|
|com.enhance.gameservice|5809|6610|
|rild|5738|2995|
|com.sec.spp.push:RemoteDlcProcess|5492|8101|
|sdp_cryptod|5173|3035|
|com.wssyncmldm|5108|8628|
|com.samsung.android.themestore|5090|8482|
|com.android.providers.calendar|5056|8331|
|com.android.calendar|4978|7979|
|org.simalliance.openmobileapi.service:remote|4679|4672|
|drmserver|4678|2998|
|com.sec.android.diagmonagent|4673|8347|
|com.sec.android.app.music:service|4645|8186|
|com.sec.android.fotaclient|4469|8366|
|com.samsung.klmsagent|4259|6056|
|com.sec.android.service.sm|4085|7616|
|com.tencent.engine|4060|5880|
|com.bst.floatingmsgproxy|4033|7944|
|com.samsung.android.sm|4025|8610|
|com.sec.pcw.device|4008|8316|
|com.sec.android.provider.logsprovider|3990|4941|
|wpa_supplicant|3987|4266|
|tv.peel.app|3928|8466|
|com.samsung.android.sm.widgetservice|3914|4813|
|com.samsung.android.SettingsReceiver|3856|7810|
|com.amap.android.location|3797|4381|
|com.sec.phone|3592|5256|
|com.samsung.android.app.assistantmenu|3490|8230|
|com.samsung.hs20settings|3462|5504|
|com.sec.android.app.simcardmgr|3389|7860|
|com.sec.android.soagent|3288|8384|
|com.sec.smartcard.manager|3287|8250|
|com.samsung.android.drivelink.stub|3237|8507|
|com.samsung.authentication.gba:GBA|3218|7043|
|com.samsung.android.keyguardwallpaperupdator|3205|8524|
|com.sec.EnhancedDataManagement|3169|5380|
|com.sec.bcservice|3159|7438|
|com.samsung.aasaservice|3142|6903|
|com.sec.android.providers.chinaholiday|3093|8570|
|com.android.managedprovisioning|3043|7488|
|com.sec.hearingadjust|3012|7454|
|com.sec.android.app.popupuireceiver|2946|7927|
|com.samsung.authentication.gba|2938|5395|
|com.samsung.android.app.powersharing|2925|8404|
|com.sec.android.widget.myeventwidget|2896|7964|
|secure_storage_daemon|2794|3051|
|com.android.defcontainer|2768|4868|
|bintvoutservice|1924|3017|
|apaservice|1920|3000|
|jackservice|1513|3002|
|ks|1434|3860|
|qmuxd|1373|3037|
|keystore|1277|3008|
|netd|1163|2991|
|/init|1120|1|
|at_distributor|1077|3039|
|sensorhubservice|903|3015|
|bauthserver|887|3047|
|drsd|864|3013|
|ueventd|799|1932|
|mcDriverDaemon|785|2972|
|tlc_server|769|3875|
|tlc_server|758|3874|
|tlc_server|748|3876|
|ss_conn_daemon|744|2996|
|connfwexe|741|2987|
|androidshmservice|641|3114|
|npsmobex|619|3011|
|servicemanager|582|2970|
|debuggerd64|581|2993|
|installd|549|3003|
|otp_server|545|3970|
|debuggerd|533|2992|
|auditd|524|5350|
|adbd|516|3054|
|logd|515|2967|
|sh|504|3019|
|smdexe|498|2985|
|lmkd|473|2969|
|edmaudit|471|2988|
|ss_kbservice_daemon|451|2997|
|healthd|440|2968|
|dhcpcd|434|4958|
|mdm_helper|423|2977|
|dumpsys|423|9081|
|mdm_helper_proxy|411|3055|
|immvibed|384|2974|
|ddexe|364|2984|
|cs|358|3128|
|diag_uart_log|275|3036|
|argosd|268|3016|
|IPSecService|264|3018|
|bootchecker|252|3041|
|watchdogd|189|2857|
|---|

### Samsung-J5008 内进程信息
>**内存使用情况**：
>Total RAM: 1421944 kB
 Free RAM: 657229 kB 
 Used RAM: 569219 kB 
 Lost RAM: 195496 kB
 
> **进程总数**：108
 
| 进程名 | 内存占用（KB）| PID|
|------|
|system|76860 | 976
|com.android.systemui|50810 | 1139
|com.android.keyguard.keyguardwallpaper|49564 | 4488
|com.sec.android.app.launcher|42421 | 1480
|com.android.phone|32670 | 1458
|com.android.settings|24259 | 3445
|com.android.systemui.imagewallpaper|21211 | 1329
|com.samsung.inputmethod|18859 | 1505
|surfaceflinger|18613 | 248
|com.samsung.android.sm|15123 | 1784
|com.android.mms|15068 | 2057
|com.sec.android.app.camera|14693 | 3289
|mediaserver|13789 | 271
|com.sec.android.gallery3d|12738 | 3792
|mm-qcamera-daemon|12620 | 281
|zygote|11061 | 285
|com.sec.android.widgetapp.ap.hero.cmaweather:surfaceWidget|10384 | 1745
|android.process.acore|9851 | 1634
|com.sec.android.app.sbrowser|9290 | 3247
|android.process.media|8402 | 3591
|com.android.contacts|8298 | 1869
|com.android.incallui|8171 | 1831
|com.samsung.android.app.sreminder:cardproviders|7335 | 1730
|com.android.nfc|6829 | 1451
|com.sec.enterprise.knox.cloudmdm.smdms|6824 | 3417
|com.android.calendar|6173 | 3266
|com.sec.android.app.clockpackage|5643 | 3146
|com.sec.android.app.music:service|5585 | 4457
|com.samsung.android.app.sreminder:reminderservice|5535 | 1395
|com.samsung.android.MtpApplication|4670 | 3681
|com.wssyncmldm|4486 | 3911
|com.sec.android.daemonapp|4049 | 1240
|com.sec.android.emergencymode.service|4014 | 1433
|com.android.providers.calendar|3970 | 3890
|rild|3946 | 259
|vold|3829 | 247
|rild|3558 | 562
|com.sec.android.provider.logsprovider|3074 | 1544
|com.sec.android.diagmonagent|3058 | 3939
|org.simalliance.openmobileapi.service:remote|2999 | 1671
|com.sec.phone|2990 | 2453
|com.samsung.android.SettingsReceiver|2922 | 1279
|com.sec.android.widgetapp.dualclockdigital|2866 | 3522
|com.amap.android.location|2689 | 1371
|com.samsung.android.app.assistantmenu|2634 | 3859
|com.sec.android.widgetapp.easymodecontactswidget|2613 | 3539
|com.samsung.android.themecenter:manager|2604 | 1157
|com.sec.android.app.simcardmgr|2593 | 3475
|com.sec.spp.push:RemoteDlcProcess|2564 | 3750
|com.qualcomm.qti.services.secureui:sui_service|2545 | 1844
|com.samsung.android.email.widget|2523 | 3715
|com.sec.spp.push|2495 | 3733
|com.sec.spp.push:RemoteNotiProcess|2487 | 3770
|drmserver|2449 | 270
|com.sec.smartcard.manager|2355 | 3826
|com.sec.android.pagebuddynotisvc|2313 | 2764
|com.sec.bcservice|2277 | 3095
|com.sec.android.app.mt|2196 | 3230
|com.sec.android.widgetapp.dualsimwidget|2125 | 3460
|com.sec.android.app.popupuireceiver|2079 | 3606
|com.sec.android.widgetapp.digitalclock|1938 | 3507
|com.sec.android.Kies|1906 | 4380
|com.sec.modem.settings|1881 | 3353
|com.android.defcontainer|1873 | 4270
|com.sec.tcpdumpservice|1831 | 3490
|audiod|928 | 302
|at_distributor|633 | 290
|/init|622 | 1
|keystore|565 | 434
|ueventd|496 | 200
|thermal-engine|445 | 282
|cs|419 | 433
|qmuxd|366 | 326
|qseecomd|355 | 419
|netd|334 | 264
|mcDriverDaemon|325 | 467
|auditd|325 | 1820
|imsqmidaemon|296 | 284
|ATFWD-daemon|296 | 295
|tlc_server|293 | 1052
|tlc_server|293 | 1053
|otp_server|290 | 1067
|adbd|260 | 4411
|time_daemon|254 | 297
|dumpsys|254 | 4523
|qseecomd|250 | 253
|sdp_cryptod|246 | 289
|smdexe|231 | 267
|logcat|228 | 4448
|logcat|228 | 4450
|perfd|218 | 1944
|wcnss_service|207 | 283
|healthd|192 | 243
|npsmobex|168 | 269
|servicemanager|167 | 246
|ddexe|158 | 266
|connfwexe|145 | 268
|loc_launcher|138 | 293
|edmaudit|132 | 260
|rmt_storage|128 | 256
|drsd|125 | 261
|logd|118 | 242
|debuggerd|112 | 265
|lmkd|107 | 245
|rfs_access|107 | 251
|installd|61 | 272
|bootchecker|26 | 291
|diag_uart_log|19 | 287
|---|

###MI手机内进程信息
----------------------
>**内存使用情况**：
>Total RAM: 2932012 kB
> Free RAM: 2257973 kB
> Used RAM: 518007 kB 
> Lost RAM: 156032 kB
> **进程数目**: 99

| 进程名 | 内存占用（KB）| PID|
|------|
|com.miui.home|57065|1552|
|com.android.systemui|52710|1284|
|system|30763|1183|
|com.baidu.input_mi|20860|1439|
|mediaserver|18566|247|
|com.android.incallui|15225|1803|
|com.android.mms|13436|2936|
|android.process.acore|13340|1785|
|android.process.media|12491|1421|
|com.android.phone|12004|1480|
|zygote|11827|244|
|com.xiaomi.channel|11704|2177|
|com.miui.powerkeeper:service|11458|1666|
|com.android.bluetooth|9268|2376|
|com.lbe.security.miui|8498|2287|
|com.android.settings|8167|1724|
|mm-qcamera-daemon|7861|274|
|com.miui.networkassistant:deamon|7777|1821|
|com.xiaomi.xmsf|7228|1535|
|com.miui.player|6646|2991|
|com.google.android.inputmethod.pinyin|6456|2829|
|surfaceflinger|6247|243|
|com.miui.fmradio|6207|2907|
|com.miui.voip|6166|1498|
|com.baidu.map.location|6086|1454|
|com.miui.securitycenter|5940|3038|
|com.miui.mipub|5570|2871|
|com.miui.cloudservice|5401|3131|
|com.miui.systemAdSolution|5376|1567|
|com.miui.whetstone|5133|1516|
|com.miui.cloudservice:remote|4981|2402|
|ims_rtp_daemon|4800|573|
|logcat|4384|2214|
|com.miui.antispam:provider|4231|2035|
|logcat|4120|2209|
|rild|4021|242|
|com.miui.analytics|3984|1601|
|com.miui.antispam|3861|3076|
|com.miui.powerkeeper|3821|1760|
|com.miui.core|3494|1310|
|com.xiaomi.metok|3436|1674|
|com.miui.bugreport:remote|3384|3092|
|org.simalliance.openmobileapi.service:remote|3174|2102|
|com.android.cellbroadcastreceiver|2995|3107|
|com.svox.pico|2897|2965|
|com.android.defcontainer|2685|1883|
|com.android.onetimeinitializer|2594|3021|
|com.android.smspush|2550|1716|
|mm-pp-daemon|2351|279|
|gsiff_daemon|2271|275|
|shelld|2095|265|
|cnd|1234|268|
|drmserver|1117|245|
|sensors.qcom|978|412|
|quipc_main|975|342|
|thermal-engine|857|378|
|xtwifi-client|747|334|
|netmgrd|745|329|
|quipc_igsn|682|345|
|netd|657|240|
|ueventd|618|184|
|xtwifi-inet-agent|610|330|
|imsdatadaemon|585|386|
|vold|573|234|
|/init|533|1|
|qmuxd|498|314|
|ATFWD-daemon|471|270|
|mcd|455|1891|
|immvibed|431|278|
|mdbd|417|383|
|time_daemon|414|276|
|qseecomd|398|603|
|keystore|396|602|
|ssr_diag|384|272|
|wcnss_service|377|277|
|lowi-server|377|338|
|sdcard|370|271|
|qcom-system-daemon|365|251|
|imsqmidaemon|361|256|
|adbd|329|384|
|qseecomd|313|239|
|otad|269|250|
|mpdecision|233|1963|
|rfs_access|228|236|
|nqs|218|281|
|rmt_storage|212|366|
|location-mq|205|315|
|su|198|266|
|dumpsys|175|3369|
|tunman|173|2014|
|adsprpcd|166|255|
|installd|165|248|
|debuggerd|153|241|
|subsystem_ramdump|145|375|
|healthd|144|232|
|servicemanager|129|233|
|hvdcp|129|374|
|charger_monitor|129|469|
|qrngd|125|254|
|----------------------------------|


##后记
```
 - 获取CPU最高频率：
 adb shell cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_max_freq
 - 取得 PSS内存信息：
   adb shell procrank
```
