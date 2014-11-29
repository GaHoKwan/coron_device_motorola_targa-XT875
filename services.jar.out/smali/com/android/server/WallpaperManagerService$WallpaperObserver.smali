.class Lcom/android/server/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperWTFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .parameter
    .parameter "wallpaper"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    .line 594
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x608

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 596
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 597
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 598
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 599
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper_wt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperWTFile:Ljava/io/File;

    .line 600
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v7, 0x8

    .line 604
    if-nez p2, :cond_0

    .line 648
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 609
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 610
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 611
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 612
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    .local v1, changedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    #getter for: Lcom/android/server/WallpaperManagerService;->mWebtopManager:Lcom/motorola/webtop/WebtopManager;
    invoke-static {v4}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;)Lcom/motorola/webtop/WebtopManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 617
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 619
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-ne p1, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v4, :cond_3

    .line 621
    :cond_1
    if-ne p1, v7, :cond_2

    .line 622
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 624
    :cond_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 626
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 647
    :cond_3
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v1           #changedFile:Ljava/io/File;
    .end local v2           #origId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 631
    .restart local v0       #bm:Landroid/app/backup/BackupManager;
    .restart local v1       #changedFile:Ljava/io/File;
    .restart local v2       #origId:J
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperWTFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 632
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 634
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->webtopWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    if-ne p1, v7, :cond_5

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v4, :cond_3

    .line 637
    :cond_5
    if-ne p1, v7, :cond_6

    .line 638
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 640
    :cond_6
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 642
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method