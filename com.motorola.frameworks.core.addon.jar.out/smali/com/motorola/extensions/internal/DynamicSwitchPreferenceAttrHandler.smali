.class public Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.source "DynamicSwitchPreferenceAttrHandler.java"


# instance fields
.field mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "targetContext"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mMaxLines:I

    .line 30
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "attrCode"
    .parameter "value"

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->handleAttribute(ILjava/lang/CharSequence;)V

    .line 48
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mMaxLines:I

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 3
    .parameter "hostContext"
    .parameter "hostRoot"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, pref:Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 64
    .local v1, style:I
    if-eqz v1, :cond_1

    .line 65
    new-instance v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    .end local v0           #pref:Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    .restart local v0       #pref:Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->setProperties(Landroid/preference/TwoStatePreference;)V

    .line 71
    .end local v1           #style:I
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v2

    return-object v2

    .line 67
    .restart local v1       #style:I
    :cond_1
    new-instance v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    .end local v0           #pref:Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    invoke-direct {v0, p1}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;-><init>(Landroid/content/Context;)V

    .restart local v0       #pref:Lcom/motorola/extensions/preference/DynamicSwitchPreference;
    goto :goto_0
.end method

.method protected setProperties(Landroid/preference/TwoStatePreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 52
    instance-of v0, p1, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    iget v1, p0, Lcom/motorola/extensions/internal/DynamicSwitchPreferenceAttrHandler;->mMaxLines:I

    invoke-virtual {v0, v1}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->setMaxLines(I)V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->setProperties(Landroid/preference/TwoStatePreference;)V

    .line 56
    return-void
.end method
