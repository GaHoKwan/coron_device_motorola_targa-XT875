.class Lcom/motorola/ethernet/EthernetStateMachine$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mMachine:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter "machine"

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$InterfaceObserver;->mMachine:Lcom/motorola/ethernet/EthernetStateMachine;

    .line 182
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$InterfaceObserver;->mMachine:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->interfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$000(Lcom/motorola/ethernet/EthernetStateMachine;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 192
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$InterfaceObserver;->mMachine:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->interfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$100(Lcom/motorola/ethernet/EthernetStateMachine;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 187
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 203
    return-void
.end method
