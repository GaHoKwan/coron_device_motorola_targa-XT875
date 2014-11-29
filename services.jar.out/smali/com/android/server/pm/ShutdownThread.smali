.class public final Lcom/android/server/pm/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/pm/ShutdownThread$BaiduInjector;
    }
.end annotation


# static fields
.field public static final BOOTUP_VOLUME_PROP_NAME:Ljava/lang/String; = "persist.sys.bootupvolume"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_KPI:Z = false

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mStartShutdownTime:J

.field private static final sInstance:Lcom/android/server/pm/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sSystemReady:Z

.field private static final sSystemReadySync:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 69
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 87
    new-instance v0, Lcom/android/server/pm/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    .line 91
    sput-boolean v1, Lcom/android/server/pm/ShutdownThread;->sSystemReady:Z

    .line 103
    const-string v0, "debug.kpi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    .line 106
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/ShutdownThread;->mStartShutdownTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 220
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_0
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v3

    .line 274
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 226
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/pm/ShutdownThread;->mStartShutdownTime:J

    .line 232
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, pd:Landroid/app/ProgressDialog;
    const v2, #android:string@power_off#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, #android:string@shutdown_progress#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {p0, v1}, Lcom/android/server/pm/ShutdownThread$BaiduInjector;->rebootProgressDialogBaidu(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    .line 235
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 236
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 237
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 239
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 241
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    .line 242
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 245
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 247
    :try_start_1
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 249
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 250
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :goto_1
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :try_start_2
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 262
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 263
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    new-instance v3, Lcom/android/server/pm/ShutdownThread$2;

    invoke-direct {v3}, Lcom/android/server/pm/ShutdownThread$2;-><init>()V

    iput-object v3, v2, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 273
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 226
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 251
    .restart local v1       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 264
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 265
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    sget-object v2, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 201
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 202
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 203
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 8
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 569
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_0

    .line 570
    const-string v4, "KPI-SHUTDOWN-7"

    const-string v5, "Shutting down vibrator starts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    if-eqz p0, :cond_3

    .line 575
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :try_start_0
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/pm/ShutdownThread;->mStartShutdownTime:J

    sub-long v1, v4, v6

    .line 600
    .local v1, timeTaken:J
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 601
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "TimeToPowerDown"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 606
    :cond_1
    const-string v4, "ShutdownThread"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_2

    .line 609
    const-string v4, "KPI-SHUTDOWN-8"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_2
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 613
    return-void

    .line 578
    .end local v1           #timeTaken:J
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v3, Landroid/os/SystemVibrator;

    invoke-direct {v3}, Landroid/os/SystemVibrator;-><init>()V

    .line 585
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/SystemVibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 593
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 594
    :catch_1
    move-exception v4

    goto :goto_0

    .line 586
    :catch_2
    move-exception v0

    .line 588
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    .line 213
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 214
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 216
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 217
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 121
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 122
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 123
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 128
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 129
    :try_start_0
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 130
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v5

    .line 166
    :goto_0
    return-void

    .line 133
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 137
    .local v2, longPressBehavior:I
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_1

    const v3, #android:string@reboot_safemode_confirm#t

    .line 143
    .local v3, resourceId:I
    :goto_1
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz p1, :cond_4

    .line 146
    new-instance v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_3

    const v4, #android:string@reboot_safemode_title#t

    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:string@yes#t

    new-instance v6, Lcom/android/server/pm/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #android:string@no#t

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {p0, v1}, Lcom/android/server/pm/ShutdownThread$BaiduInjector;->createRebootDialogBaidu(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 162
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 133
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 137
    .restart local v2       #longPressBehavior:I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const v3, #android:string@shutdown_confirm_question#t

    goto :goto_1

    :cond_2
    const v3, #android:string@shutdown_confirm#t

    goto :goto_1

    .line 147
    .restart local v0       #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .restart local v3       #resourceId:I
    :cond_3
    const v4, #android:string@power_off#t

    goto :goto_2

    .line 164
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .parameter "timeout"

    .prologue
    .line 450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 451
    .local v1, endTime:J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 452
    .local v0, done:[Z
    new-instance v3, Lcom/android/server/pm/ShutdownThread$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/pm/ShutdownThread$5;-><init>(Lcom/android/server/pm/ShutdownThread;J[Z)V

    .line 549
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 551
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 555
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    return-void

    .line 552
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 619
    sget-object v1, Lcom/android/server/pm/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sSystemReady:Z

    .line 621
    monitor-exit v1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 289
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_0

    const-string v2, "KPI-SHUTDOWN-2"

    const-string v3, "ShutdownThread.run start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    sget-object v25, Lcom/android/server/pm/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v25

    .line 295
    :try_start_0
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->sSystemReady:Z

    if-eqz v2, :cond_8

    .line 297
    new-instance v5, Lcom/android/server/pm/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShutdownThread$3;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 310
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_9

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 311
    .local v24, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_1

    .line 319
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/AudioManager;

    .line 330
    .local v21, mAudioManager:Landroid/media/AudioManager;
    if-eqz v21, :cond_3

    .line 331
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v18

    .line 332
    .local v18, isMasterMute:Z
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v19

    .line 333
    .local v19, isRingMute:Z
    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v20

    .line 334
    .local v20, isSilent:Z
    if-nez v18, :cond_2

    if-nez v19, :cond_2

    if-eqz v20, :cond_b

    .line 335
    :cond_2
    const-string v2, "persist.sys.bootupvolume"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v18           #isMasterMute:Z
    .end local v19           #isRingMute:Z
    .end local v20           #isSilent:Z
    .end local v21           #mAudioManager:Landroid/media/AudioManager;
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_c

    .line 347
    const-string v2, "KPI-SHUTDOWN-3"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    .line 359
    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_4

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    .line 362
    .local v11, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_d

    .line 363
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v11           #delay:J
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    :try_start_2
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_e

    .line 375
    const-string v2, "KPI-SHUTDOWN-4"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_5
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 383
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_5

    .line 385
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 391
    :cond_5
    :goto_6
    :try_start_4
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_6

    .line 392
    const-string v2, "KPI-SHUTDOWN-5"

    const-string v3, "Shutting down BT and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/ShutdownThread;->shutdownRadios(I)V

    .line 400
    new-instance v23, Lcom/android/server/pm/ShutdownThread$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$4;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 408
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_f

    .line 409
    const-string v2, "KPI-SHUTDOWN-6"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v14, v2, v6

    .line 418
    .local v14, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    :try_start_5
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v22

    .line 422
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v22, :cond_10

    .line 423
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 430
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :goto_8
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_7

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    .line 432
    .restart local v11       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_11

    .line 433
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v11           #delay:J
    :cond_7
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 442
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #reason:Ljava/lang/String;
    :cond_8
    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 444
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 445
    return-void

    .line 310
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_9
    :try_start_8
    const-string v2, "0"

    goto/16 :goto_0

    :cond_a
    const-string v2, ""

    goto/16 :goto_1

    .line 337
    .restart local v18       #isMasterMute:Z
    .restart local v19       #isRingMute:Z
    .restart local v20       #isSilent:Z
    .restart local v21       #mAudioManager:Landroid/media/AudioManager;
    .restart local v24       #reason:Ljava/lang/String;
    :cond_b
    const-string v2, "persist.sys.bootupvolume"

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 442
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v18           #isMasterMute:Z
    .end local v19           #isRingMute:Z
    .end local v20           #isSilent:Z
    .end local v21           #mAudioManager:Landroid/media/AudioManager;
    .end local v24           #reason:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 349
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v24       #reason:Ljava/lang/String;
    :cond_c
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 367
    .restart local v11       #delay:J
    .restart local v16       #endTime:J
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4

    .line 368
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 371
    .end local v11           #delay:J
    :catchall_1
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2

    .line 377
    :cond_e
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 411
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v23       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_f
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7

    .line 425
    .restart local v14       #endShutTime:J
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    :cond_10
    :try_start_d
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_8

    .line 427
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :catch_1
    move-exception v13

    .line 428
    .local v13, e:Ljava/lang/Exception;
    :try_start_e
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 441
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 437
    .restart local v11       #delay:J
    :cond_11
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_8

    .line 438
    :catch_2
    move-exception v2

    goto/16 :goto_8

    .line 386
    .end local v11           #delay:J
    .end local v14           #endShutTime:J
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_3
    move-exception v2

    goto/16 :goto_6
.end method

.method static synthetic access$sput-mRebootReason-4d6e43(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$sget-mReboot-0a52af()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$sput-mReboot-f45f2d(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    return p0
.end method
