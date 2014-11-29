.class public final enum Lcom/motorola/android/telephony/NetworkInfoExt$State;
.super Ljava/lang/Enum;
.source "NetworkInfoExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/NetworkInfoExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/telephony/NetworkInfoExt$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/telephony/NetworkInfoExt$State;

.field public static final enum AVAILABLE:Lcom/motorola/android/telephony/NetworkInfoExt$State;

.field public static final enum CURRENT:Lcom/motorola/android/telephony/NetworkInfoExt$State;

.field public static final enum FORBIDDEN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

.field public static final enum UNKNOWN:Lcom/motorola/android/telephony/NetworkInfoExt$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/NetworkInfoExt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->UNKNOWN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 28
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/telephony/NetworkInfoExt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->AVAILABLE:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 29
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/telephony/NetworkInfoExt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->CURRENT:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 30
    new-instance v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    const-string v1, "FORBIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/telephony/NetworkInfoExt$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->FORBIDDEN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/android/telephony/NetworkInfoExt$State;

    sget-object v1, Lcom/motorola/android/telephony/NetworkInfoExt$State;->UNKNOWN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/telephony/NetworkInfoExt$State;->AVAILABLE:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/telephony/NetworkInfoExt$State;->CURRENT:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/telephony/NetworkInfoExt$State;->FORBIDDEN:Lcom/motorola/android/telephony/NetworkInfoExt$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->$VALUES:[Lcom/motorola/android/telephony/NetworkInfoExt$State;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/NetworkInfoExt$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/telephony/NetworkInfoExt$State;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/motorola/android/telephony/NetworkInfoExt$State;->$VALUES:[Lcom/motorola/android/telephony/NetworkInfoExt$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/telephony/NetworkInfoExt$State;

    return-object v0
.end method
