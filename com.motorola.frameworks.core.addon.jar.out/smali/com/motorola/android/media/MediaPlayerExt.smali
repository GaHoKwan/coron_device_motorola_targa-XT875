.class public final Lcom/motorola/android/media/MediaPlayerExt;
.super Ljava/lang/Object;
.source "MediaPlayerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/media/MediaPlayerExt$PlaybackRate;
    }
.end annotation


# static fields
.field private static final KEY_PARAMETER_PLAYBACK_RATE:I = 0x63f

.field private static final TAG:Ljava/lang/String; = "MediaPlayerExt"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 65
    return-void
.end method


# virtual methods
.method public setPlaybackRate(I)Z
    .locals 2
    .parameter "playback_rate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/motorola/android/media/MediaPlayerExt;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x63f

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPlaybackRate called in an invalid state. Should be called only after MediaPlayer is playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
