.class public Landroid/server/BluetoothDunProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothDunProfileHandler.java"


# static fields
.field private static final ATCMD_DUN_DOWN:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_DOWN"

.field private static final ATCMD_DUN_UP:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_UP"

.field public static final BLUETOOTH_DUN_SERVICE:Ljava/lang/String; = "bluetooth_dun"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BT_ATCMD_SERVICE_START_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

.field private static final BT_ATCMD_STOP_OR_CLOSEDEV_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

.field private static final BT_INCOMING_DUN_CONNECTION_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

.field private static final BT_INCOMING_DUN_CONNECTION_RELEASED_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDunProfileHandler"

.field public static sInstance:Landroid/server/BluetoothDunProfileHandler;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDUNEnabled:Z

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRfcommDevicePath:Ljava/lang/String;

.field private mState:I

.field private mUsbDunConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    const-string v1, "/system/lib/libmot_bluetooth_jni.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 61
    const-string v1, "BluetoothDunProfileHandler"

    const-string v2, "libmot_bluetooth_jni.so loaded success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/server/BluetoothDunProfileHandler;->classInitNative()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 63
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 64
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BluetoothDunProfileHandler"

    const-string v2, "libmot_bluetooth_jni.so loaded failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 4
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 50
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    .line 51
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    .line 53
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 169
    new-instance v0, Landroid/server/BluetoothDunProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDunProfileHandler$1;-><init>(Landroid/server/BluetoothDunProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 73
    const-string/jumbo v0, "ro.mot.btdun.disable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "BluetoothDunProfileHandler"

    const-string v1, "DUN enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    .line 81
    :goto_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->initDunNative()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothDunService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const-string v0, "BluetoothDunProfileHandler"

    const-string v1, "DUN disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 86
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    :goto_1
    return-void

    .line 90
    :cond_2
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 92
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_1
.end method

.method static synthetic access$002(Landroid/server/BluetoothDunProfileHandler;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$100(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$302(Landroid/server/BluetoothDunProfileHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V

    return-void
.end method

.method private cancelWaitingForUserAuth()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out the intent to end the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDunNative()V
.end method

.method private native connectDunNative()Z
.end method

.method private native disconnectDunNative()Z
.end method

.method public static getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothDunProfileHandler;
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 98
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothDunProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothDunProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    .line 99
    :cond_0
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    return-object v0
.end method

.method private native initDunNative()Z
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 302
    const-string v0, "BluetoothDunProfileHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "BluetoothDunProfileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usb connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rfcomm path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remote device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onDunDisconnected()V

    .line 123
    :cond_1
    const-string v0, "ctl.stop"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    const-string v0, "Start dun daemon ..."

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 115
    const-string v0, "ctl.start"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDunDisconnected()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "Bluetooth DUN Disconnected"

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->cancelWaitingForUserAuth()V

    .line 275
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 277
    return-void

    .line 272
    :cond_1
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V

    goto :goto_0
.end method

.method private startAtCmdService()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DEVPATH"

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method private stopAtCmdService()V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private updateState(I)V
    .locals 6
    .parameter "newState"

    .prologue
    .line 142
    iget v1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 143
    .local v1, prevState:I
    iput p1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x8

    iget v5, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 152
    return-void
.end method

.method private waitForUserAuth()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out intent to trigger the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptDunConnection()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    monitor-enter p0

    :try_start_0
    const-string v2, "connectDunClient"

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 223
    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-ne v2, v0, :cond_1

    .line 224
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->connectDunNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0

    :cond_1
    move v0, v1

    .line 233
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectActiveDunClient()Z
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    monitor-enter p0

    :try_start_0
    const-string v2, "disconnectDunClient"

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 239
    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-ne v2, v1, :cond_1

    .line 241
    :cond_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 243
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunNative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 252
    :cond_1
    monitor-exit p0

    return v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->cleanupDunNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDunConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, state:I
    iget v1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 211
    :cond_0
    return v0
.end method

.method public onDunConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "rfcommDevicePath"
    .parameter "addr"

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth DUN Connected, path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 263
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 264
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 265
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->startAtCmdService()V

    .line 266
    return-void
.end method

.method public onDunConnecting(Ljava/lang/String;)V
    .locals 2
    .parameter "addr"

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming Bluetooth DUN Connection, address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 283
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunNative()Z

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 289
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->waitForUserAuth()V

    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->connectDunNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    goto :goto_0
.end method
