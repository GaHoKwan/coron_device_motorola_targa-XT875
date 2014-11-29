.class public Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.source "DynamicTwoStatePreferenceAttrHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIntercept:Z

.field private mOffIntercept:Z

.field private mOnIntercept:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "targetContext"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "attrCode"
    .parameter "value"

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 43
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 49
    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mIntercept:Z

    goto :goto_0

    .line 52
    :sswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOnIntercept:Z

    goto :goto_0

    .line 55
    :sswitch_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOffIntercept:Z

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method protected setProperties(Landroid/preference/TwoStatePreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataAuthority attribute is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;->setPreferenceDataUri(Landroid/net/Uri;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 93
    :cond_3
    instance-of v0, p1, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mIntercept:Z

    invoke-interface {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;->setInterceptor(Z)V

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOnIntercept:Z

    invoke-interface {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;->setOnInterceptor(Z)V

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;

    iget-boolean v1, p0, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->mOffIntercept:Z

    invoke-interface {v0, v1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;->setOffInterceptor(Z)V

    .line 98
    :cond_4
    invoke-super {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 100
    return-void
.end method

.method protected setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "preference"
    .parameter "cursor"
    .parameter "valueIndex"

    .prologue
    .line 70
    if-ltz p3, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 72
    .local v0, pref:Landroid/preference/TwoStatePreference;
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 73
    .local v1, value:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 75
    .end local v0           #pref:Landroid/preference/TwoStatePreference;
    .end local v1           #value:I
    :cond_0
    return-void

    .line 73
    .restart local v0       #pref:Landroid/preference/TwoStatePreference;
    .restart local v1       #value:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
