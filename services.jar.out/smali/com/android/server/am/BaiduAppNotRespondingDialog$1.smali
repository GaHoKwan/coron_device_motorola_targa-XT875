.class Lcom/android/server/am/BaiduAppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "BaiduAppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaiduAppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaiduAppNotRespondingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, appErrorIntent:Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 141
    :goto_0
    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_1
    return-void

    .line 113
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mService-08b88c(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mProc-a31778(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    const-string v4, "anr"

    iget-object v5, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mProc-a31778(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->startBaiduReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mService-08b88c(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mProc-a31778(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mService-08b88c(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    .line 125
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mProc-a31778(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 127
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/BaiduAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/BaiduAppNotRespondingDialog;->access$iget-mService-08b88c(Lcom/android/server/am/BaiduAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 132
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 133
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 134
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/am/BaiduAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/BaiduAppNotRespondingDialog;

    if-ne v3, v5, :cond_2

    .line 135
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 137
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "AppNotRespondingDialog"

    const-string v4, "bug report receiver dissappeared"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
