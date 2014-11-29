.class Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiApMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiApMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiApMonitor;


# direct methods
.method public constructor <init>(Lcom/motorola/android/wifi/WifiApMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    .line 203
    const-string v0, "WifiApMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private connectToHostapd()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 333
    const-string v3, "WifiApMonitor"

    const-string v4, "enter connectToHostapd WifiApMonitor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, connectTries:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #getter for: Lcom/motorola/android/wifi/WifiApMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/motorola/android/wifi/WifiApMonitor;->access$400(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->connectToHostapd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    :goto_1
    return v2

    .line 340
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/16 v3, 0xf

    if-ge v0, v3, :cond_1

    .line 341
    #calls: Lcom/motorola/android/wifi/WifiApMonitor;->nap(I)V
    invoke-static {v2}, Lcom/motorola/android/wifi/WifiApMonitor;->access$500(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 346
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleHsMaxEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v1, "WifiApMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAX devices Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "motorola.net.wifi.MAX_DEVICES_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #getter for: Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/WifiApMonitor;->access$600(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWpsEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 351
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string v1, "WifiApMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WPS Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v1, "WPS-REG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "WifiApMonitor"

    const-string v2, "handleWpsEvent enter  event == WPS_REG_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "motorola.net.wifi.PBC_STOP_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #getter for: Lcom/motorola/android/wifi/WifiApMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/wifi/WifiApMonitor;->access$600(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleWpsProbeReq(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v0, "WifiApMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/wifi/WifiApMonitor;->setPbcNotificationOnHS(Z)V

    goto :goto_0
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 387
    packed-switch p1, :pswitch_data_0

    .line 403
    :pswitch_0
    return-void

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 207
    const-string v6, "WifiApMonitor"

    const-string v7, "MonitorThread run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->connectToHostapd()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    const-string v6, "WifiApMonitor"

    const-string v7, "connect to Hostapd: success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->waitForApEvent()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "WifiApMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v3, :cond_0

    .line 228
    const-string v6, "HS-MAX-DEVICE-CONNECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    const-string v6, "WifiApMonitor"

    const-string v7, "HS_MAX_CONNECTED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v3}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->handleHsMaxEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_1
    const-string v6, "WifiApMonitor"

    const-string v7, "connect to Hostapd: fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2
    :goto_1
    return-void

    .line 236
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_3
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 237
    const-string v6, "WifiApMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    const-string v6, "WPS-PROBE-REQ-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 240
    const-string v6, "WifiApMonitor"

    const-string v7, "startsWith(probeReqPrefix"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0, v3}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->handleWpsProbeReq(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_5
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 244
    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    const-string v6, "WifiApMonitor"

    const-string v7, "startsWith(wpsEventPrefix"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0, v3}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->handleWpsEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_6
    invoke-static {}, Lcom/motorola/android/wifi/WifiApMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 253
    .local v5, nameEnd:I
    if-eq v5, v9, :cond_7

    .line 254
    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 255
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 256
    const-string v6, "WifiApMonitor"

    const-string v7, "Received hostapd  event with empty event name"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_8
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 264
    const/4 v0, 0x1

    .line 281
    .local v0, event:I
    :goto_2
    move-object v1, v3

    .line 282
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v12, :cond_9

    const/4 v6, 0x5

    if-ne v0, v6, :cond_13

    .line 283
    :cond_9
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 295
    :cond_a
    :goto_3
    if-ne v0, v11, :cond_15

    .line 328
    :cond_b
    :goto_4
    iget-object v6, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #setter for: Lcom/motorola/android/wifi/WifiApMonitor;->mRecvErrors:I
    invoke-static {v6, v10}, Lcom/motorola/android/wifi/WifiApMonitor;->access$302(Lcom/motorola/android/wifi/WifiApMonitor;I)I

    goto/16 :goto_0

    .line 265
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_c
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 266
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto :goto_2

    .line 267
    .end local v0           #event:I
    :cond_d
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 268
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_2

    .line 269
    .end local v0           #event:I
    :cond_e
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 270
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_2

    .line 271
    .end local v0           #event:I
    :cond_f
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 272
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_2

    .line 273
    .end local v0           #event:I
    :cond_10
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 274
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_2

    .line 275
    .end local v0           #event:I
    :cond_11
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 276
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_2

    .line 279
    .end local v0           #event:I
    :cond_12
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_2

    .line 284
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_13
    if-ne v0, v11, :cond_14

    .line 285
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 286
    .local v4, ind:I
    if-eq v4, v9, :cond_a

    .line 287
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 290
    .end local v4           #ind:I
    :cond_14
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 291
    .restart local v4       #ind:I
    if-eq v4, v9, :cond_a

    .line 292
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 297
    .end local v4           #ind:I
    :cond_15
    if-eq v0, v12, :cond_b

    .line 299
    const/4 v6, 0x6

    if-ne v0, v6, :cond_17

    .line 304
    const-string v6, "connection closed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 306
    const-string v6, "WifiApMonitor"

    const-string v7, "Monitor socket is closed, exiting thread"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 315
    :cond_16
    const-string v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 316
    iget-object v6, p0, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    invoke-static {v6}, Lcom/motorola/android/wifi/WifiApMonitor;->access$304(Lcom/motorola/android/wifi/WifiApMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 318
    const-string v6, "WifiApMonitor"

    const-string v7, "too many recv errors, closing connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 326
    :cond_17
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/wifi/WifiApMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method
