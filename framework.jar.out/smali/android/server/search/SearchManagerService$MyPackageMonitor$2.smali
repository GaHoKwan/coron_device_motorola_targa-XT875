.class Landroid/server/search/SearchManagerService$MyPackageMonitor$2;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/search/SearchManagerService$MyPackageMonitor;->onPackageModified(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/search/SearchManagerService$MyPackageMonitor;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService$MyPackageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor$2;->this$1:Landroid/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor$2;->this$1:Landroid/server/search/SearchManagerService$MyPackageMonitor;

    #calls: Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V
    invoke-static {v0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->access$300(Landroid/server/search/SearchManagerService$MyPackageMonitor;)V

    .line 139
    return-void
.end method
