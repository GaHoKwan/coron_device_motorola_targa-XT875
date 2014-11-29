.class Lcom/android/server/MountService$ShareUnshareCmdQueue;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareUnshareCmdQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    }
.end annotation


# instance fields
.field private mShareUnshareCmdList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method private constructor <init>(Lcom/android/server/MountService;)V
    .locals 1
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/MountService$ShareUnshareCmdQueue;-><init>(Lcom/android/server/MountService;)V

    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/MountService$ShareUnshareCmdQueue;->enqueue(Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V

    .line 803
    return-void
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V
    .locals 7
    .parameter "path"
    .parameter "method"
    .parameter "enable"
    .parameter "condition"

    .prologue
    .line 807
    iget-object v6, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    monitor-enter v6

    .line 808
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;-><init>(Lcom/android/server/MountService$ShareUnshareCmdQueue;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/MountService$Condition;)V

    .line 809
    .local v0, cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 810
    monitor-exit v6

    .line 811
    return-void

    .line 810
    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public realExec()V
    .locals 6

    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;

    .line 816
    .local v0, cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    if-eqz v0, :cond_0

    .line 817
    iget-object v1, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->mCondition:Lcom/android/server/MountService$Condition;

    invoke-interface {v1}, Lcom/android/server/MountService$Condition;->condition()Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 827
    :cond_0
    :goto_0
    monitor-exit v2

    .line 828
    return-void

    .line 820
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;->exec()V

    .line 821
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 823
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->mShareUnshareCmdList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/server/MountService$ShareUnshareCmdQueue;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 827
    .end local v0           #cmd:Lcom/android/server/MountService$ShareUnshareCmdQueue$ShareUnshareCmd;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
