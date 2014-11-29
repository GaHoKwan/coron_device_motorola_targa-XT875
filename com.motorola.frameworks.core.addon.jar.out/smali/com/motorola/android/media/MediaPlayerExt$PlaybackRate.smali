.class public final Lcom/motorola/android/media/MediaPlayerExt$PlaybackRate;
.super Ljava/lang/Object;
.source "MediaPlayerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/media/MediaPlayerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackRate"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final MEDIA_PLAYBACK_RATE_NORMAL:I = 0x1

.field public static final MEDIA_PLAYBACK_RATE_SLOW_2X:I = 0x2

.field public static final MEDIA_PLAYBACK_RATE_SLOW_4X:I = 0x4

.field public static final MEDIA_PLAYBACK_RATE_SLOW_8X:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/motorola/android/media/MediaPlayerExt;


# direct methods
.method private constructor <init>(Lcom/motorola/android/media/MediaPlayerExt;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/motorola/android/media/MediaPlayerExt$PlaybackRate;->this$0:Lcom/motorola/android/media/MediaPlayerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
