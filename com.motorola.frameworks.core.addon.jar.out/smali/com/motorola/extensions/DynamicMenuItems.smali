.class public Lcom/motorola/extensions/DynamicMenuItems;
.super Ljava/lang/Object;
.source "DynamicMenuItems.java"


# static fields
.field public static final META_KEY_DYNAMIC_MENU:Ljava/lang/String; = "com.motorola.extensions.menu"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mOverrideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/motorola/extensions/DynamicMenuItems;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/DynamicMenuItems;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/extensions/DynamicMenuItems;->mOverrideList:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static addOrOverrideMenuItems(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)Lcom/motorola/extensions/DynamicMenuItems;
    .locals 15
    .parameter "context"
    .parameter "menu"
    .parameter "screenIntent"

    .prologue
    .line 91
    new-instance v7, Lcom/motorola/extensions/DynamicMenuItems;

    invoke-direct {v7}, Lcom/motorola/extensions/DynamicMenuItems;-><init>()V

    .line 92
    .local v7, items:Lcom/motorola/extensions/DynamicMenuItems;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 94
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 135
    :cond_0
    return-object v7

    .line 97
    :cond_1
    if-eqz p2, :cond_0

    .line 100
    const/16 v12, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v2, activity:Landroid/content/pm/ResolveInfo;
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 106
    .local v11, targetPkgName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 109
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v12, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 110
    .local v8, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_2

    const-string v12, "com.motorola.extensions.menu"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 114
    const/4 v10, 0x0

    .line 116
    .local v10, targetContext:Landroid/content/Context;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 118
    new-instance v6, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v6, v10, v12}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 120
    .local v6, inflater:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
    const-string v12, "com.motorola.extensions.menu"

    move-object/from16 v0, p1

    invoke-virtual {v6, p0, v0, v12}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->inflate(Landroid/content/Context;Landroid/view/Menu;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->getMetaData()Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    move-result-object v3

    .line 122
    .local v3, data:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v3}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/motorola/extensions/DynamicMenuItems;->addOverrideId(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v3           #data:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    .end local v6           #inflater:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
    :catch_0
    move-exception v4

    .line 126
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v12, Lcom/motorola/extensions/DynamicMenuItems;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not find the application "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 129
    .local v4, e:Ljava/lang/Throwable;
    sget-object v12, Lcom/motorola/extensions/DynamicMenuItems;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error inflating the menu items for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addOverrideId(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/motorola/extensions/DynamicMenuItems;->mOverrideList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/motorola/extensions/DynamicMenuItems;->mOverrideList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    .local v1, id:I
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 151
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 152
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 155
    .end local v1           #id:I
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_1
    return-void
.end method
