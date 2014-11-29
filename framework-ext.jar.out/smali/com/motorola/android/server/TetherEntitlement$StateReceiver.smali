.class Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/TetherEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/TetherEntitlement;


# direct methods
.method private constructor <init>(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, action:Ljava/lang/String;
    const-string v18, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "entitlement_state"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$102(Lcom/motorola/android/server/TetherEntitlement;I)I

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "APN_CHECK_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 121
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check fail."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "vzw"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "entitlement_status_code"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, status_code:Ljava/lang/String;
    const-string v18, "TetherEntitlement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Status Code = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v13, :cond_2

    const-string v18, "-3"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->startSelfProvision()V
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;)V

    goto :goto_0

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    .line 141
    .end local v13           #status_code:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, tethered:[Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 143
    .local v8, iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$800()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v10, :cond_5

    aget-object v11, v4, v6

    .line 144
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 145
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 143
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 142
    .end local v11           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 153
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 154
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check success."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 165
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 166
    .restart local v14       #tethered:[Ljava/lang/String;
    move-object v3, v14

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 167
    .restart local v8       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$800()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v10, :cond_9

    aget-object v11, v4, v6

    .line 168
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 169
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 167
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 166
    .end local v11           #regex:Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_3

    .line 176
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 177
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check verifying."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 185
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 186
    .restart local v14       #tethered:[Ljava/lang/String;
    move-object v3, v14

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :goto_5
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 187
    .restart local v8       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$800()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_6
    if-ge v6, v10, :cond_d

    aget-object v11, v4, v6

    .line 188
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 189
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 187
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 186
    .end local v11           #regex:Ljava/lang/String;
    :cond_d
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_5

    .line 197
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_e
    const-string v18, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 198
    const/16 v17, 0x0

    .line 199
    .local v17, usbTethered:Z
    const/16 v16, 0x0

    .line 200
    .local v16, usbErrored:Z
    const-string v18, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 202
    .local v15, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 204
    .local v5, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 205
    .local v12, s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$800()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_7
    if-ge v7, v9, :cond_f

    aget-object v11, v3, v7

    .line 206
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v17, 0x1

    .line 205
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 209
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #regex:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 210
    .restart local v12       #s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$800()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_8
    if-ge v7, v9, :cond_12

    aget-object v11, v3, v7

    .line 211
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v16, 0x1

    .line 210
    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 214
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #regex:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    :cond_14
    const-string v18, "TetherEntitlement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "usbTethered:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",usbErrored:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_15

    if-nez v17, :cond_15

    if-nez v16, :cond_15

    .line 216
    const-string v18, "TetherEntitlement"

    const-string v19, "Ignoring this since tether is pending"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :cond_15
    if-eqz v17, :cond_16

    .line 222
    const-string v18, "TetherEntitlement"

    const-string v19, "Tethered..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 230
    :cond_16
    if-nez v16, :cond_17

    .line 231
    const-string v18, "TetherEntitlement"

    const-string v19, "Untethered"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 236
    :cond_17
    if-eqz v16, :cond_0

    .line 237
    const-string v18, "TetherEntitlement"

    const-string v19, "usbErrored: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0
.end method
