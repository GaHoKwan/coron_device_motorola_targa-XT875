.class Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Landroid/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter "resolver"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    iput-object p2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    .line 161
    iget-object v0, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$400(Landroid/server/search/SearchManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;

    invoke-direct {v1, p0}, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;-><init>(Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method
