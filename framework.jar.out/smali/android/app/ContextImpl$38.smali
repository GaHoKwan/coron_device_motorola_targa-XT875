.class final Landroid/app/ContextImpl$38;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 529
    const-string v2, "ethernet"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 530
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/motorola/ethernet/IEthernetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/ethernet/IEthernetManager;

    move-result-object v1

    .line 531
    .local v1, service:Lcom/motorola/ethernet/IEthernetManager;
    new-instance v2, Lcom/motorola/ethernet/EthernetManager;

    iget-object v3, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/motorola/ethernet/EthernetManager;-><init>(Lcom/motorola/ethernet/IEthernetManager;Landroid/os/Handler;)V

    return-object v2
.end method
