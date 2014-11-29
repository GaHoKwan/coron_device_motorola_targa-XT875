.class public Lcom/motorola/extensions/internal/DynamicPreferenceParser;
.super Ljava/lang/Object;
.source "DynamicPreferenceParser.java"


# static fields
.field private static final XML_DYNAMIC_CHECKBOX_PREFERENCE_TAG:Ljava/lang/String; = "dynamic-checkbox-preference"

.field private static final XML_DYNAMIC_LIST_PREFERENCE_TAG:Ljava/lang/String; = "dynamic-list-preference"

.field private static final XML_DYNAMIC_PREFERENCE_TAG:Ljava/lang/String; = "dynamic-preference"

.field private static final XML_DYNAMIC_PREF_CATEGORY_TAG:Ljava/lang/String; = "dynamic-category-preference"

.field private static final XML_DYNAMIC_SWITCH_PREFERENCE_TAG:Ljava/lang/String; = "dynamic-switch-preference"

.field private static final XML_INTENT_TAG:Ljava/lang/String; = "intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttrHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .locals 1
    .parameter "targetContext"
    .parameter "tagName"

    .prologue
    .line 105
    const-string v0, "dynamic-category-preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 116
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v0, "dynamic-preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "dynamic-checkbox-preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "dynamic-switch-preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    new-instance v0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "dynamic-list-preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .locals 3
    .parameter "targetContext"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 40
    .local v1, eventType:I
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 44
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-static {p0, p1, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceParser;->parseChildren(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    move-result-object v2

    return-object v2
.end method

.method private static parseChildren(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    .locals 10
    .parameter "targetContext"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, rootTagName:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/motorola/extensions/internal/DynamicPreferenceParser;->getAttrHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    move-result-object v0

    .line 54
    .local v0, attrHandler:Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
    if-nez v0, :cond_0

    .line 55
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> is not supported, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 60
    :cond_0
    invoke-virtual {v0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->readAttrs(Landroid/util/AttributeSet;)V

    .line 62
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 63
    .local v2, eventType:I
    const/4 v1, 0x0

    .line 64
    .local v1, endOfTag:Z
    :goto_0
    if-nez v1, :cond_5

    .line 65
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, tagName:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 96
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 98
    goto :goto_0

    .line 68
    :pswitch_0
    const-string v7, "intent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p1, p2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v4

    .line 71
    .local v4, in:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 72
    .end local v4           #in:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 73
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " directly under "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_3
    instance-of v7, v0, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;

    if-eqz v7, :cond_4

    move-object v3, v0

    .line 77
    check-cast v3, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;

    .line 79
    .local v3, gpHandler:Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;
    invoke-static {p0, p1, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceParser;->parseChildren(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;->addChild(Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;)V

    goto :goto_1

    .line 82
    .end local v3           #gpHandler:Lcom/motorola/extensions/internal/DynamicCategoryPreferenceAttrHandler;
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> is not supported, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :pswitch_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    .end local v6           #tagName:Ljava/lang/String;
    :cond_5
    return-object v0

    .line 94
    .restart local v6       #tagName:Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
