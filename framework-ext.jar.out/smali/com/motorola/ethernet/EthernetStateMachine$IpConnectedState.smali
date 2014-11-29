.class Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$902(Lcom/motorola/ethernet/EthernetStateMachine;I)I

    .line 1194
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const/4 v1, 0x4

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1000(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1195
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1100(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1196
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1201
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1250
    :goto_0
    return v0

    .line 1203
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->handlePreDhcpSetup()V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1250
    goto :goto_0

    .line 1206
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->handlePostDhcpSetup()V

    .line 1207
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 1208
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3600(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    goto :goto_1

    .line 1209
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3900(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1211
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4800(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1215
    :sswitch_3
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1216
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1900(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4900(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1219
    :sswitch_4
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1220
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1300(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$5000(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1223
    :sswitch_5
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1224
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1225
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$5100(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1228
    :sswitch_6
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1229
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$5200(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1232
    :sswitch_7
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleConfigChanged(I)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$5300(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 1236
    :sswitch_8
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->reconfigure()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$5400(Lcom/motorola/ethernet/EthernetStateMachine;)V

    goto/16 :goto_1

    .line 1201
    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
        0x70001 -> :sswitch_1
        0x70002 -> :sswitch_5
        0x7000b -> :sswitch_7
        0x7000c -> :sswitch_8
        0x7000d -> :sswitch_8
        0x70015 -> :sswitch_1
        0x70016 -> :sswitch_3
        0x7001f -> :sswitch_1
        0x70020 -> :sswitch_4
        0x70029 -> :sswitch_1
        0x7002a -> :sswitch_6
        0x70033 -> :sswitch_1
        0x70034 -> :sswitch_1
    .end sparse-switch
.end method
