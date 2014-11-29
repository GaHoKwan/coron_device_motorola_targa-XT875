.class public Lcom/motorola/android/camera/CameraMotExt;
.super Ljava/lang/Object;
.source "CameraMotExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/camera/CameraMotExt$1;,
        Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;,
        Lcom/motorola/android/camera/CameraMotExt$EnvCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraMotExt"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private final mEnvCallback:Lcom/motorola/android/camera/CameraMotExt$EnvCallback;

.field private mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "mCam"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/camera/CameraMotExt$EnvCallback;-><init>(Lcom/motorola/android/camera/CameraMotExt;Lcom/motorola/android/camera/CameraMotExt$1;)V

    iput-object v0, p0, Lcom/motorola/android/camera/CameraMotExt;->mEnvCallback:Lcom/motorola/android/camera/CameraMotExt$EnvCallback;

    .line 45
    iput-object p1, p0, Lcom/motorola/android/camera/CameraMotExt;->mCamera:Landroid/hardware/Camera;

    .line 47
    iput-object v1, p0, Lcom/motorola/android/camera/CameraMotExt;->mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/camera/CameraMotExt;)Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/motorola/android/camera/CameraMotExt;->mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;

    return-object v0
.end method


# virtual methods
.method public final enableShutterSound(I)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/android/camera/CameraMotExt;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(I)V

    .line 82
    return-void
.end method

.method public final setEnvDetectCallback(Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/android/camera/CameraMotExt;->mEnvDetectCallback:Lcom/motorola/android/camera/CameraMotExt$EnvDetectCallback;

    .line 59
    iget-object v0, p0, Lcom/motorola/android/camera/CameraMotExt;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/android/camera/CameraMotExt;->mEnvCallback:Lcom/motorola/android/camera/CameraMotExt$EnvCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 60
    return-void
.end method
