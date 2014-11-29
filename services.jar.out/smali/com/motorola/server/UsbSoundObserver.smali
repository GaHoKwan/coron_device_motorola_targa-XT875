.class public Lcom/motorola/server/UsbSoundObserver;
.super Landroid/os/UEventObserver;
.source "UsbSoundObserver.java"


# static fields
.field private static final CARD_DEV_CAPTURE_REGEX:Ljava/lang/String; = "snd/pcmC(\\d)D(\\d)c"

.field private static final CARD_DEV_PLAYBACK_REGEX:Ljava/lang/String; = "snd/pcmC(\\d)D(\\d)p"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field private static final USB_DEV_PATH:Ljava/lang/String; = "/devices/platform/omap/musb-omap2430"

.field private static final USB_SND_UEVENT_MATCH:Ljava/lang/String; = "SUBSYSTEM=sound"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private prev_state_capture:I

.field private prev_state_playback:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/server/UsbSoundObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/UsbSoundObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/motorola/server/UsbSoundObserver;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "SUBSYSTEM=sound"

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 45
    sget-object v8, Lcom/motorola/server/UsbSoundObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Audio UEVENT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    const-string v8, "DEVPATH"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/devices/platform/omap/musb-omap2430"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 48
    const-string v8, "DEVNAME"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, devname:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 50
    monitor-exit p0

    .line 96
    .end local v3           #devname:Ljava/lang/String;
    :goto_0
    return-void

    .line 51
    .restart local v3       #devname:Ljava/lang/String;
    :cond_0
    const-string v8, "snd/pcmC(\\d)D(\\d)p"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 52
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 53
    .local v5, matcher:Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 54
    .local v0, capture:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_1

    .line 55
    const-string v8, "snd/pcmC(\\d)D(\\d)c"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 56
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 57
    const/4 v0, 0x1

    .line 59
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2

    .line 60
    monitor-exit p0

    goto :goto_0

    .line 95
    .end local v0           #capture:I
    .end local v3           #devname:Ljava/lang/String;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 61
    .restart local v0       #capture:I
    .restart local v3       #devname:Ljava/lang/String;
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    .restart local v6       #pattern:Ljava/util/regex/Pattern;
    :cond_2
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, card:I
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, device:I
    const/4 v7, 0x0

    .line 65
    .local v7, state:I
    const-string v8, "ACTION"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "add"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 66
    const/4 v7, 0x1

    .line 68
    :cond_3
    if-ne v7, v11, :cond_5

    .line 69
    sget-object v8, Lcom/motorola/server/UsbSoundObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found usb audio card "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " device "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Capture:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, intent:Landroid/content/Intent;
    const/high16 v8, 0x2000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const/high16 v8, 0x4000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-string v8, "state"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v8, "card"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v8, "device"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v8, "capture"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    if-eqz v0, :cond_6

    .line 81
    iget v8, p0, Lcom/motorola/server/UsbSoundObserver;->prev_state_capture:I

    if-eq v7, v8, :cond_4

    .line 82
    iget-object v8, p0, Lcom/motorola/server/UsbSoundObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 83
    iput v7, p0, Lcom/motorola/server/UsbSoundObserver;->prev_state_capture:I

    .line 95
    .end local v0           #capture:I
    .end local v1           #card:I
    .end local v2           #device:I
    .end local v3           #devname:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    .end local v7           #state:I
    :cond_4
    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .line 71
    .restart local v0       #capture:I
    .restart local v1       #card:I
    .restart local v2       #device:I
    .restart local v3       #devname:Ljava/lang/String;
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    .restart local v6       #pattern:Ljava/util/regex/Pattern;
    .restart local v7       #state:I
    :cond_5
    sget-object v8, Lcom/motorola/server/UsbSoundObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove usb audio card "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " device "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Capture:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_6
    iget v8, p0, Lcom/motorola/server/UsbSoundObserver;->prev_state_playback:I

    if-eq v7, v8, :cond_4

    .line 88
    iget-object v8, p0, Lcom/motorola/server/UsbSoundObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 89
    iput v7, p0, Lcom/motorola/server/UsbSoundObserver;->prev_state_playback:I

    goto :goto_2

    .line 94
    .end local v0           #capture:I
    .end local v1           #card:I
    .end local v2           #device:I
    .end local v3           #devname:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    .end local v7           #state:I
    :cond_7
    sget-object v8, Lcom/motorola/server/UsbSoundObserver;->TAG:Ljava/lang/String;

    const-string v9, "DEVPATH not found"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
