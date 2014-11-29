.class public final enum Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;
.super Ljava/lang/Enum;
.source "EthernetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/ethernet/EthernetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxySettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

.field public static final enum NONE:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

.field public static final enum STATIC:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

.field public static final enum UNASSIGNED:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->NONE:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    .line 42
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->STATIC:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    .line 45
    new-instance v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    const-string v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->UNASSIGNED:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    sget-object v1, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->NONE:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->STATIC:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->UNASSIGNED:Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->$VALUES:[Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    return-object v0
.end method

.method public static values()[Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;->$VALUES:[Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/ethernet/EthernetConfiguration$ProxySettings;

    return-object v0
.end method
