.class Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;
.super Ljava/lang/Object;
.source "DynamicMenuItemInflater.java"

# interfaces
.implements Lcom/motorola/extensions/internal/DynamicAttrHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicMenuItemInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicMenuItemAttrsHandler"
.end annotation


# instance fields
.field private mCategory:I

.field private final mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

.field private mFlags:I

.field private mGroupID:I

.field private final mHostContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private mOrder:I

.field mReplaceId:I

.field private final mRootMenu:Landroid/view/Menu;

.field mTitle:Ljava/lang/CharSequence;

.field mTitleCondensed:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;


# direct methods
.method public constructor <init>(Lcom/motorola/extensions/internal/DynamicMenuItemInflater;Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1
    .parameter
    .parameter "hostContext"
    .parameter "root"

    .prologue
    const/4 v0, 0x0

    .line 152
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 147
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    .line 149
    iput v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    .line 153
    iput-object p2, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-direct {v0}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;-><init>()V

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    .line 155
    iput-object p3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;)Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    return-object v0
.end method

.method private readFlags(Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "values"

    .prologue
    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, flags:I
    if-eqz p1, :cond_3

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, arr:[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 254
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 255
    .local v2, flag:Ljava/lang/String;
    const-string v6, "ifRoom"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    or-int/lit8 v3, v3, 0x1

    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const-string v6, "withText"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 259
    :cond_2
    const-string v6, "always"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 265
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #flag:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    return v3
.end method


# virtual methods
.method public inflate(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, item:Landroid/view/MenuItem;
    iget v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 277
    iget v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    if-lez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_0

    .line 280
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    invoke-interface {v2}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    .line 282
    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    iput v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v3}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->getRemoveIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 287
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 295
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 296
    :cond_3
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mRootMenu:Landroid/view/Menu;

    iget v4, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mGroupID:I

    iget v5, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I

    iget-object v6, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v7, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 298
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 299
    iget v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mFlags:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 300
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    .line 301
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 306
    :cond_4
    return-void
.end method

.method public readAttrs(Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "attrs"

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v13, v13, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 162
    .local v10, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    .local v3, hostResource:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 164
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, value:Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, name:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$200()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v6, 0x0

    .line 172
    .local v6, id:I
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$200()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 243
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring the attribute "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :pswitch_0
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "string"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 176
    invoke-virtual {v10, v6, v12}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 179
    :pswitch_1
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "string"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 181
    invoke-virtual {v10, v6, v12}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mTitleCondensed:Ljava/lang/CharSequence;

    goto :goto_1

    .line 185
    :pswitch_2
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v13, v6}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 188
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mReplaceId:I

    goto/16 :goto_1

    .line 192
    :pswitch_3
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, idList:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v8, :cond_0

    aget-object v11, v1, v5

    .line 194
    .local v11, s:Ljava/lang/String;
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mHostContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v11, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mData:Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;

    invoke-virtual {v13, v6}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$MetaData;->addRemoveId(I)V

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 200
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #idList:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v11           #s:Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drawable"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 203
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v13, v13, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The resource "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found in the package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->this$0:Lcom/motorola/extensions/internal/DynamicMenuItemInflater;

    iget-object v15, v15, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 213
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    .line 217
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    shl-int/lit8 v13, v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    .line 218
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I

    const/high16 v14, -0x1

    and-int/2addr v13, v14

    const/high16 v14, 0x4

    if-le v13, v14, :cond_0

    .line 220
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mCategory:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 222
    :catch_1
    move-exception v2

    .line 223
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get the category from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :pswitch_6
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mOrder:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 234
    :catch_2
    move-exception v2

    .line 235
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater;->access$100()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get the orderInCategory from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :pswitch_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->readFlags(Ljava/lang/CharSequence;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mFlags:I

    goto/16 :goto_1

    .line 247
    .end local v6           #id:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicMenuItemInflater$DynamicMenuItemAttrsHandler;->mIntent:Landroid/content/Intent;

    .line 272
    return-void
.end method
