.class Lcom/android/server/LocationManagerService$LocationBackgroundThread;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationBackgroundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationBackgroundThread;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2126
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationBackgroundThread;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2128
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2129
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2130
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationBackgroundThread;->this$0:Lcom/android/server/LocationManagerService;

    new-instance v1, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationBackgroundThread;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    #setter for: Lcom/android/server/LocationManagerService;->mBackgroundHandler:Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1502(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationBackgroundHandler;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    .line 2131
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2132
    return-void
.end method
