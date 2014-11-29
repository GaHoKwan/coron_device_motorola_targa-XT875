.class public Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;
.source "DynamicCheckboxPreferenceAttrHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "targetContext"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "checkbox_preference"

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 3
    .parameter "hostContext"
    .parameter "hostRoot"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, pref:Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mStyle:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/motorola/extensions/internal/DynamicCheckboxPreferenceAttrHandler;->getStyleResourceId(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    .line 40
    .local v1, style:I
    if-eqz v1, :cond_1

    .line 41
    new-instance v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    .end local v0           #pref:Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    .restart local v0       #pref:Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/internal/DynamicTwoStatePreferenceAttrHandler;->setProperties(Landroid/preference/TwoStatePreference;)V

    .line 47
    .end local v1           #style:I
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v2

    return-object v2

    .line 43
    .restart local v1       #style:I
    :cond_1
    new-instance v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    .end local v0           #pref:Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    invoke-direct {v0, p1}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;-><init>(Landroid/content/Context;)V

    .restart local v0       #pref:Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
    goto :goto_0
.end method
