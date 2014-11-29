.class Landroid/server/BluetoothDunProfileHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDunProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothDunProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 200
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v2       #state:I
    :pswitch_0
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    #setter for: Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3, v4}, Landroid/server/BluetoothDunProfileHandler;->access$002(Landroid/server/BluetoothDunProfileHandler;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 179
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->onBluetoothEnable()V
    invoke-static {v3}, Landroid/server/BluetoothDunProfileHandler;->access$100(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->onBluetoothDisable()V
    invoke-static {v3}, Landroid/server/BluetoothDunProfileHandler;->access$200(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 185
    .end local v2           #state:I
    :cond_1
    const-string v3, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :cond_2
    const-string v3, "DevType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, modemType:Ljava/lang/String;
    const-string v3, "BTDUN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    iget-object v4, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v3, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    #setter for: Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z
    invoke-static {v4, v3}, Landroid/server/BluetoothDunProfileHandler;->access$302(Landroid/server/BluetoothDunProfileHandler;Z)Z

    .line 193
    :cond_3
    const-string v3, "BTDUN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v4, "Received ATCMD_DUN_DOWN Action for BT"

    #calls: Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothDunProfileHandler;->access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    const-string v4, "Stopping AtCmd Service"

    #calls: Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothDunProfileHandler;->access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler$1;->this$0:Landroid/server/BluetoothDunProfileHandler;

    #calls: Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V
    invoke-static {v3}, Landroid/server/BluetoothDunProfileHandler;->access$500(Landroid/server/BluetoothDunProfileHandler;)V

    goto :goto_0

    .line 190
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
