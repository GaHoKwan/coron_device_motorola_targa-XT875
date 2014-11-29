.class public Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.source "DynamicCategoryPreferenceAttrHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "targetContext"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->mChildren:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public addChild(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->prepareChild()Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 11
    .parameter "hostContext"
    .parameter "hostRoot"

    .prologue
    .line 49
    const/4 v6, 0x0

    .line 50
    .local v6, prefCategory:Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 51
    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v8}, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v7

    .line 52
    .local v7, style:I
    if-eqz v7, :cond_1

    .line 53
    new-instance v6, Landroid/preference/PreferenceCategory;

    .end local v6           #prefCategory:Landroid/preference/PreferenceCategory;
    const/4 v8, 0x0

    invoke-direct {v6, p1, v8, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    .restart local v6       #prefCategory:Landroid/preference/PreferenceCategory;
    :goto_0
    invoke-virtual {p0, v6}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 59
    .end local v7           #style:I
    :cond_0
    invoke-virtual {p0, p1, p2, v6}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 60
    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 61
    if-eqz v6, :cond_2

    .line 62
    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    .line 64
    .local v0, child:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    :try_start_0
    invoke-virtual {v0, p1, v6}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Throwable;
    sget-object v8, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to inflate \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for the category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    .end local v0           #child:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v7       #style:I
    :cond_1
    new-instance v6, Landroid/preference/PreferenceCategory;

    .end local v6           #prefCategory:Landroid/preference/PreferenceCategory;
    invoke-direct {v6, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .restart local v6       #prefCategory:Landroid/preference/PreferenceCategory;
    goto :goto_0

    .line 72
    .end local v7           #style:I
    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getOrderReference(Landroid/preference/PreferenceGroup;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v3

    .line 73
    .local v3, orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    iget-object v8, p0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    .line 74
    .restart local v0       #child:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v0, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setOrderReference(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V

    .line 77
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    .line 78
    .local v5, p:Landroid/preference/Preference;
    if-eqz v5, :cond_3

    .line 79
    new-instance v4, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    invoke-virtual {v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v3           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .local v4, orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    const/4 v8, 0x2

    :try_start_2
    invoke-virtual {v4, v8}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->setOrderFlag(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .restart local v3       #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    goto :goto_2

    .line 84
    .end local v5           #p:Landroid/preference/Preference;
    :catch_1
    move-exception v1

    .line 85
    .restart local v1       #e:Ljava/lang/Throwable;
    :goto_3
    sget-object v8, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to inflate \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    goto :goto_2

    .line 95
    .end local v0           #child:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_5
    if-eqz v6, :cond_6

    .end local v6           #prefCategory:Landroid/preference/PreferenceCategory;
    :goto_4
    return-object v6

    .restart local v6       #prefCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    move-object v6, p2

    goto :goto_4

    .line 84
    .restart local v0       #child:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .restart local v5       #p:Landroid/preference/Preference;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .restart local v3       #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    goto :goto_3
.end method
