.class Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;->this$1:Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;->this$1:Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;

    iget-object v1, v1, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver$1;->this$1:Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;

    iget-object v1, v1, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/server/search/SearchManagerService;->access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
