.class public final enum Lcom/motorola/android/telephony/GsmAuthResult$Status;
.super Ljava/lang/Enum;
.source "GsmAuthResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/GsmAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/telephony/GsmAuthResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/telephony/GsmAuthResult$Status;

.field public static final enum NOT_READY:Lcom/motorola/android/telephony/GsmAuthResult$Status;

.field public static final enum SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/GsmAuthResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    new-instance v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/telephony/GsmAuthResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->NOT_READY:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/android/telephony/GsmAuthResult$Status;

    sget-object v1, Lcom/motorola/android/telephony/GsmAuthResult$Status;->SUCCESS:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/telephony/GsmAuthResult$Status;->NOT_READY:Lcom/motorola/android/telephony/GsmAuthResult$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->$VALUES:[Lcom/motorola/android/telephony/GsmAuthResult$Status;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/GsmAuthResult$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/telephony/GsmAuthResult$Status;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/motorola/android/telephony/GsmAuthResult$Status;->$VALUES:[Lcom/motorola/android/telephony/GsmAuthResult$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/telephony/GsmAuthResult$Status;

    return-object v0
.end method
