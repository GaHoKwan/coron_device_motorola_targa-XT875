.class Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService$ShareUnshareCmdQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareUnshareCmd"
.end annotation


# instance fields
.field mCondition:Lcom/android/server/MountService$Condition;

.field private mEnable:Z

.field private mMethod:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService$ShareUnshareCmdQueue;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    .line 756
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;-><init>(Lcom/android/server/MountService$ShareUnshareCmdQueue;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V

    .line 757
    return-void
.end method

.method public constructor <init>(Lcom/android/server/MountService$ShareUnshareCmdQueue;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "enable"
    .parameter "condition"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mPath:Ljava/lang/String;

    .line 762
    iput-object p3, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mMethod:Ljava/lang/String;

    .line 763
    iput-boolean p4, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mEnable:Z

    .line 764
    iput-object p5, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    .line 765
    return-void
.end method


# virtual methods
.method public exec()V
    .locals 7

    .prologue
    .line 769
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mEnable:Z

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mPath:Ljava/lang/String;

    const/4 v4, 0x0

    #calls: Lcom/android/server/MountService;->setUmsEnabling(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 772
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mEnable:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->isUsbOnline()Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsUsbMassStorageMode:Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mPath:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, rc:I
    if-eqz v1, :cond_2

    .line 778
    const-string v2, "MountService"

    const-string v3, "remount failed (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v1           #rc:I
    :cond_2
    :goto_0
    return-void

    .line 782
    :cond_3
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "volume %sshare %s %s"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mEnable:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    :goto_1
    aput-object v2, v5, v6

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mPath:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mMethod:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 785
    iget-boolean v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mEnable:Z

    if-nez v2, :cond_2

    .line 788
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->this$1:Lcom/android/server/MountService$ShareUnshareCmdQueue;

    iget-object v2, v2, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mPath:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .restart local v1       #rc:I
    if-eqz v1, :cond_2

    .line 789
    const-string v2, "MountService"

    const-string v3, "remount failed (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    .end local v1           #rc:I
    :catch_0
    move-exception v0

    .line 794
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Failed to share/unshare"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 782
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_4
    :try_start_1
    const-string v2, "un"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
