.class public final enum Lcom/android/internal/telephony/cat/EventCode;
.super Ljava/lang/Enum;
.source "EventCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/EventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum BROWSER_TERMINATION:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum CALL_CONNECTED:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum CALL_DISCONNECTED:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum CARD_READER_STATUS:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum CHANNEL_STATUS:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum DATA_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum HCI_CONNECTIVITY_EVENT:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum IDLE_SCREEN_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum LOCATION_STATUS:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum MT_CALL:Lcom/android/internal/telephony/cat/EventCode;

.field public static final enum USER_ACTIVITY:Lcom/android/internal/telephony/cat/EventCode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "MT_CALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->MT_CALL:Lcom/android/internal/telephony/cat/EventCode;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "CALL_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->CALL_CONNECTED:Lcom/android/internal/telephony/cat/EventCode;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "CALL_DISCONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->CALL_DISCONNECTED:Lcom/android/internal/telephony/cat/EventCode;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "LOCATION_STATUS"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->LOCATION_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "USER_ACTIVITY"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->USER_ACTIVITY:Lcom/android/internal/telephony/cat/EventCode;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "IDLE_SCREEN_AVAILABLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->IDLE_SCREEN_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "CARD_READER_STATUS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->CARD_READER_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "LANGUAGE_SELECTION"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/EventCode;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "BROWSER_TERMINATION"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->BROWSER_TERMINATION:Lcom/android/internal/telephony/cat/EventCode;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "DATA_AVAILABLE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->DATA_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "CHANNEL_STATUS"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/EventCode;

    const-string v1, "HCI_CONNECTIVITY_EVENT"

    const/16 v2, 0xb

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/EventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->HCI_CONNECTIVITY_EVENT:Lcom/android/internal/telephony/cat/EventCode;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/internal/telephony/cat/EventCode;

    sget-object v1, Lcom/android/internal/telephony/cat/EventCode;->MT_CALL:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/EventCode;->CALL_CONNECTED:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/EventCode;->CALL_DISCONNECTED:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/EventCode;->LOCATION_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/EventCode;->USER_ACTIVITY:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->IDLE_SCREEN_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->CARD_READER_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->BROWSER_TERMINATION:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->DATA_AVAILABLE:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/cat/EventCode;->HCI_CONNECTIVITY_EVENT:Lcom/android/internal/telephony/cat/EventCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/EventCode;->$VALUES:[Lcom/android/internal/telephony/cat/EventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/cat/EventCode;->mCode:I

    .line 43
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/EventCode;
    .locals 5
    .parameter "value"

    .prologue
    .line 54
    invoke-static {}, Lcom/android/internal/telephony/cat/EventCode;->values()[Lcom/android/internal/telephony/cat/EventCode;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/EventCode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 55
    .local v3, r:Lcom/android/internal/telephony/cat/EventCode;
    iget v4, v3, Lcom/android/internal/telephony/cat/EventCode;->mCode:I

    if-ne v4, p0, :cond_0

    .line 59
    .end local v3           #r:Lcom/android/internal/telephony/cat/EventCode;
    :goto_1
    return-object v3

    .line 54
    .restart local v3       #r:Lcom/android/internal/telephony/cat/EventCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v3           #r:Lcom/android/internal/telephony/cat/EventCode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/EventCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/EventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/EventCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/EventCode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/EventCode;->$VALUES:[Lcom/android/internal/telephony/cat/EventCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/EventCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/cat/EventCode;->mCode:I

    return v0
.end method
