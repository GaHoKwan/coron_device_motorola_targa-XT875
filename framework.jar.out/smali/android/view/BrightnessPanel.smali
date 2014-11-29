.class public Landroid/view/BrightnessPanel;
.super Landroid/os/Handler;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final FLAG_SHOW_UI:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static final MAX_BRIGHTNESS_LEVEL:I = 0x64

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x0

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x2

.field private static final TIMEOUT_DELAY:I = 0xbb8


# instance fields
.field private final mDialog:Landroid/app/Dialog;

.field private mGroup:Landroid/view/ViewGroup;

.field private mSeekbarView:Landroid/widget/SeekBar;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109002e

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    .line 43
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v5, 0x1020268

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    .line 44
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 45
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    new-instance v5, Landroid/view/BrightnessPanel$1;

    invoke-direct {v5, p0}, Landroid/view/BrightnessPanel$1;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    new-instance v4, Landroid/view/BrightnessPanel$2;

    const v5, 0x10302f5

    invoke-direct {v4, p0, p1, v5}, Landroid/view/BrightnessPanel$2;-><init>(Landroid/view/BrightnessPanel;Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    .line 69
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    new-instance v5, Landroid/view/BrightnessPanel$3;

    invoke-direct {v5, p0}, Landroid/view/BrightnessPanel$3;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    iget-object v4, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 78
    .local v3, window:Landroid/view/Window;
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 80
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 85
    const/16 v4, 0x7e4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    const v4, 0x105004a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    const v4, 0x105004b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    const v4, 0x105004c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    const v4, 0x40028

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->forceTimeout()V

    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 156
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 151
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/BrightnessPanel;->onBrightnessChanged(II)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onBrightnessChanged(II)V
    .locals 3
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v0, 0x1

    .line 110
    if-ne p1, v0, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/view/BrightnessPanel;->onShowBrightnessChanged(II)V

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 117
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 163
    return-void
.end method

.method protected onShowBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 124
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 166
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 169
    return-void
.end method

.method public postBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
