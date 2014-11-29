.class public Lcom/motorola/webtop/WebtopManager;
.super Ljava/lang/Object;
.source "WebtopManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public isWebtopMode()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v0

    return v0
.end method
