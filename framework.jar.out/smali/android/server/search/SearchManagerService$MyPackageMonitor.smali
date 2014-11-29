.class Landroid/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/search/SearchManagerService$MyPackageMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->updateSearchables()V

    return-void
.end method

.method private updateSearchables()V
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$400(Landroid/server/search/SearchManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/server/search/SearchManagerService$MyPackageMonitor$2;

    invoke-direct {v1, p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor$2;-><init>(Landroid/server/search/SearchManagerService$MyPackageMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$400(Landroid/server/search/SearchManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/server/search/SearchManagerService$MyPackageMonitor$1;

    invoke-direct {v1, p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor$1;-><init>(Landroid/server/search/SearchManagerService$MyPackageMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
