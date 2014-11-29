.class Lcom/motorola/android/telephony/AtCmdCallbackListener$1;
.super Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;
.source "AtCmdCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/AtCmdCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/AtCmdCallbackListener;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    invoke-direct {p0}, Lcom/motorola/android/telephony/IAtCmdServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onACCSIMComplete([B)V
    .locals 2
    .parameter "resp"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method

.method public onAPNEQComplete(II[Ljava/lang/String;)V
    .locals 2
    .parameter "what"
    .parameter "operation"
    .parameter "resp"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public onAkaAuthenticationComplete(Lcom/motorola/android/telephony/AkaAuthResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public onCallDisconnect(Lcom/motorola/android/telephony/ConnectionInfo;)V
    .locals 3
    .parameter "connection"

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public onCallFailure(I)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public onCallForwardResult(Ljava/util/List;)V
    .locals 3
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
    .local p1, callforwards:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/CallForwardInfo;>;"
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method public onCallStateChanged(Ljava/util/List;)V
    .locals 3
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
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/telephony/ConnectionInfo;>;"
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public onCloseSimSessionComplete(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void
.end method

.method public onComplete(III)V
    .locals 3
    .parameter "what"
    .parameter "operation"
    .parameter "result"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method

.method public onGPRSRegistrationStateComplete([Ljava/lang/String;)V
    .locals 2
    .parameter "rawStr"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    return-void
.end method

.method public onGsmAuthenticationComplete(Lcom/motorola/android/telephony/GsmAuthResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method public onMMISSComplete(II)V
    .locals 3
    .parameter "ss"
    .parameter "result"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public onMMIUSSDComplete(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public onMRUCComplete([Ljava/lang/String;)V
    .locals 2
    .parameter "resp"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method

.method public onMRUEQComplete(II[Ljava/lang/String;)V
    .locals 2
    .parameter "what"
    .parameter "operation"
    .parameter "resp"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method public onNetworkStateChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public onOpenSimSessionComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method

.method public onQueryAccessTechComplete(III)V
    .locals 3
    .parameter "queryType"
    .parameter "networkInfo"
    .parameter "result"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method

.method public onRegistrationStateComplete([Ljava/lang/String;)V
    .locals 2
    .parameter "rawStr"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public onRequestOemStringComplete(II[Ljava/lang/String;)V
    .locals 2
    .parameter "seqId"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public onRetrieveSimAppIdsComplete(Ljava/util/List;)V
    .locals 2
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
    .line 205
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public onSIMIOComplete(II[B)V
    .locals 2
    .parameter "sw1"
    .parameter "sw2"
    .parameter "str"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public onSIMPINComplete(III)V
    .locals 3
    .parameter "target"
    .parameter "operation"
    .parameter "result"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public onUnsolicitedOemRaw([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$1;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, v0, Lcom/motorola/android/telephony/AtCmdCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 191
    return-void
.end method
