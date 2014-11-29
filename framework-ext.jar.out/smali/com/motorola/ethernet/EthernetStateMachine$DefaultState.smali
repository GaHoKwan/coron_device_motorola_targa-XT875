.class Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 898
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$902(Lcom/motorola/ethernet/EthernetStateMachine;I)I

    .line 899
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1000(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 900
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1100(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 901
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetEnabled(Z)V

    .line 902
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v1, 0x7000e

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1700(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 947
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 907
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 940
    :goto_0
    return v0

    .line 909
    :sswitch_0
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 940
    goto :goto_0

    .line 912
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1300(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1400(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 915
    :sswitch_3
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->checkAdapterState()Z
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1500(Lcom/motorola/ethernet/EthernetStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1612(Lcom/motorola/ethernet/EthernetStateMachine;I)I

    .line 917
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCheckAdapterCount:I
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1600(Lcom/motorola/ethernet/EthernetStateMachine;)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 918
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v2, 0x7000e

    iget-object v3, p0, Lcom/motorola/ethernet/EthernetStateMachine$DefaultState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCheckAdapterCount:I
    invoke-static {v3}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1600(Lcom/motorola/ethernet/EthernetStateMachine;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xbb8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 907
    nop

    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_1
        0x30005 -> :sswitch_1
        0x70001 -> :sswitch_1
        0x70002 -> :sswitch_0
        0x7000b -> :sswitch_1
        0x7000e -> :sswitch_3
        0x70015 -> :sswitch_2
        0x70016 -> :sswitch_1
        0x7001f -> :sswitch_1
        0x70020 -> :sswitch_1
        0x70029 -> :sswitch_1
        0x7002a -> :sswitch_1
        0x70033 -> :sswitch_1
        0x70034 -> :sswitch_1
    .end sparse-switch
.end method
