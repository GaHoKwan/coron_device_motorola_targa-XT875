.class public Lcom/motorola/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final CUSTOMERID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/motorola/os/Build;->getCustomerid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/os/Build;->CUSTOMERID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCustomerid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const-string v1, "ro.mot.build.customerid"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, customerid:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "ro.product.brand"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    return-object v0
.end method
