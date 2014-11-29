.class public Lcom/motorola/extensions/DynamicPreferences;
.super Ljava/lang/Object;
.source "DynamicPreferences.java"


# static fields
.field public static final META_KEY_DYNAMIC_HEADER:Ljava/lang/String; = "com.motorola.extensions.header"

.field public static final META_KEY_DYNAMIC_PREFERENCE:Ljava/lang/String; = "com.motorola.extensions.preference"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/motorola/extensions/DynamicPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/DynamicPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static addOrOverrideHeaders(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter
    .parameter "screenIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    if-nez p2, :cond_1

    .line 213
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 180
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    const/16 v9, 0x80

    invoke-virtual {v6, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v1, activity:Landroid/content/pm/ResolveInfo;
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 190
    .local v5, metaData:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    const-string v9, "com.motorola.extensions.header"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 194
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v8, targetPkgName:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 200
    const/4 v7, 0x0

    .line 202
    .local v7, targetContext:Landroid/content/Context;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 203
    new-instance v4, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v4, v7, v9}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 205
    .local v4, inflater:Lcom/motorola/extensions/internal/DynamicPreferenceInflater;
    const-string v9, "com.motorola.extensions.header"

    invoke-virtual {v4, p0, v9, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->inflate(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 206
    .end local v4           #inflater:Lcom/motorola/extensions/internal/DynamicPreferenceInflater;
    :catch_0
    move-exception v2

    .line 207
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/motorola/extensions/DynamicPreferences;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find the application "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/Throwable;
    sget-object v9, Lcom/motorola/extensions/DynamicPreferences;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating dynamic header from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V
    .locals 13
    .parameter "root"
    .parameter "screenIntent"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 140
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 104
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v1, activity:Landroid/content/pm/ResolveInfo;
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 117
    .local v9, targetPkgName:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 121
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    const-string v10, "com.motorola.extensions.preference"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    const/4 v8, 0x0

    .line 127
    .local v8, targetContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 128
    new-instance v5, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v8, v10}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 130
    .local v5, inflater:Lcom/motorola/extensions/internal/DynamicPreferenceInflater;
    const-string v10, "com.motorola.extensions.preference"

    invoke-virtual {v5, v10, p0}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->inflate(Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 131
    .end local v5           #inflater:Lcom/motorola/extensions/internal/DynamicPreferenceInflater;
    :catch_0
    move-exception v3

    .line 132
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/motorola/extensions/DynamicPreferences;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find the application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 135
    .local v3, e:Ljava/lang/Throwable;
    sget-object v10, Lcom/motorola/extensions/DynamicPreferences;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error inflating dynamic preference from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
