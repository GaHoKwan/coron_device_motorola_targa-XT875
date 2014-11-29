.class Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddEmailIntent"
.end annotation


# instance fields
.field private final mData:Landroid/os/Bundle;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 2754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.email.AUTO_CREATE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mIntent:Landroid/content/Intent;

    .line 2755
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    .line 2756
    return-void
.end method

.method public static build(Landroid/os/Bundle;)Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;
    .locals 5
    .parameter "data"

    .prologue
    .line 2759
    new-instance v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;

    invoke-direct {v1, p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;-><init>(Landroid/os/Bundle;)V

    .line 2764
    .local v1, emailIntent:Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;
    const-string v2, "pass_encrypted"

    .line 2765
    .local v2, passKey:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2766
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2771
    :cond_0
    :try_start_0
    invoke-direct {v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    :goto_0
    return-object v1

    .line 2772
    :catch_0
    move-exception v0

    .line 2773
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MotDevicePolicyManagerService"

    const-string v4, "Failed parsing email account bundle"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2774
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parse()V
    .locals 1

    .prologue
    .line 2797
    const-string v0, "email"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2798
    const-string v0, "user_name"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2799
    const-string v0, "pretty_name"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2800
    const-string v0, "pass_encrypted"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2801
    const-string v0, "server_type"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2811
    const-string v0, "in_login"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2812
    const-string v0, "in_password"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2813
    const-string v0, "in_server_address"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2814
    const-string v0, "in_server_port"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2815
    const-string v0, "in_security"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2816
    const-string v0, "in_auth_type"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2826
    const-string v0, "out_login"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2827
    const-string v0, "out_password"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2828
    const-string v0, "out_server_address"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2829
    const-string v0, "out_server_port"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2830
    const-string v0, "out_security"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2831
    const-string v0, "out_auth_type"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2841
    const-string v0, "download_wifi"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2842
    const-string v0, "sync_interval"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2843
    const-string v0, "sync_wifi_only"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2844
    const-string v0, "notify"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2845
    const-string v0, "vibrate"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2846
    const-string v0, "signature_b64"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putString(Ljava/lang/String;)V

    .line 2855
    const-string v0, "aes_sync_email"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2856
    const-string v0, "aes_sync_calendar"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2857
    const-string v0, "aes_sync_contacts"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2858
    const-string v0, "aes_sync_tasks"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putBoolean(Ljava/lang/String;)V

    .line 2859
    const-string v0, "aes_sync_amount"

    invoke-direct {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->putInt(Ljava/lang/String;)V

    .line 2860
    return-void
.end method

.method private putBoolean(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2878
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2879
    .local v0, value:Z
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2881
    .end local v0           #value:Z
    :cond_0
    return-void
.end method

.method private putInt(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 2870
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2871
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2872
    .local v0, value:I
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2874
    .end local v0           #value:I
    :cond_0
    return-void
.end method

.method private putString(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 2863
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2864
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2865
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2867
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mData:Landroid/os/Bundle;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$AddEmailIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
