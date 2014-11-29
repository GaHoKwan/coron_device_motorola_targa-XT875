.class Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CableConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v1, 0x70017

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2900(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1022
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const/4 v1, 0x2

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1000(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1023
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1100(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1024
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->syncGetEthernetState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v1, 0x70029

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1027
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1032
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1063
    :goto_0
    return v0

    .line 1034
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1900(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3000(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    :sswitch_1
    move v0, v1

    .line 1063
    goto :goto_0

    .line 1037
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1300(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3100(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1040
    :sswitch_3
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->enableInterface()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2100(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1041
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1042
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v2, 0x70029

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1045
    :sswitch_4
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1046
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 1049
    :sswitch_5
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mGettingIpState:Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3200(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3300(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1032
    nop

    :sswitch_data_0
    .sparse-switch
        0x70001 -> :sswitch_3
        0x70002 -> :sswitch_4
        0x7000b -> :sswitch_1
        0x70015 -> :sswitch_1
        0x70016 -> :sswitch_0
        0x7001f -> :sswitch_1
        0x70020 -> :sswitch_2
        0x70029 -> :sswitch_5
        0x7002a -> :sswitch_1
        0x70033 -> :sswitch_1
        0x70034 -> :sswitch_1
    .end sparse-switch
.end method
