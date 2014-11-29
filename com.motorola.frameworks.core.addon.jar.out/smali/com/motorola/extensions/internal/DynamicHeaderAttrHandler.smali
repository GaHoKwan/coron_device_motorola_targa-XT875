.class public Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;
.super Ljava/lang/Object;
.source "DynamicHeaderAttrHandler.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconIdName:Ljava/lang/CharSequence;

.field mIntent:Landroid/content/Intent;

.field private mOrderAboveIdName:Ljava/lang/CharSequence;

.field private mOrderBelowIdName:Ljava/lang/CharSequence;

.field private mOrderFirst:Z

.field private mRemoveIdNames:[Ljava/lang/String;

.field private mRepalceIdName:Ljava/lang/CharSequence;

.field mRootHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mSummary:Ljava/lang/CharSequence;

.field mTargetContext:Landroid/content/Context;

.field mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "targetContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    .line 45
    return-void
.end method

.method private getOrderByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 7
    .parameter "context"
    .parameter "idName"

    .prologue
    .line 167
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {p1, v3, v4}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 171
    .local v0, h:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 176
    .end local v0           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 169
    .restart local v0       #h:Landroid/preference/PreferenceActivity$Header;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v0           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v1           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "defType"

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;)V
    .locals 13
    .parameter "hostContext"

    .prologue
    .line 103
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 104
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 105
    .local v7, name:Ljava/lang/String;
    const-string v9, "id"

    invoke-static {p1, v7, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 106
    .local v5, id:I
    if-eqz v5, :cond_0

    .line 107
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 108
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 109
    .local v1, h:Landroid/preference/PreferenceActivity$Header;
    iget-wide v9, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v11, v5

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 110
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    .end local v1           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .restart local v1       #h:Landroid/preference/PreferenceActivity$Header;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #id:I
    .end local v6           #len$:I
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    .line 119
    .local v8, order:I
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 122
    .restart local v5       #id:I
    if-eqz v5, :cond_3

    .line 123
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 124
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 125
    .restart local v1       #h:Landroid/preference/PreferenceActivity$Header;
    iget-wide v9, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    int-to-long v11, v5

    cmp-long v9, v9, v11

    if-nez v9, :cond_7

    .line 126
    move v8, v3

    .line 127
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    .end local v1           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i:I
    .end local v5           #id:I
    :cond_3
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 134
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 135
    .local v2, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 136
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mSummary:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 137
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIntent:Landroid/content/Intent;

    iput-object v9, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 139
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 140
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-static {p1, v9, v10}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 141
    .restart local v5       #id:I
    if-eqz v5, :cond_4

    .line 142
    iput v5, v2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 145
    .end local v5           #id:I
    :cond_4
    if-gez v8, :cond_5

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 146
    iget-boolean v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderFirst:Z

    if-eqz v9, :cond_8

    .line 147
    const/4 v8, 0x0

    .line 157
    :cond_5
    :goto_3
    if-ltz v8, :cond_a

    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 158
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    .end local v2           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_6
    :goto_4
    return-void

    .line 123
    .restart local v1       #h:Landroid/preference/PreferenceActivity$Header;
    .restart local v3       #i:I
    .restart local v5       #id:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 148
    .end local v1           #h:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i:I
    .end local v5           #id:I
    .restart local v2       #header:Landroid/preference/PreferenceActivity$Header;
    :cond_8
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 149
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getOrderByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_3

    .line 150
    :cond_9
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 151
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v9}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getOrderByIdName(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v8

    .line 152
    if-ltz v8, :cond_5

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 160
    :cond_a
    iget-object v9, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRootHeaders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public readAttrs(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    .line 49
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 51
    .local v4, r:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 52
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, value:Ljava/lang/CharSequence;
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, name:Ljava/lang/String;
    sget-object v6, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v3}, Lcom/motorola/extensions/internal/DynamicPreferenceInflater;->getAttrCode(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, attrCode:I
    const/4 v2, 0x0

    .line 60
    .local v2, id:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 62
    :pswitch_1
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    invoke-static {v6, v7, v8}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 63
    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 66
    :pswitch_2
    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    invoke-static {v6, v7, v8}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 70
    :pswitch_3
    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 73
    :pswitch_4
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    goto :goto_1

    .line 76
    :pswitch_5
    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 79
    :pswitch_6
    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 82
    :pswitch_7
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mOrderFirst:Z

    goto :goto_1

    .line 85
    :pswitch_8
    iput-object v5, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 90
    .end local v0           #attrCode:I
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;->mIntent:Landroid/content/Intent;

    .line 95
    return-void
.end method
