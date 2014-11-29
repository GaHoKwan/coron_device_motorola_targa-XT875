.class public Lcom/android/internal/policy/impl/SlidingDoor;
.super Landroid/widget/RelativeLayout;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SlidingDoor$1;,
        Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;,
        Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;,
        Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 1000.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAX_ELEM_NUM:I = 0xa

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_COMPLETE_ANIMATE:I = 0x3e9

.field private static final NOSTATE_CHANGE_THRESHOLD:F = 0.25f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final STATE_CHANGE_THRESHOLD:F = 0.5f

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field DBG:Z

.field TAG:Ljava/lang/String;

.field mAlpha:I

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field mCurLeadId:I

.field private mCurrentAnimationTime:J

.field private mDoorClosed:Z

.field mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

.field mElemNum:I

.field private final mHandler:Landroid/os/Handler;

.field mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field mName:Ljava/lang/String;

.field private mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

.field mStartMovePoint:I

.field mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/SlidingDoor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x447a

    const/high16 v6, 0x3f00

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 656
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v3, "SlidingDoor"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    .line 53
    new-instance v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;Lcom/android/internal/policy/impl/SlidingDoor$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 67
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAlpha:I

    .line 68
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    .line 69
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 70
    iput-object v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 71
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    .line 72
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 73
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 74
    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    .line 902
    const-string v3, "Undefined"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    .line 658
    sget-object v3, Lcom/android/internal/R$styleable;->SlidingDoor:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 659
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 660
    .local v2, orientation:I
    if-ne v2, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 661
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 664
    .local v1, density:F
    const/high16 v3, 0x4316

    mul-float/2addr v3, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    .line 665
    mul-float v3, v7, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    .line 666
    const/high16 v3, 0x44fa

    mul-float/2addr v3, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    .line 667
    mul-float v3, v7, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityUnits:I

    .line 669
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 671
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 675
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    const-string v4, "constructed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    return-void

    .end local v1           #density:F
    :cond_1
    move v3, v5

    .line 660
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SlidingDoor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SlidingDoor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    .line 854
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "do Animation: mAnimating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v1, :cond_3

    .line 856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->incrementAnimation()V

    .line 857
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SlidingDoor;->moveGroup(I)Z

    move-result v0

    .line 858
    .local v0, animationOngoing:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "do Animation: mAnimating after move ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_1
    if-eqz v0, :cond_4

    .line 861
    iget-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    .line 862
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doAnimation: sendMessageAtTime (MSG_ANIMATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 870
    .end local v0           #animationOngoing:Z
    :cond_3
    :goto_0
    return-void

    .line 866
    .restart local v0       #animationOngoing:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doAnimation: sendMessage (MSG_COMPLETE_ANIMATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 874
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 875
    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 876
    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 877
    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 878
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 879
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 880
    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    .line 881
    return-void
.end method


# virtual methods
.method public addGroupElem(Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)Z
    .locals 8
    .parameter "element"
    .parameter "params"
    .parameter "external"

    .prologue
    const/4 v0, 0x0

    .line 425
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    if-eqz p1, :cond_0

    .line 428
    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)V

    aput-object v0, v6, v7

    .line 429
    iget v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method buildGroupCache()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->buildElemCache()V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method protected changeDoorState(Z)V
    .locals 1
    .parameter "close"

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-ne v0, p1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->completeGroupMove(Z)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 953
    instance-of v0, p1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    return v0
.end method

.method public cleanUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 686
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 688
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 689
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    .line 690
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 691
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 695
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iput-object v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    .line 697
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    iput-object v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aput-object v4, v1, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_2
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 702
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 703
    iput-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 705
    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->changeDoorState(Z)V

    .line 743
    return-void
.end method

.method completeGroupMove(Z)V
    .locals 7
    .parameter "isToggle"

    .prologue
    const/4 v3, 0x0

    .line 556
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " completeGroupMove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v4, :cond_2

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    const/4 v1, 0x0

    .local v1, res:Z
    const/4 v2, 0x0

    .line 559
    .local v2, retRes:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v4, :cond_5

    .line 560
    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->completeElemMove(Z)Z

    move-result v1

    .line 561
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 559
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 561
    goto :goto_2

    .line 563
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 564
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 565
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-eq v2, v3, :cond_1

    .line 566
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    .line 567
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "completeGroupMove: requesting layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 569
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-eqz v3, :cond_7

    .line 570
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v3, :cond_1

    .line 571
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorClosed(I)V

    goto :goto_0

    .line 574
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v3, :cond_1

    .line 575
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorOpened(I)V

    goto :goto_0
.end method

.method public createParamsInstance()Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 727
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchDraw: doing render"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->drawGroup(Landroid/graphics/Canvas;)V

    .line 735
    :goto_0
    return-void

    .line 731
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchDraw: calling parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->buildGroupCache()V

    goto :goto_0
.end method

.method drawGroup(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->drawElement(Landroid/graphics/Canvas;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method

.method findGroupElementsFromRes()V
    .locals 11

    .prologue
    .line 434
    new-instance v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;-><init>(Lcom/android/internal/policy/impl/SlidingDoor;)V

    .line 435
    .local v6, params:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 436
    .local v1, count:I
    const/4 v4, 0x0

    .line 437
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 438
    .local v7, sdlp:Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_b

    .line 439
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_7

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 442
    instance-of v8, v4, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    if-eqz v8, :cond_7

    move-object v7, v4

    .line 443
    check-cast v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    .line 444
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    .line 445
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_1

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_1
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    .line 446
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_2
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    .line 447
    iget v9, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    :goto_3
    add-int/2addr v8, v9

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    .line 448
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->fades:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    .line 449
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnClose:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .line 450
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->visibleOnOpen:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    .line 451
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->moveDelayDistance:I

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    .line 452
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->lead:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    .line 453
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->leadId:I

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    .line 454
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->accelMoveK:F

    iput v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    .line 455
    iget-boolean v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->buildCacheOnce:Z

    iput-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    .line 456
    const/4 v5, 0x0

    .line 457
    .local v5, offsetsDiff:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    const/4 v8, 0x2

    if-ge v3, v8, :cond_5

    .line 458
    iget-object v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    iget-object v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffsets:[I

    aget v10, v8, v3

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v8, :cond_4

    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    :goto_5
    add-int/2addr v8, v10

    aput v8, v9, v3

    .line 459
    iget-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    aget v8, v8, v3

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-eq v8, v9, :cond_0

    const/4 v5, 0x1

    .line 457
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 445
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_1
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_1

    .line 446
    :cond_2
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_2

    .line 447
    :cond_3
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    goto :goto_3

    .line 458
    .restart local v3       #j:I
    .restart local v5       #offsetsDiff:Z
    :cond_4
    iget v8, v7, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    goto :goto_5

    .line 461
    :cond_5
    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    if-nez v8, :cond_6

    iget v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v8, v9, :cond_6

    if-nez v5, :cond_6

    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    iget-boolean v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    if-eq v8, v9, :cond_7

    .line 464
    :cond_6
    iget-boolean v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    if-eqz v8, :cond_8

    const-string v8, "SD_handle"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    .line 468
    :goto_6
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v6, v8}, Lcom/android/internal/policy/impl/SlidingDoor;->addGroupElem(Landroid/view/View;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;Z)Z

    .line 438
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 465
    .restart local v3       #j:I
    .restart local v5       #offsetsDiff:Z
    :cond_8
    iget v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iget v9, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    if-ne v8, v9, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const-string v8, "SD_movecontent"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    goto :goto_6

    .line 466
    :cond_a
    const-string v8, "SD_fadecontent"

    iput-object v8, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    goto :goto_6

    .line 473
    .end local v0           #child:Landroid/view/View;
    .end local v3           #j:I
    .end local v5           #offsetsDiff:Z
    :cond_b
    return-void
.end method

.method flingGroup(IF)V
    .locals 11
    .parameter "position"
    .parameter "init_velocity"

    .prologue
    const/16 v10, 0x3e8

    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 582
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v5, v5, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    int-to-float v5, v5

    mul-float v4, p2, v5

    .line 583
    .local v4, velocity:F
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: mLeadElem ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    int-to-float v5, p1

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationPosition:F

    .line 585
    iput p2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 586
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getState()Z

    move-result v0

    .line 587
    .local v0, isClosed:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getRelativePos()F

    move-result v3

    .line 588
    .local v3, relPos:F
    if-eqz v0, :cond_7

    .line 589
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const/high16 v5, 0x3e80

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_2

    :cond_1
    cmpl-float v5, v3, v9

    if-lez v5, :cond_6

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 591
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 592
    cmpg-float v5, v4, v8

    if-gez v5, :cond_3

    .line 593
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    .line 615
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 616
    .local v1, now:J
    iput-wide v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimationLastTime:J

    .line 617
    const-wide/16 v5, 0x10

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    .line 618
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 619
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: removeMessages(MSG_ANIMATE)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "flingGroup: sendMessageAtTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurrentAnimationTime:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->stopTrackingGroup()V

    .line 624
    return-void

    .line 596
    .end local v1           #now:J
    :cond_6
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 597
    cmpl-float v5, v4, v8

    if-lez v5, :cond_3

    .line 598
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto :goto_0

    .line 602
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    const/high16 v5, 0x3f40

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_9

    :cond_8
    cmpl-float v5, v3, v9

    if-lez v5, :cond_a

    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a

    .line 604
    :cond_9
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 605
    cmpg-float v5, v4, v8

    if-gez v5, :cond_3

    .line 606
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto/16 :goto_0

    .line 609
    :cond_a
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumAcceleration:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    iget v6, v6, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mTouchDirK:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedAcceleration:F

    .line 610
    cmpl-float v5, v4, v8

    if-lez v5, :cond_3

    .line 611
    iput v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimatedVelocity:F

    goto/16 :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 947
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 958
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 937
    new-instance v0, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationVertical()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    return v0
.end method

.method layoutGroup()V
    .locals 2

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->layoutElem()V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method measureGroup(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->measureElem(II)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method moveGroup(I)Z
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 542
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v5, :cond_0

    .line 552
    :goto_0
    return v4

    .line 543
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "moveGroup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    sub-int v5, p1, v5

    int-to-float v3, v5

    .line 545
    .local v3, touchChange:F
    const/4 v2, 0x0

    .line 546
    .local v2, res:Z
    const/4 v1, 0x0

    .line 547
    .local v1, preres:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v5, :cond_4

    .line 548
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->moveElemOnTouch(F)Z

    move-result v1

    .line 549
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 547
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 549
    goto :goto_2

    .line 551
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v4, v2

    .line 552
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SlidingDoor;->findGroupElementsFromRes()V

    .line 711
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onInterceptTouchEvent: DOWN received: x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SlidingDoor;->startTrackingGroup(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 793
    :cond_1
    :goto_0
    return v0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;->onDoorHandleTouched(I)V

    .line 789
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 791
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 752
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v2, :cond_2

    .line 779
    :cond_1
    return-void

    .line 756
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 763
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v2, :cond_1

    .line 764
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", right="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v2, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 770
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    if-eqz v2, :cond_3

    .line 771
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnLayout: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).initLeftMargin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initLeftMargin:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).initTopMargin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->initTopMargin:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).closedOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->closedOffset:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).openOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    iget v2, v2, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->openOffset:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ((LayoutParams)params).otherDimOffset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;

    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Lcom/android/internal/policy/impl/SlidingDoor$LayoutParams;->otherDimOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 716
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/SlidingDoor;->measureGroup(II)V

    .line 717
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 718
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v1, :cond_0

    .line 719
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OnMeasure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mParams:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": measured width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->mElement:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 798
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-eqz v7, :cond_0

    .line 799
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 801
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 849
    .end local v0           #action:I
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_1
    move v7, v9

    :goto_1
    return v7

    .line 803
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: MOVE received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_2
    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SlidingDoor;->moveGroup(I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    goto :goto_2

    .line 808
    :pswitch_1
    if-ne v0, v9, :cond_8

    .line 809
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: UP received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 814
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityUnits:I

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 816
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 817
    .local v6, yVelocity:F
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 820
    .local v5, xVelocity:F
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    .line 821
    .local v4, vertical:Z
    if-eqz v4, :cond_a

    .line 822
    cmpg-float v7, v6, v12

    if-gez v7, :cond_9

    move v1, v9

    .line 823
    .local v1, negative:Z
    :goto_4
    cmpg-float v7, v5, v12

    if-gez v7, :cond_5

    .line 824
    neg-float v5, v5

    .line 826
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_6

    .line 827
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v5, v7

    .line 839
    :cond_6
    :goto_5
    float-to-double v10, v5

    float-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v2, v10

    .line 840
    .local v2, velocity:F
    if-eqz v1, :cond_7

    .line 841
    neg-float v2, v2

    .line 844
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_6
    float-to-int v7, v7

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/impl/SlidingDoor;->flingGroup(IF)V

    goto/16 :goto_0

    .line 811
    .end local v1           #negative:Z
    .end local v2           #velocity:F
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #vertical:Z
    .end local v5           #xVelocity:F
    .end local v6           #yVelocity:F
    :cond_8
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "onTouchEvent: CANCEL received: x= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .restart local v3       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v4       #vertical:Z
    .restart local v5       #xVelocity:F
    .restart local v6       #yVelocity:F
    :cond_9
    move v1, v8

    .line 822
    goto :goto_4

    .line 830
    :cond_a
    cmpg-float v7, v5, v12

    if-gez v7, :cond_c

    move v1, v9

    .line 831
    .restart local v1       #negative:Z
    :goto_7
    cmpg-float v7, v6, v12

    if-gez v7, :cond_b

    .line 832
    neg-float v6, v6

    .line 834
    :cond_b
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_6

    .line 835
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mMaximumMinorVelocity:I

    int-to-float v6, v7

    goto :goto_5

    .end local v1           #negative:Z
    :cond_c
    move v1, v8

    .line 830
    goto :goto_7

    .line 844
    .restart local v1       #negative:Z
    .restart local v2       #velocity:F
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    goto :goto_6

    .end local v0           #action:I
    .end local v1           #negative:Z
    .end local v2           #velocity:F
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #vertical:Z
    .end local v5           #xVelocity:F
    .end local v6           #yVelocity:F
    :cond_e
    move v7, v8

    .line 849
    goto/16 :goto_1

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SlidingDoor;->changeDoorState(Z)V

    .line 739
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    .line 909
    return-void
.end method

.method public setOnDoorStateListener(Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;)V
    .locals 0
    .parameter "onDoorStateListener"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mOnDoorStateListener:Lcom/android/internal/policy/impl/SlidingDoor$OnDoorStateListener;

    .line 891
    return-void
.end method

.method startTrackingGroup(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 496
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v7, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v5

    .line 497
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 498
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 499
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 500
    .local v4, y:F
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 502
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_3

    .line 504
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadStatus()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mDoorClosed:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadId()I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    if-ne v7, v8, :cond_4

    .line 505
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 506
    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 507
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    iput-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    .line 512
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    if-eqz v7, :cond_0

    .line 513
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVertical:Z

    if-eqz v7, :cond_5

    .end local v4           #y:F
    :goto_2
    float-to-int v7, v4

    iput v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mStartMovePoint:I

    .line 514
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->activeLead(Z)Z

    .line 515
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemLeadId()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    .line 516
    const/4 v2, 0x0

    :goto_3
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_6

    .line 517
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    iget v8, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mCurLeadId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->adjustForNewLead(I)V

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 502
    .restart local v4       #y:F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v4, v3

    .line 513
    goto :goto_2

    .line 518
    .end local v4           #y:F
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mLeadElem:Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->getElemDirection()I

    move-result v1

    .line 519
    .local v1, groupDir:I
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v2, v7, :cond_7

    .line 520
    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v7, v7, v2

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->startTracking(I)V

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 521
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    if-eqz v7, :cond_9

    .line 522
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->DBG:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/SlidingDoor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startTrackingGroup: removeMessages(MSG_ANIMATE)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mAnimating:Z

    .line 524
    iget-object v5, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    move v5, v6

    .line 527
    goto/16 :goto_0
.end method

.method stopTrackingGroup()V
    .locals 2

    .prologue
    .line 531
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemNum:I

    if-ge v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mElemGroup:[Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElement;->stopTracking()V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mTracking:Z

    .line 535
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 539
    :cond_1
    return-void
.end method
