.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3736
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 3739
    if-ne p1, v2, :cond_1

    .line 3741
    invoke-static {}, Landroid/media/AudioService;->access$8000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3742
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    .line 3743
    monitor-exit v3

    .line 3772
    :cond_0
    :goto_0
    return-void

    .line 3743
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3744
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_0

    .line 3746
    :cond_2
    invoke-static {}, Landroid/media/AudioService;->access$8000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3747
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$8102(Landroid/media/AudioService;Z)Z

    .line 3748
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3750
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_tty_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3753
    .local v0, ttySetting:I
    if-eqz v0, :cond_0

    .line 3755
    packed-switch v0, :pswitch_data_0

    .line 3766
    const-string/jumbo v1, "tty_off"

    .line 3768
    .local v1, tty_mode:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 3748
    .end local v0           #ttySetting:I
    .end local v1           #tty_mode:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3757
    .restart local v0       #ttySetting:I
    :pswitch_0
    const-string/jumbo v1, "tty_full"

    .line 3758
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3760
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "tty_vco"

    .line 3761
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3763
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "tty_hco"

    .line 3764
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3755
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
