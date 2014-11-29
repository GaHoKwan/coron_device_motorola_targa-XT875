.class public Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.super Ljava/lang/Object;
.source "DynamicPreferenceAttrHandler.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static final RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutoRefresh:Z

.field protected mClassName:Ljava/lang/CharSequence;

.field protected mDataAuthority:Ljava/lang/CharSequence;

.field protected mDependecyKey:Ljava/lang/CharSequence;

.field protected mEnabled:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIntent:Landroid/content/Intent;

.field protected mKey:Ljava/lang/CharSequence;

.field protected mOrderAboveKey:Ljava/lang/CharSequence;

.field protected mOrderBelowKey:Ljava/lang/CharSequence;

.field protected mOrderFirst:Z

.field protected mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

.field protected mRedirectLinkages:[Ljava/lang/String;

.field protected mRemoveKeys:[Ljava/lang/String;

.field protected mReplaceKey:Ljava/lang/CharSequence;

.field protected mSelectable:Z

.field protected mStyle:Ljava/lang/CharSequence;

.field protected mSummary:Ljava/lang/CharSequence;

.field protected final mTargetContext:Landroid/content/Context;

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, "^[$].+:.+/.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "targetContext"

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    .line 72
    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    .line 73
    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    .line 74
    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    .line 75
    return-void
.end method

.method protected static findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .locals 5
    .parameter "root"
    .parameter "key"

    .prologue
    .line 499
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 500
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 501
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, curKey:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    new-instance v3, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    invoke-direct {v3, p0, v2, v1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 514
    .end local v0           #curKey:Ljava/lang/String;
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_0
    :goto_1
    return-object v3

    .line 506
    .restart local v0       #curKey:Ljava/lang/String;
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_1
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 507
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2           #preference:Landroid/preference/Preference;
    invoke-static {v2, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v3

    .line 509
    .local v3, retPref:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-nez v3, :cond_0

    .line 499
    .end local v3           #retPref:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v0           #curKey:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static getOrderWithRearrangement(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)I
    .locals 7
    .parameter "orderReference"

    .prologue
    .line 474
    if-nez p0, :cond_1

    .line 475
    const/4 v1, -0x1

    .line 494
    :cond_0
    return v1

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    .line 478
    .local v4, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->get()Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 479
    .local v1, order:I
    iget v5, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->mIndex:I

    .line 480
    .local v5, startIndex:I
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getOrderFlag()I

    move-result v2

    .line 481
    .local v2, orderFlag:I
    if-eqz v2, :cond_0

    .line 485
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    .line 486
    add-int/lit8 v5, v5, 0x1

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 490
    :cond_2
    move v0, v5

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 491
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 492
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "context"
    .parameter "styleResName"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, style:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, styleName:Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 408
    .end local v1           #styleName:Ljava/lang/String;
    :cond_2
    return v0
.end method


# virtual methods
.method protected getDrawableFromResource(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "value"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    :goto_0
    return-object v2

    .line 205
    :catch_0
    move-exception v2

    .line 209
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDynamicValuesUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 371
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 372
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 373
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTypeForPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 377
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getOrderReference(Landroid/preference/PreferenceGroup;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    .locals 4
    .parameter "root"

    .prologue
    const/4 v3, 0x0

    .line 446
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    const/4 v0, 0x1

    .line 449
    .local v0, orderFlag:I
    iget-boolean v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    if-eqz v2, :cond_2

    .line 450
    new-instance v1, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .end local v1           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {v1, p1, v2, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;-><init>(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    .line 465
    .restart local v1       #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {v1, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->setOrderFlag(I)V

    .line 467
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 470
    .end local v0           #orderFlag:I
    .end local v1           #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_1
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    return-object v2

    .line 453
    .restart local v0       #orderFlag:I
    .restart local v1       #orderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 455
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v1

    .line 458
    :cond_3
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v1

    .line 462
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "value"

    .prologue
    .line 172
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 173
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "string"

    iget-object v11, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, id:I
    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, strValue:Ljava/lang/String;
    sget-object v9, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->RESOURCE_STRING_REFERENCE_PATTERN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 179
    const-string v9, ":"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, packageSplit:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, refPackageName:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v3, v9

    const-string v10, "/"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, identiSplit:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, fullString:Ljava/lang/String;
    move-object p1, v0

    .line 185
    :try_start_0
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 187
    .local v5, refContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 188
    .local v7, refRes:Landroid/content/res/Resources;
    move-object v4, v7

    .line 189
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v7, v0, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    .end local v0           #fullString:Ljava/lang/String;
    .end local v2           #identiSplit:[Ljava/lang/String;
    .end local v3           #packageSplit:[Ljava/lang/String;
    .end local v5           #refContext:Landroid/content/Context;
    .end local v6           #refPackageName:Ljava/lang/String;
    .end local v7           #refRes:Landroid/content/res/Resources;
    .end local v8           #strValue:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4, v1, p1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    return-object v9

    .line 191
    .restart local v0       #fullString:Ljava/lang/String;
    .restart local v2       #identiSplit:[Ljava/lang/String;
    .restart local v3       #packageSplit:[Ljava/lang/String;
    .restart local v6       #refPackageName:Ljava/lang/String;
    .restart local v8       #strValue:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string v0, "preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "attrCode"
    .parameter "value"

    .prologue
    .line 169
    return-void
.end method

.method protected handleRedirectLinkages(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .parameter "root"

    .prologue
    .line 239
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 240
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 241
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 242
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 243
    .local v5, pref:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 241
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, keyfullname:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyfullname:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected handleRemove(Landroid/preference/PreferenceGroup;)V
    .locals 7
    .parameter "root"

    .prologue
    .line 219
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    if-eqz v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    invoke-static {p1, v6}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v4

    .line 222
    .local v4, orderPref:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {p0, p1, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V

    .line 224
    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 227
    .end local v4           #orderPref:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_0
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 228
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 229
    .local v2, key:Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->findPreferenceAndParent(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v5

    .line 230
    .local v5, p:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v5, :cond_1

    .line 231
    invoke-virtual {p0, p1, v5}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V

    .line 228
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v5           #p:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    :cond_2
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 3
    .parameter "hostContext"
    .parameter "hostRoot"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/PreferenceLoader;->getPreferenceInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 424
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 426
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v2

    return-object v2

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 418
    .local v1, style:I
    if-eqz v1, :cond_2

    .line 419
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/extensions/preference/DynamicPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v0       #pref:Landroid/preference/Preference;
    goto :goto_0

    .line 421
    :cond_2
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {v0, p1}, Lcom/motorola/extensions/preference/DynamicPreference;-><init>(Landroid/content/Context;)V

    .restart local v0       #pref:Landroid/preference/Preference;
    goto :goto_0
.end method

.method protected inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 9
    .parameter "hostContext"
    .parameter "root"
    .parameter "pref"

    .prologue
    const/4 v5, 0x0

    .line 332
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleRemove(Landroid/preference/PreferenceGroup;)V

    .line 333
    if-eqz p3, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    if-nez v6, :cond_1

    :cond_0
    move-object p3, v5

    .line 361
    .end local p3
    :goto_0
    return-object p3

    .line 336
    .restart local p3
    :cond_1
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getOrderReference(Landroid/preference/PreferenceGroup;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    move-result-object v2

    .line 337
    .local v2, orderPref:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;
    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object p2

    .line 339
    invoke-static {v2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getOrderWithRearrangement(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)I

    move-result v1

    .line 340
    .local v1, order:I
    if-ltz v1, :cond_2

    .line 341
    invoke-virtual {p3, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 344
    .end local v1           #order:I
    :cond_2
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 346
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v4

    .line 349
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_4

    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    if-eqz v6, :cond_4

    instance-of v6, p3, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    if-eqz v6, :cond_4

    move-object v3, p3

    .line 351
    check-cast v3, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;

    .line 353
    .local v3, p:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
    iget-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    invoke-interface {v3, v4, v6}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;->setAutoRefresh(Landroid/net/Uri;Z)V

    .line 354
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 355
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v6, "listen"

    const-string v7, "true"

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    .end local v0           #b:Landroid/net/Uri$Builder;
    .end local v3           #p:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleRedirectLinkages(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method

.method public prepareChild()Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    .line 432
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    .line 433
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    .line 435
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 436
    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    .line 437
    return-object p0
.end method

.method public final readAttrs(Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 81
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, value:Ljava/lang/CharSequence;
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v2}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->getAttrCode(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, attrCode:I
    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_2
    :pswitch_0
    invoke-virtual {p0, v0, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->handleAttribute(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 100
    :pswitch_3
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 103
    :pswitch_4
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    goto :goto_1

    .line 106
    :pswitch_5
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDependecyKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 109
    :pswitch_6
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    goto :goto_1

    .line 112
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDrawableFromResource(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 115
    :pswitch_8
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mReplaceKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 118
    :pswitch_9
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRemoveKeys:[Ljava/lang/String;

    goto :goto_1

    .line 121
    :pswitch_a
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderAboveKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 124
    :pswitch_b
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderBelowKey:Ljava/lang/CharSequence;

    goto :goto_1

    .line 127
    :pswitch_c
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderFirst:Z

    goto :goto_1

    .line 130
    :pswitch_d
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 133
    :pswitch_e
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mAutoRefresh:Z

    goto :goto_1

    .line 136
    :pswitch_f
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    goto :goto_1

    .line 139
    :pswitch_10
    iput-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mClassName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 142
    :pswitch_11
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mRedirectLinkages:[Ljava/lang/String;

    goto :goto_2

    .line 164
    .end local v0           #attrCode:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected removePreference(Landroid/preference/PreferenceGroup;Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V
    .locals 6
    .parameter "root"
    .parameter "orderPref"

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-virtual {p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->get()Landroid/preference/Preference;

    move-result-object v0

    .line 255
    .local v0, curPref:Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->hasKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 257
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 258
    .local v2, pref:Landroid/preference/Preference;
    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v2}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, prefDepKey:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    goto :goto_1

    .line 271
    .end local v1           #i:I
    .end local v2           #pref:Landroid/preference/Preference;
    .end local v3           #prefDepKey:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    .line 216
    return-void
.end method

.method public setOrderReference(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;)V
    .locals 0
    .parameter "orderReference"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mOrderReference:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler$OrderReference;

    .line 442
    return-void
.end method

.method protected setProperties(Landroid/preference/Preference;)V
    .locals 10
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 275
    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 276
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 283
    :goto_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_2
    iget-boolean v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mEnabled:Z

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-boolean v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mSelectable:Z

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v1

    .line 297
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_6

    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 302
    const-string v2, "visible"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 304
    .local v7, index:I
    if-ltz v7, :cond_3

    .line 305
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v8

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mVisible:Z

    .line 307
    :cond_3
    const-string v2, "enabled"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 309
    if-ltz v7, :cond_4

    .line 310
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    :cond_4
    const-string v2, "value"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 314
    if-ltz v7, :cond_5

    .line 315
    invoke-virtual {p0, p1, v6, v7}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_5
    if-eqz v6, :cond_6

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #index:I
    :cond_6
    return-void

    .line 281
    .end local v1           #uri:Landroid/net/Uri;
    :cond_7
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #index:I
    :cond_8
    move v2, v9

    .line 305
    goto :goto_1

    :cond_9
    move v2, v9

    .line 310
    goto :goto_2

    .line 318
    .end local v7           #index:I
    :cond_a
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is invalid for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_b

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2
.end method

.method protected setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "preference"
    .parameter "cursor"
    .parameter "valueIndex"

    .prologue
    .line 389
    if-ltz p3, :cond_0

    .line 390
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
