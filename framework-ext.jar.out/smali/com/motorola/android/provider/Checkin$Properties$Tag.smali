.class public final enum Lcom/motorola/android/provider/Checkin$Properties$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/Checkin$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/provider/Checkin$Properties$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum EVENT_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "DESIRED_BUILD"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    .line 204
    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "EVENT_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    .line 205
    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "PROCESS_TAGS"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    .line 206
    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "EVENT_TAGS"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    .line 207
    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "LOG_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/android/provider/Checkin$Properties$Tag;

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

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
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/provider/Checkin$Properties$Tag;
    .locals 1
    .parameter "name"

    .prologue
    .line 202
    const-class v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/provider/Checkin$Properties$Tag;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/provider/Checkin$Properties$Tag;

    return-object v0
.end method
