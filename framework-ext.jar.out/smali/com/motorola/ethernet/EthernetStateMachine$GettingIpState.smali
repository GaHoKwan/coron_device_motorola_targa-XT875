.class Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GettingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Lcom/motorola/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const v9, 0x70034

    .line 1076
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const/4 v7, 0x3

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v6, v7}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1000(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1077
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1100(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1084
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1085
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1086
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v7, 0x30002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1087
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/util/StateMachine;->quit()V

    .line 1088
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const/4 v7, 0x0

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v7}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3402(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1091
    :cond_0
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v7, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3500(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v9, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2500(Lcom/motorola/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    #setter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v7}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3402(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1093
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1094
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 1095
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3400(Lcom/motorola/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v7, 0x30001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1098
    :cond_2
    invoke-static {}, Lcom/motorola/ethernet/EthernetConfigStore;->getIpConfiguration()Landroid/net/DhcpInfoInternal;

    move-result-object v1

    .line 1099
    .local v1, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1100
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1101
    .local v4, netd:Landroid/os/INetworkManagementService;
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1102
    .local v3, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1103
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1105
    :try_start_0
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2500(Lcom/motorola/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1107
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    const v7, 0x70033

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v5

    .line 1109
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1111
    .end local v5           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1112
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v6, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1186
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1121
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1180
    :goto_0
    return v0

    .line 1123
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->handlePreDhcpSetup()V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1180
    goto :goto_0

    .line 1126
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->handlePostDhcpSetup()V

    .line 1127
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 1128
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3600(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 1129
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mIpConnectedState:Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3700(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3800(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1130
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3900(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1136
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4000(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1140
    :sswitch_3
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3600(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 1141
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mIpConnectedState:Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3700(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/motorola/ethernet/EthernetStateMachine$IpConnectedState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4100(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1144
    :sswitch_4
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$3900(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1149
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4200(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1152
    :sswitch_5
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1153
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1900(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4400(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1156
    :sswitch_6
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1157
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1300(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4500(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1160
    :sswitch_7
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2300(Lcom/motorola/ethernet/EthernetStateMachine;)V

    .line 1161
    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/motorola/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Lcom/motorola/ethernet/EthernetStateMachine;->access$1200(Lcom/motorola/ethernet/EthernetStateMachine;I)V

    .line 1162
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    iget-object v2, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #getter for: Lcom/motorola/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$2600(Lcom/motorola/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4600(Lcom/motorola/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1171
    :sswitch_8
    iget-object v0, p0, Lcom/motorola/ethernet/EthernetStateMachine$GettingIpState;->this$0:Lcom/motorola/ethernet/EthernetStateMachine;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/ethernet/EthernetStateMachine;->access$4700(Lcom/motorola/ethernet/EthernetStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
        0x70001 -> :sswitch_8
        0x70002 -> :sswitch_7
        0x7000b -> :sswitch_8
        0x70015 -> :sswitch_8
        0x70016 -> :sswitch_5
        0x7001f -> :sswitch_8
        0x70020 -> :sswitch_6
        0x70029 -> :sswitch_1
        0x7002a -> :sswitch_8
        0x70033 -> :sswitch_3
        0x70034 -> :sswitch_4
    .end sparse-switch
.end method
