.class public Lcom/motorola/server/encryption/EncryptionService$AdminHandler;
.super Ljava/lang/Thread;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/encryption/EncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdminHandler"
.end annotation


# instance fields
.field mReady:Z

.field final synthetic this$0:Lcom/motorola/server/encryption/EncryptionService;


# direct methods
.method public constructor <init>(Lcom/motorola/server/encryption/EncryptionService;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    .line 136
    const-string v0, "encryption_admin_thr"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->mReady:Z

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/motorola/server/encryption/EncryptionService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    #calls: Lcom/motorola/server/encryption/EncryptionService;->init()V
    invoke-static {v0}, Lcom/motorola/server/encryption/EncryptionService;->access$100(Lcom/motorola/server/encryption/EncryptionService;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/server/encryption/EncryptionService;->mInitDone:Z
    invoke-static {v0, v1}, Lcom/motorola/server/encryption/EncryptionService;->access$202(Lcom/motorola/server/encryption/EncryptionService;Z)Z

    .line 146
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 147
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    new-instance v1, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;

    invoke-direct {v1, p0}, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;-><init>(Lcom/motorola/server/encryption/EncryptionService$AdminHandler;)V

    #setter for: Lcom/motorola/server/encryption/EncryptionService;->mAdminHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/motorola/server/encryption/EncryptionService;->access$302(Lcom/motorola/server/encryption/EncryptionService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 176
    const-string v0, "EncryptionService"

    const-string v1, "adminHandler thread ready to go"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->mReady:Z

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 182
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
