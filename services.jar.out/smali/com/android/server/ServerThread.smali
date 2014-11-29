.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static isKeyProtectionEnabled()Z
    .locals 4

    .prologue
    .line 1118
    const-string v2, "persist.sys.mot.encrypt.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, motCryptState:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, states:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    const/4 v2, 0x6

    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1124
    const/4 v2, 0x1

    .line 1126
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1101
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1105
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 101
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return-void
.end method

.method public run()V
    .locals 138

    .prologue
    .line 107
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 110
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 112
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 115
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 116
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 120
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v112

    .line 122
    .local v112, shutdownAction:Ljava/lang/String;
    if-eqz v112, :cond_0

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_11

    const/16 v103, 0x1

    .line 126
    .local v103, reboot:Z
    :goto_0
    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_12

    .line 127
    const/4 v3, 0x1

    invoke-virtual/range {v112 .. v112}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v112

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v102

    .line 132
    .local v102, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v103

    move-object/from16 v1, v102

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 136
    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 137
    .local v75, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v74, 0x0

    .line 139
    .local v74, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 141
    .local v16, headless:Z
    const/16 v43, 0x0

    .line 142
    .local v43, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v60, 0x0

    .line 143
    .local v60, contentService:Landroid/content/ContentService;
    const/16 v80, 0x0

    .line 144
    .local v80, lights:Lcom/android/server/LightsService;
    const/16 v101, 0x0

    .line 145
    .local v101, power:Lcom/android/server/PowerManagerService;
    const/16 v49, 0x0

    .line 146
    .local v49, battery:Lcom/android/server/BatteryService;
    const/16 v125, 0x0

    .line 147
    .local v125, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 148
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 149
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 150
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v93, 0x0

    .line 151
    .local v93, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v58, 0x0

    .line 154
    .local v58, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v127, 0x0

    .line 157
    .local v127, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    const/16 v135, 0x0

    .line 158
    .local v135, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v133, 0x0

    .line 159
    .local v133, wifi:Lcom/android/server/WifiService;
    const/16 v111, 0x0

    .line 160
    .local v111, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v100, 0x0

    .line 161
    .local v100, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 162
    .local v4, context:Landroid/content/Context;
    const/16 v137, 0x0

    .line 163
    .local v137, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 164
    .local v50, bluetooth:Landroid/server/BluetoothService;
    const/16 v52, 0x0

    .line 165
    .local v52, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v66, 0x0

    .line 167
    .local v66, dock:Lcom/android/server/DockObserver;
    const/16 v89, 0x0

    .line 169
    .local v89, motDock:Lcom/motorola/server/MotDockObserver;
    const/16 v123, 0x0

    .line 170
    .local v123, usbSound:Lcom/motorola/server/UsbSoundObserver;
    const/16 v121, 0x0

    .line 171
    .local v121, usb:Lcom/android/server/usb/UsbService;
    const/16 v109, 0x0

    .line 172
    .local v109, serial:Lcom/android/server/SerialService;
    const/16 v119, 0x0

    .line 173
    .local v119, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v104, 0x0

    .line 174
    .local v104, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v115, 0x0

    .line 175
    .local v115, throttle:Lcom/android/server/ThrottleService;
    const/16 v95, 0x0

    .line 176
    .local v95, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v55, 0x0

    .line 177
    .local v55, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v79, 0x0

    .line 180
    .local v79, inputManager:Lcom/android/server/input/InputManagerService;
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 184
    .local v63, cryptState:Ljava/lang/String;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 187
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_57

    .line 189
    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static/range {v74 .. v74}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 194
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 201
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 203
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v99, 0x0

    .line 205
    .local v99, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 206
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v99, 0x1

    .line 219
    :cond_1
    :goto_3
    if-eqz v74, :cond_16

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v99

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v100

    .line 222
    const/16 v76, 0x0

    .line 224
    .local v76, firstBoot:Z
    :try_start_2
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v76

    .line 228
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 230
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v44, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 236
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_58

    move-object/from16 v43, v44

    .line 241
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_17

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v60

    .line 245
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 248
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v81, Lcom/android/server/LightsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 251
    .end local v80           #lights:Lcom/android/server/LightsService;
    .local v81, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v81

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_59

    .line 253
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 255
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v126, Lcom/android/server/VibratorService;

    move-object/from16 v0, v126

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5a

    .line 257
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .local v126, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 261
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 263
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5b

    .line 265
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 271
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_18

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v76, :cond_19

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v99

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v137

    .line 275
    const-string v3, "window"

    move-object/from16 v0, v137

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 276
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v79

    .line 277
    const-string v3, "input"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v137

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 284
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 285
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    move-object/from16 v125, v126

    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .line 314
    .end local v76           #firstBoot:Z
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v99           #onlyCore:Z
    .restart local v80       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v64, 0x0

    .line 316
    .local v64, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v87, 0x0

    .line 318
    .local v87, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    const/16 v113, 0x0

    .line 319
    .local v113, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v77, 0x0

    .line 320
    .local v77, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 321
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v97, 0x0

    .line 322
    .local v97, notification:Lcom/android/server/NotificationManagerService;
    const/16 v131, 0x0

    .line 323
    .local v131, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v82, 0x0

    .line 326
    .local v82, location:Lcom/android/server/LocationManagerService;
    const/16 v106, 0x0

    .line 329
    .local v106, sensorHub:Lcom/motorola/server/SensorHubService;
    const/16 v61, 0x0

    .line 330
    .local v61, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v117, 0x0

    .line 331
    .local v117, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v84, 0x0

    .line 332
    .local v84, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v68, 0x0

    .line 335
    .local v68, dreamy:Landroid/service/dreams/DreamManagerService;
    const/16 v71, 0x0

    .line 339
    .local v71, encryption:Lcom/motorola/server/encryption/EncryptionService;
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_2

    .line 341
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v78, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v78

    move-object/from16 v1, v137

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 343
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .local v78, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_56

    move-object/from16 v77, v78

    .line 349
    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 358
    :goto_d
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Motorola encryption service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v72, Lcom/motorola/server/encryption/EncryptionService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/motorola/server/encryption/EncryptionService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 360
    .end local v71           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .local v72, encryption:Lcom/motorola/server/encryption/EncryptionService;
    :try_start_f
    const-string v3, "mot_encryption_service"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_55

    move-object/from16 v71, v72

    .line 369
    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v71       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :cond_2
    :goto_e
    :try_start_10
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 375
    :goto_f
    :try_start_11
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 381
    :goto_10
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403e6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_54

    .line 388
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v74

    if-eq v0, v3, :cond_1f

    .line 389
    const/16 v91, 0x0

    .line 390
    .local v91, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 396
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v92, Lcom/android/server/MountService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 398
    .end local v91           #mountService:Lcom/android/server/MountService;
    .local v92, mountService:Lcom/android/server/MountService;
    :try_start_14
    const-string v3, "mount"

    move-object/from16 v0, v92

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_53

    move-object/from16 v91, v92

    .line 405
    .end local v92           #mountService:Lcom/android/server/MountService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    :cond_3
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v85, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 407
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v85, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_16
    const-string v3, "lock_settings"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_52

    move-object/from16 v84, v85

    .line 413
    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v65, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 415
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v65, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_18
    const-string v3, "device_policy"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_51

    move-object/from16 v64, v65

    .line 421
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v114, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v114

    move-object/from16 v1, v137

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 423
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v114, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1a
    const-string v3, "statusbar"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_50

    move-object/from16 v113, v114

    .line 429
    .end local v114           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 437
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 439
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 445
    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v118, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 447
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v118, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1e
    const-string v3, "textservices"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4f

    move-object/from16 v117, v118

    .line 453
    .end local v118           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v94, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 455
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v94, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_20
    const-string v3, "netstats"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4e

    move-object/from16 v12, v94

    .line 461
    .end local v94           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 465
    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_22
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4d

    .line 471
    :goto_1a
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v136, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 473
    .end local v135           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v136, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_24
    const-string v3, "wifip2p"

    move-object/from16 v0, v136

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4c

    move-object/from16 v135, v136

    .line 479
    .end local v136           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v135       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v134, Lcom/android/server/WifiService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 481
    .end local v133           #wifi:Lcom/android/server/WifiService;
    .local v134, wifi:Lcom/android/server/WifiService;
    :try_start_26
    const-string v3, "wifi"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_4b

    move-object/from16 v133, v134

    .line 489
    .end local v134           #wifi:Lcom/android/server/WifiService;
    .restart local v133       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Ethernet Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v73, Lcom/android/server/EthernetService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/EthernetService;-><init>(Landroid/content/Context;)V

    .line 491
    .local v73, ethernet:Lcom/android/server/EthernetService;
    const-string v3, "ethernet"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 499
    .end local v73           #ethernet:Lcom/android/server/EthernetService;
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v59, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v59

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 502
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .local v59, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_29
    const-string v3, "connectivity"

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 503
    move-object/from16 v0, v59

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 504
    move-object/from16 v0, v59

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 505
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 506
    invoke-virtual/range {v135 .. v135}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4a

    move-object/from16 v58, v59

    .line 514
    .end local v59           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110074

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v129

    .line 516
    .local v129, vzwConnectivityServiceInit:Z
    if-eqz v129, :cond_4

    .line 518
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "VzwConnectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v128, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v128

    invoke-direct {v0, v4}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 520
    .end local v127           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .local v128, vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :try_start_2b
    const-string v3, "vzwconnectivity"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 522
    move-object/from16 v0, v128

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_49

    move-object/from16 v127, v128

    .line 533
    .end local v128           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v127       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :cond_4
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v111

    .line 535
    const-string v3, "servicediscovery"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 542
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v116, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 544
    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .local v116, throttle:Lcom/android/server/ThrottleService;
    :try_start_2e
    const-string v3, "throttle"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_48

    move-object/from16 v115, v116

    .line 551
    .end local v116           #throttle:Lcom/android/server/ThrottleService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 563
    :goto_22
    if-eqz v91, :cond_5

    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 564
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 568
    :cond_5
    if-eqz v43, :cond_6

    .line 569
    :try_start_30
    invoke-virtual/range {v43 .. v43}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 575
    :cond_6
    :goto_23
    if-eqz v60, :cond_7

    .line 576
    :try_start_31
    invoke-virtual/range {v60 .. v60}, Landroid/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 582
    :cond_7
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v98, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v113

    move-object/from16 v2, v80

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 584
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .local v98, notification:Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v3, "notification"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 585
    move-object/from16 v0, v98

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_47

    move-object/from16 v97, v98

    .line 591
    .end local v98           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 599
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v83, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 601
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .local v83, location:Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v3, "location"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_46

    move-object/from16 v82, v83

    .line 607
    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v62, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 609
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v62, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v3, "country_detector"

    move-object/from16 v0, v62

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_45

    move-object/from16 v61, v62

    .line 616
    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v108

    .line 618
    .local v108, sensorHubExists:Z
    if-eqz v108, :cond_8

    .line 620
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "SensorHub Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v107, Lcom/motorola/server/SensorHubService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/motorola/server/SensorHubService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 622
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .local v107, sensorHub:Lcom/motorola/server/SensorHubService;
    :try_start_3a
    const-string v3, "sensorhub"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_44

    move-object/from16 v106, v107

    .line 631
    .end local v107           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    :cond_8
    :goto_29
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20

    .line 639
    :goto_2a
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_21

    .line 650
    :goto_2b
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v4}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_22

    .line 658
    :goto_2c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 661
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-nez v16, :cond_9

    .line 663
    new-instance v132, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 664
    .end local v131           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v132, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3f
    const-string v3, "wallpaper"

    move-object/from16 v0, v132

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_43

    move-object/from16 v131, v132

    .line 671
    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v131       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_9
    :goto_2d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 673
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 681
    :cond_a
    :goto_2e
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v67, Lcom/android/server/DockObserver;

    move-object/from16 v0, v67

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    .end local v66           #dock:Lcom/android/server/DockObserver;
    .local v67, dock:Lcom/android/server/DockObserver;
    move-object/from16 v66, v67

    .line 689
    .end local v67           #dock:Lcom/android/server/DockObserver;
    .restart local v66       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .line 697
    :goto_30
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v122, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 700
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .local v122, usb:Lcom/android/server/usb/UsbService;
    :try_start_44
    const-string v3, "usb"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_42

    move-object/from16 v121, v122

    .line 706
    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v110, Lcom/android/server/SerialService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .line 709
    .end local v109           #serial:Lcom/android/server/SerialService;
    .local v110, serial:Lcom/android/server/SerialService;
    :try_start_46
    const-string v3, "serial"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_41

    move-object/from16 v109, v110

    .line 716
    .end local v110           #serial:Lcom/android/server/SerialService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    :goto_32
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "Mot Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v90, Lcom/motorola/server/MotDockObserver;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/motorola/server/MotDockObserver;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_29

    .end local v89           #motDock:Lcom/motorola/server/MotDockObserver;
    .local v90, motDock:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v89, v90

    .line 725
    .end local v90           #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v89       #motDock:Lcom/motorola/server/MotDockObserver;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Usb sound observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v124, Lcom/motorola/server/UsbSoundObserver;

    move-object/from16 v0, v124

    invoke-direct {v0, v4}, Lcom/motorola/server/UsbSoundObserver;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    .end local v123           #usbSound:Lcom/motorola/server/UsbSoundObserver;
    .local v124, usbSound:Lcom/motorola/server/UsbSoundObserver;
    move-object/from16 v123, v124

    .line 733
    .end local v124           #usbSound:Lcom/motorola/server/UsbSoundObserver;
    .restart local v123       #usbSound:Lcom/motorola/server/UsbSoundObserver;
    :goto_34
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v120, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2b

    .end local v119           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v120, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v119, v120

    .line 741
    .end local v120           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v119       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_35
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2c

    .line 749
    :goto_36
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2d

    .line 751
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4c
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_40

    move-object/from16 v47, v48

    .line 757
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_37
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v105, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2e

    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v105, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v104, v105

    .line 764
    .end local v105           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_38
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2f

    .line 775
    :goto_39
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_30

    .line 783
    :goto_3a
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v96, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .end local v95           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v96, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v95, v96

    .line 791
    .end local v96           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "Mot Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v88, Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 793
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .local v88, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :try_start_52
    const-string v3, "mot_device_policy"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_3f

    move-object/from16 v87, v88

    .line 800
    .end local v88           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :goto_3c
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v56, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 802
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v56, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v3, "commontime_management"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3e

    move-object/from16 v55, v56

    .line 808
    .end local v56           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3d
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 814
    :goto_3e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 817
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v69, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_35

    .line 820
    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v69, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_57
    const-string v3, "dreams"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3d

    move-object/from16 v68, v69

    .line 829
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v91           #mountService:Lcom/android/server/MountService;
    .end local v108           #sensorHubExists:Z
    .end local v129           #vzwConnectivityServiceInit:Z
    .restart local v68       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_b
    :goto_3f
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 830
    .local v29, safeMode:Z
    if-eqz v29, :cond_1e

    .line 831
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 833
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 835
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 844
    :goto_40
    :try_start_58
    invoke-virtual/range {v125 .. v125}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 851
    :goto_41
    :try_start_59
    invoke-virtual/range {v84 .. v84}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 857
    :goto_42
    if-eqz v64, :cond_c

    .line 859
    :try_start_5a
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    .line 865
    :cond_c
    :goto_43
    if-eqz v97, :cond_d

    .line 867
    :try_start_5b
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    .line 874
    :cond_d
    :goto_44
    if-eqz v87, :cond_e

    .line 875
    invoke-virtual/range {v87 .. v87}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->systemReady()V

    .line 880
    :cond_e
    :try_start_5c
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 885
    :goto_45
    if-eqz v29, :cond_f

    .line 886
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 892
    :cond_f
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v57

    .line 893
    .local v57, config:Landroid/content/res/Configuration;
    new-instance v86, Landroid/util/DisplayMetrics;

    invoke-direct/range {v86 .. v86}, Landroid/util/DisplayMetrics;-><init>()V

    .line 894
    .local v86, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v130

    check-cast v130, Landroid/view/WindowManager;

    .line 895
    .local v130, w:Landroid/view/WindowManager;
    invoke-interface/range {v130 .. v130}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 896
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v57

    move-object/from16 v1, v86

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 898
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 900
    :try_start_5d
    invoke-interface/range {v100 .. v100}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3b

    .line 915
    :goto_46
    move-object/from16 v17, v4

    .line 916
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 917
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 918
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 919
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 920
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v58

    .line 921
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v66

    .line 923
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v25, v89

    .line 926
    .local v25, motDockF:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v24, v121

    .line 927
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v36, v115

    .line 928
    .local v36, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v119

    .line 929
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 930
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v131

    .line 931
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v77

    .line 932
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v104

    .line 933
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v82

    .line 934
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v35, v61

    .line 935
    .local v35, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v37, v95

    .line 936
    .local v37, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v38, v55

    .line 937
    .local v38, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v39, v117

    .line 938
    .local v39, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v113

    .line 939
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v40, v68

    .line 940
    .local v40, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v41, v79

    .line 941
    .local v41, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v42, v50

    .line 944
    .local v42, bluetoothF:Landroid/server/BluetoothService;
    move-object/from16 v34, v106

    .line 953
    .local v34, sensorHubF:Lcom/motorola/server/SensorHubService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v42}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/motorola/server/SensorHubService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1091
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1092
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_10
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1096
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 123
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #motDockF:Lcom/motorola/server/MotDockObserver;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #sensorHubF:Lcom/motorola/server/SensorHubService;
    .end local v35           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v36           #throttleF:Lcom/android/server/ThrottleService;
    .end local v37           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v38           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v39           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v40           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v41           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v42           #bluetoothF:Landroid/server/BluetoothService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #config:Landroid/content/res/Configuration;
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v60           #contentService:Landroid/content/ContentService;
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v63           #cryptState:Ljava/lang/String;
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dock:Lcom/android/server/DockObserver;
    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v71           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v74           #factoryTest:I
    .end local v75           #factoryTestStr:Ljava/lang/String;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #metrics:Landroid/util/DisplayMetrics;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v89           #motDock:Lcom/motorola/server/MotDockObserver;
    .end local v95           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #pm:Landroid/content/pm/IPackageManager;
    .end local v104           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v109           #serial:Lcom/android/server/SerialService;
    .end local v111           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .end local v123           #usbSound:Lcom/motorola/server/UsbSoundObserver;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .end local v127           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .end local v130           #w:Landroid/view/WindowManager;
    .end local v131           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v133           #wifi:Lcom/android/server/WifiService;
    .end local v135           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v137           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_11
    const/16 v103, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v103       #reboot:Z
    :cond_12
    const/16 v102, 0x0

    .restart local v102       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 137
    .end local v102           #reason:Ljava/lang/String;
    .end local v103           #reboot:Z
    .restart local v75       #factoryTestStr:Ljava/lang/String;
    :cond_13
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    goto/16 :goto_2

    .line 208
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v60       #contentService:Landroid/content/ContentService;
    .restart local v63       #cryptState:Ljava/lang/String;
    .restart local v66       #dock:Lcom/android/server/DockObserver;
    .restart local v74       #factoryTest:I
    .restart local v79       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    .restart local v89       #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v99       #onlyCore:Z
    .restart local v100       #pm:Landroid/content/pm/IPackageManager;
    .restart local v104       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    .restart local v111       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    .restart local v119       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    .restart local v123       #usbSound:Lcom/motorola/server/UsbSoundObserver;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    .restart local v127       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v133       #wifi:Lcom/android/server/WifiService;
    .restart local v135       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v137       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_14
    :try_start_5e
    const-string v3, "1"

    move-object/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 209
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v99, 0x1

    goto/16 :goto_3

    .line 213
    :cond_15
    invoke-static {}, Lcom/android/server/ServerThread;->isKeyProtectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted with key protection - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/16 v99, 0x1

    goto/16 :goto_3

    .line 219
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 237
    .restart local v76       #firstBoot:Z
    :catch_0
    move-exception v70

    .line 238
    .local v70, e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_1

    goto/16 :goto_6

    .line 309
    .end local v70           #e:Ljava/lang/Throwable;
    .end local v76           #firstBoot:Z
    .end local v99           #onlyCore:Z
    :catch_1
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .line 310
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v70, e:Ljava/lang/RuntimeException;
    :goto_48
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 242
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #firstBoot:Z
    .restart local v99       #onlyCore:Z
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 272
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 286
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v74

    if-ne v0, v3, :cond_1b

    .line 287
    :try_start_5f
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 309
    :catch_2
    move-exception v70

    move-object/from16 v125, v126

    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto :goto_48

    .line 289
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v51, Landroid/server/BluetoothService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_2

    .line 291
    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .local v51, bluetooth:Landroid/server/BluetoothService;
    :try_start_60
    const-string v3, "bluetooth"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 292
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 294
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 295
    new-instance v53, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v53

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_5c

    .line 296
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v53, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_61
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 298
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_5d

    move-object/from16 v52, v53

    .line 300
    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1c
    :try_start_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 302
    .local v45, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v54

    .line 304
    .local v54, bluetoothOn:I
    if-nez v45, :cond_1d

    if-eqz v54, :cond_1d

    .line 305
    invoke-virtual/range {v51 .. v51}, Landroid/server/BluetoothService;->enable()Z
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5c

    :cond_1d
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 344
    .end local v45           #airplaneModeOn:I
    .end local v54           #bluetoothOn:I
    .end local v76           #firstBoot:Z
    .end local v81           #lights:Lcom/android/server/LightsService;
    .end local v99           #onlyCore:Z
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v71       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v70

    .line 345
    .local v70, e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 352
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v70

    .line 353
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 361
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v70

    .line 362
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "SystemServer"

    const-string v9, "Failure starting encryption service"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 370
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v70

    .line 371
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 376
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v70

    .line 377
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 399
    .end local v70           #e:Ljava/lang/Throwable;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    :catch_8
    move-exception v70

    .line 400
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 408
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v70

    .line 409
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 416
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v70

    .line 417
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 424
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v70

    .line 425
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 432
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v70

    .line 433
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 440
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v70

    .line 441
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 448
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v70

    .line 449
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 456
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v70

    .line 457
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 466
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v70

    move-object/from16 v8, v93

    .line 467
    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 474
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v70

    .line 475
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 482
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v70

    .line 483
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 492
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v70

    .line 493
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Ethernet Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 507
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v70

    .line 508
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 524
    .end local v70           #e:Ljava/lang/Throwable;
    .restart local v129       #vzwConnectivityServiceInit:Z
    :catch_15
    move-exception v70

    .line 525
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting VzwConnectivityService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 537
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v70

    .line 538
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 546
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v70

    .line 547
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 554
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v70

    .line 555
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 570
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v70

    .line 571
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 577
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v70

    .line 578
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 586
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v70

    .line 587
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 594
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v70

    .line 595
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 602
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v70

    .line 603
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 610
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v70

    .line 611
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 623
    .end local v70           #e:Ljava/lang/Throwable;
    .restart local v108       #sensorHubExists:Z
    :catch_1f
    move-exception v70

    .line 624
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SensorHub Service"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 634
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v70

    .line 635
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 642
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v70

    .line 643
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 653
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v70

    .line 654
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 666
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v70

    .line 667
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 675
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v70

    .line 676
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 684
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v70

    .line 685
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 692
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v70

    .line 693
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 701
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v70

    .line 702
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 710
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v70

    .line 711
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 719
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v70

    .line 720
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MotDockObserver"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 728
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v70

    .line 729
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting UsbSoundObserver"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 736
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v70

    .line 737
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 744
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v70

    .line 745
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v70

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 752
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v70

    .line 753
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 759
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v70

    .line 760
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 766
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v70

    .line 767
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 778
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v70

    .line 779
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 785
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v70

    .line 786
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 794
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v70

    .line 795
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "falure starting MotDevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 803
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v70

    .line 804
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 810
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v70

    .line 811
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 821
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v70

    .line 822
    .restart local v70       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 838
    .end local v70           #e:Ljava/lang/Throwable;
    .end local v91           #mountService:Lcom/android/server/MountService;
    .end local v108           #sensorHubExists:Z
    .end local v129           #vzwConnectivityServiceInit:Z
    .restart local v29       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_40

    .line 845
    :catch_36
    move-exception v70

    .line 846
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 852
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v70

    .line 853
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 860
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v70

    .line 861
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 868
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v70

    .line 869
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 881
    .end local v70           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v70

    .line 882
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 901
    .end local v70           #e:Ljava/lang/Throwable;
    .restart local v57       #config:Landroid/content/res/Configuration;
    .restart local v86       #metrics:Landroid/util/DisplayMetrics;
    .restart local v130       #w:Landroid/view/WindowManager;
    :catch_3b
    move-exception v70

    .line 902
    .restart local v70       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 225
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v57           #config:Landroid/content/res/Configuration;
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #e:Ljava/lang/Throwable;
    .end local v71           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #metrics:Landroid/util/DisplayMetrics;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v130           #w:Landroid/view/WindowManager;
    .end local v131           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #firstBoot:Z
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99       #onlyCore:Z
    :catch_3c
    move-exception v3

    goto/16 :goto_5

    .line 821
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v76           #firstBoot:Z
    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v99           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v71       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v108       #sensorHubExists:Z
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #vzwConnectivityServiceInit:Z
    .restart local v131       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3d
    move-exception v70

    move-object/from16 v68, v69

    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v68       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_61

    .line 803
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v70

    move-object/from16 v55, v56

    .end local v56           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto :goto_60

    .line 794
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v88       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :catch_3f
    move-exception v70

    move-object/from16 v87, v88

    .end local v88           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    goto/16 :goto_5f

    .line 752
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_40
    move-exception v70

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5e

    .line 710
    .end local v109           #serial:Lcom/android/server/SerialService;
    .restart local v110       #serial:Lcom/android/server/SerialService;
    :catch_41
    move-exception v70

    move-object/from16 v109, v110

    .end local v110           #serial:Lcom/android/server/SerialService;
    .restart local v109       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5d

    .line 701
    .end local v121           #usb:Lcom/android/server/usb/UsbService;
    .restart local v122       #usb:Lcom/android/server/usb/UsbService;
    :catch_42
    move-exception v70

    move-object/from16 v121, v122

    .end local v122           #usb:Lcom/android/server/usb/UsbService;
    .restart local v121       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5c

    .line 666
    .end local v131           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v132       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_43
    move-exception v70

    move-object/from16 v131, v132

    .end local v132           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v131       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5b

    .line 623
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v107       #sensorHub:Lcom/motorola/server/SensorHubService;
    :catch_44
    move-exception v70

    move-object/from16 v106, v107

    .end local v107           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    goto/16 :goto_5a

    .line 610
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v108           #sensorHubExists:Z
    .restart local v62       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_45
    move-exception v70

    move-object/from16 v61, v62

    .end local v62           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_59

    .line 602
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .restart local v83       #location:Lcom/android/server/LocationManagerService;
    :catch_46
    move-exception v70

    move-object/from16 v82, v83

    .end local v83           #location:Lcom/android/server/LocationManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_58

    .line 586
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v98       #notification:Lcom/android/server/NotificationManagerService;
    :catch_47
    move-exception v70

    move-object/from16 v97, v98

    .end local v98           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_57

    .line 546
    .end local v115           #throttle:Lcom/android/server/ThrottleService;
    .restart local v116       #throttle:Lcom/android/server/ThrottleService;
    :catch_48
    move-exception v70

    move-object/from16 v115, v116

    .end local v116           #throttle:Lcom/android/server/ThrottleService;
    .restart local v115       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_56

    .line 524
    .end local v127           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v128       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    :catch_49
    move-exception v70

    move-object/from16 v127, v128

    .end local v128           #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    .restart local v127       #vzwConnectivity:Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_55

    .line 507
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v129           #vzwConnectivityServiceInit:Z
    .restart local v59       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4a
    move-exception v70

    move-object/from16 v58, v59

    .end local v59           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_54

    .line 482
    .end local v133           #wifi:Lcom/android/server/WifiService;
    .restart local v134       #wifi:Lcom/android/server/WifiService;
    :catch_4b
    move-exception v70

    move-object/from16 v133, v134

    .end local v134           #wifi:Lcom/android/server/WifiService;
    .restart local v133       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_53

    .line 474
    .end local v135           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v136       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4c
    move-exception v70

    move-object/from16 v135, v136

    .end local v136           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v135       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_52

    .line 466
    :catch_4d
    move-exception v70

    goto/16 :goto_51

    .line 456
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v93       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v94       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4e
    move-exception v70

    move-object/from16 v12, v94

    .end local v94           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_50

    .line 448
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v118       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4f
    move-exception v70

    move-object/from16 v117, v118

    .end local v118           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4f

    .line 424
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v114       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_50
    move-exception v70

    move-object/from16 v113, v114

    .end local v114           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4e

    .line 416
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_51
    move-exception v70

    move-object/from16 v64, v65

    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4d

    .line 408
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v85       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_52
    move-exception v70

    move-object/from16 v84, v85

    .end local v85           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4c

    .line 399
    .end local v91           #mountService:Lcom/android/server/MountService;
    .restart local v92       #mountService:Lcom/android/server/MountService;
    :catch_53
    move-exception v70

    move-object/from16 v91, v92

    .end local v92           #mountService:Lcom/android/server/MountService;
    .restart local v91       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4b

    .line 385
    .end local v91           #mountService:Lcom/android/server/MountService;
    :catch_54
    move-exception v3

    goto/16 :goto_11

    .line 361
    .end local v71           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v72       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :catch_55
    move-exception v70

    move-object/from16 v71, v72

    .end local v72           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v71       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    goto/16 :goto_4a

    .line 344
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_56
    move-exception v70

    move-object/from16 v77, v78

    .end local v78           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_49

    .line 309
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v64           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v68           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v71           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v77           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v82           #location:Lcom/android/server/LocationManagerService;
    .end local v84           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v87           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v97           #notification:Lcom/android/server/NotificationManagerService;
    .end local v106           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v113           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v131           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v101       #power:Lcom/android/server/PowerManagerService;
    :catch_57
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v101

    .end local v101           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_48

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #firstBoot:Z
    .restart local v99       #onlyCore:Z
    :catch_58
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v43, v44

    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_48

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    :catch_59
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v49

    .end local v49           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v70

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v125, v126

    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v70

    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v125, v126

    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v80           #lights:Lcom/android/server/LightsService;
    .end local v125           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #bluetooth:Landroid/server/BluetoothService;
    .restart local v53       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v81       #lights:Lcom/android/server/LightsService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v70

    move-object/from16 v52, v53

    .end local v53           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v50, v51

    .end local v51           #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v125, v126

    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v125       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v80, v81

    .end local v81           #lights:Lcom/android/server/LightsService;
    .restart local v80       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .line 237
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v49       #battery:Lcom/android/server/BatteryService;
    :catch_5e
    move-exception v70

    move-object/from16 v43, v44

    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_47

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v49           #battery:Lcom/android/server/BatteryService;
    .end local v76           #firstBoot:Z
    .end local v99           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v64       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v71       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v77       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v82       #location:Lcom/android/server/LocationManagerService;
    .restart local v84       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v87       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v97       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v113       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v131       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1f
    move-object/from16 v8, v93

    .end local v93           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3f
.end method
