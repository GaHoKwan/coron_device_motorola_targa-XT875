.class public Lcom/motorola/extensions/internal/GenericTagParser;
.super Ljava/lang/Object;
.source "GenericTagParser.java"


# static fields
.field private static final XML_INTENT_TAG:Ljava/lang/String; = "intent"


# instance fields
.field mParser:Landroid/content/res/XmlResourceParser;

.field mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "resources"
    .parameter "parser"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 36
    iput-object p1, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mRes:Landroid/content/res/Resources;

    .line 37
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/motorola/extensions/internal/DynamicAttrHandler;)Lcom/motorola/extensions/internal/DynamicAttrHandler;
    .locals 8
    .parameter "rootTag"
    .parameter "attrHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 43
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 45
    .local v0, attrs:Landroid/util/AttributeSet;
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 49
    .local v2, eventType:I
    :goto_0
    if-eq v2, v6, :cond_0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, tagName:Ljava/lang/String;
    if-ne v2, v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    :cond_2
    invoke-interface {p2, v0}, Lcom/motorola/extensions/internal/DynamicAttrHandler;->readAttrs(Landroid/util/AttributeSet;)V

    .line 59
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, endOfTag:Z
    :goto_1
    if-nez v1, :cond_6

    .line 63
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 64
    packed-switch v2, :pswitch_data_0

    .line 85
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1

    .line 66
    :pswitch_0
    const-string v5, "intent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    iget-object v5, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/motorola/extensions/internal/GenericTagParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-static {v5, v6, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3

    .line 68
    .local v3, in:Landroid/content/Intent;
    invoke-interface {p2, v3}, Lcom/motorola/extensions/internal/DynamicAttrHandler;->setIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 69
    .end local v3           #in:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directly under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :pswitch_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    const/4 v1, 0x1

    goto :goto_2

    .line 83
    :pswitch_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected end of document"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_6
    return-object p2

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
