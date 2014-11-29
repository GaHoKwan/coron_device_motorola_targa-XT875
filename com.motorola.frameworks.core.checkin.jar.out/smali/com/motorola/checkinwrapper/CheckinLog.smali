.class public final Lcom/motorola/checkinwrapper/CheckinLog;
.super Ljava/lang/Object;
.source "CheckinLog.java"


# static fields
.field public static final log:Lcom/motorola/checkinwrapper/CheckinLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/motorola/checkinwrapper/CheckinLog;

    invoke-direct {v0}, Lcom/motorola/checkinwrapper/CheckinLog;-><init>()V

    sput-object v0, Lcom/motorola/checkinwrapper/CheckinLog;->log:Lcom/motorola/checkinwrapper/CheckinLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
