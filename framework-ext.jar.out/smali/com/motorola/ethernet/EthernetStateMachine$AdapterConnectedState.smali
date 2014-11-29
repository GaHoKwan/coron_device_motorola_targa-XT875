.class Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$902(Lcom/motorola/ethernet/EthernetStateMachine;I)I

    .line 955
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v1, 0x7000e

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1800(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 956
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v3}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1000(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 957
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1100(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 958
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v3}, Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetEnabled(Z)V

    .line 959
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v1, 0x70017

    #calls: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2800(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1014
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const-wide/16 v6, 0x1388

    const v5, 0x70017

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 964
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1007
    :goto_0
    return v0

    .line 966
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1900(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2000(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1007
    goto :goto_0

    .line 969
    :sswitch_2
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->enableInterface()V
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2100(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 970
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 972
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2200(Lcom/motorola/ethernet/EthernetStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    const-string v2, "EthernetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will check cable status in 5 seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 975
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2202(Lcom/motorola/ethernet/EthernetStateMachine;Z)Z

    goto :goto_1

    .line 979
    :sswitch_3
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 980
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 983
    :sswitch_4
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2400(Lcom/motorola/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 984
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2500(Lcom/motorola/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ethernet/EthernetConfigStore;->checkCableState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->notifyCableState(Z)V
    invoke-static {v0, v1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$200(Lcom/motorola/ethernet/EthernetStateMachine;Z)V

    goto :goto_1

    .line 992
    :sswitch_5
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2700(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 964
    :sswitch_data_0
    .sparse-switch
        0x70001 -> :sswitch_2
        0x70002 -> :sswitch_3
        0x7000b -> :sswitch_1
        0x70015 -> :sswitch_1
        0x70016 -> :sswitch_0
        0x70017 -> :sswitch_4
        0x7001f -> :sswitch_5
        0x70020 -> :sswitch_1
        0x70029 -> :sswitch_1
        0x7002a -> :sswitch_1
        0x70033 -> :sswitch_1
        0x70034 -> :sswitch_1
    .end sparse-switch
.end method
