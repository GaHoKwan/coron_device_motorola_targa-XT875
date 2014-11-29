.class Lcom/motorola/android/telephony/AtCmdCallbackListener$2;
.super Landroid/os/Handler;
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
    .line 222
    iput-object p1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onCallStateChanged(Ljava/util/List;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onMMISSComplete(II)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onCallFailure(I)V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onCallForwardResult(Ljava/util/List;)V

    goto :goto_0

    .line 238
    :pswitch_4
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onComplete(III)V

    goto :goto_0

    .line 241
    :pswitch_5
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onSIMIOComplete(II[B)V

    goto :goto_0

    .line 245
    :pswitch_6
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onACCSIMComplete([B)V

    goto :goto_0

    .line 249
    :pswitch_7
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onSIMPINComplete(III)V

    goto :goto_0

    .line 252
    :pswitch_8
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/telephony/ConnectionInfo;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onCallDisconnect(Lcom/motorola/android/telephony/ConnectionInfo;)V

    goto :goto_0

    .line 255
    :pswitch_9
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onQueryAccessTechComplete(III)V

    goto/16 :goto_0

    .line 258
    :pswitch_a
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onMMIUSSDComplete(I)V

    goto/16 :goto_0

    .line 261
    :pswitch_b
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onRegistrationStateComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :pswitch_c
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onGPRSRegistrationStateComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_d
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onNetworkStateChange()V

    goto/16 :goto_0

    .line 270
    :pswitch_e
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onRequestOemStringComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_f
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onUnsolicitedOemRaw([B)V

    goto/16 :goto_0

    .line 277
    :pswitch_10
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onMRUCComplete([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_11
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onAPNEQComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_12
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onMRUEQComplete(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_13
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onRetrieveSimAppIdsComplete(Ljava/util/List;)V

    goto/16 :goto_0

    .line 291
    :pswitch_14
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onOpenSimSessionComplete(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_15
    iget-object v0, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onCloseSimSessionComplete(I)V

    goto/16 :goto_0

    .line 297
    :pswitch_16
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/telephony/GsmAuthResult;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onGsmAuthenticationComplete(Lcom/motorola/android/telephony/GsmAuthResult;)V

    goto/16 :goto_0

    .line 300
    :pswitch_17
    iget-object v1, p0, Lcom/motorola/android/telephony/AtCmdCallbackListener$2;->this$0:Lcom/motorola/android/telephony/AtCmdCallbackListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/telephony/AkaAuthResult;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/AtCmdCallbackListener;->onAkaAuthenticationComplete(Lcom/motorola/android/telephony/AkaAuthResult;)V

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
