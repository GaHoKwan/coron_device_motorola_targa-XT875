.class public Lcom/motorola/android/telephony/AtCmdCallbackListener;
.super Ljava/lang/Object;
.source "AtCmdCallbackListener.java"


# static fields
.field public static final LISTEN_ACCSIM_COMPLETE:I = 0x10

.field public static final LISTEN_AKA_AUTHENTICATION_COMPLETE:I = 0x18

.field public static final LISTEN_APN_EDIT_QUERY_COMPLETE:I = 0x12

.field public static final LISTEN_CALLFAILURE:I = 0x3

.field public static final LISTEN_CALLFORWARD_RESULT:I = 0x4

.field public static final LISTEN_CALL_DISCONNECT:I = 0x8

.field public static final LISTEN_CALL_STATE_CHANGE:I = 0x1

.field public static final LISTEN_CLEARMRU_COMPLETE:I = 0x11

.field public static final LISTEN_CLOSE_SIM_SESSION_COMPLETE:I = 0x16

.field public static final LISTEN_GPRSREGSTATE_COMPLETE:I = 0xd

.field public static final LISTEN_GSM_AUTHENTICATION_COMPLETE:I = 0x17

.field public static final LISTEN_MMI_USSD_COMPLETE:I = 0xa

.field public static final LISTEN_MRU_EDIT_QUERY_COMPLETE:I = 0x13

.field public static final LISTEN_NETWORK_STATE_CHANGE:I = 0xb

.field public static final LISTEN_OEMSTRING_COMPLETE:I = 0xe

.field public static final LISTEN_OPEN_SIM_SESSION_COMPLETE:I = 0x15

.field public static final LISTEN_OPERATION_COMPLETE:I = 0x5

.field public static final LISTEN_QUERY_ACCESS_TECH_COMPLETE:I = 0x9

.field public static final LISTEN_REGSTATE_COMPLETE:I = 0xc

.field public static final LISTEN_RETRIEVE_SIM_APP_IDS_COMPLETE:I = 0x14

.field public static final LISTEN_SIMIO_COMPLETE:I = 0x6

.field public static final LISTEN_SIMPIN_COMPLETE:I = 0x7

.field public static final LISTEN_SS:I = 0x2

.field public static final LISTEN_UNSOL_OEM_RAW:I = 0xf


# instance fields
.field public callback:Lcom/motorola/android/telephony/IAtCmdServiceCallback;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;-><init>(Lcom/motorola/android/telephony/AtCmdCallbackListener;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->callback:Lcom/motorola/android/telephony/IAtCmdServiceCallback;

    .line 222
    new-instance v0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;-><init>(Lcom/motorola/android/telephony/AtCmdCallbackListener;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method


# virtual methods
.method public onACCSIMComplete([B)V
    .locals 0
    .parameter "resp"

    .prologue
    .line 83
    return-void
.end method

.method public onAPNEQComplete(II[Ljava/lang/String;)V
    .locals 0
    .parameter "what"
    .parameter "operation"
    .parameter "resp"

    .prologue
    .line 118
    return-void
.end method

.method public onAkaAuthenticationComplete(Lcom/motorola/android/telephony/AkaAuthResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 138
    return-void
.end method

.method public onCallDisconnect(Lcom/motorola/android/telephony/ConnectionInfo;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 90
    return-void
.end method

.method public onCallFailure(I)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 70
    return-void
.end method

.method public onCallForwardResult(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/telephony/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, callforwards:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/CallForwardInfo;>;"
    return-void
.end method

.method public onCallStateChanged(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/telephony/ConnectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    return-void
.end method

.method public onCloseSimSessionComplete(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 132
    return-void
.end method

.method public onComplete(III)V
    .locals 0
    .parameter "what"
    .parameter "operation"
    .parameter "result"

    .prologue
    .line 76
    return-void
.end method

.method public onGPRSRegistrationStateComplete([Ljava/lang/String;)V
    .locals 0
    .parameter "rawStr"

    .prologue
    .line 105
    return-void
.end method

.method public onGsmAuthenticationComplete(Lcom/motorola/android/telephony/GsmAuthResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 135
    return-void
.end method

.method public onMMISSComplete(II)V
    .locals 0
    .parameter "ss"
    .parameter "result"

    .prologue
    .line 67
    return-void
.end method

.method public onMMIUSSDComplete(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 96
    return-void
.end method

.method public onMRUCComplete([Ljava/lang/String;)V
    .locals 0
    .parameter "resp"

    .prologue
    .line 115
    return-void
.end method

.method public onMRUEQComplete(II[Ljava/lang/String;)V
    .locals 0
    .parameter "what"
    .parameter "operation"
    .parameter "resp"

    .prologue
    .line 121
    return-void
.end method

.method public onNetworkStateChange()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onOpenSimSessionComplete(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 129
    return-void
.end method

.method public onQueryAccessTechComplete(III)V
    .locals 0
    .parameter "queryType"
    .parameter "networkInfo"
    .parameter "result"

    .prologue
    .line 93
    return-void
.end method

.method public onRegistrationStateComplete([Ljava/lang/String;)V
    .locals 0
    .parameter "rawStr"

    .prologue
    .line 102
    return-void
.end method

.method public onRequestOemStringComplete(II[Ljava/lang/String;)V
    .locals 0
    .parameter "seqId"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 108
    return-void
.end method

.method public onRetrieveSimAppIdsComplete(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onSIMIOComplete(II[B)V
    .locals 0
    .parameter "sw1"
    .parameter "sw2"
    .parameter "str"

    .prologue
    .line 79
    return-void
.end method

.method public onSIMPINComplete(III)V
    .locals 0
    .parameter "target"
    .parameter "operation"
    .parameter "result"

    .prologue
    .line 87
    return-void
.end method

.method public onUnsolicitedOemRaw([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 111
    return-void
.end method
