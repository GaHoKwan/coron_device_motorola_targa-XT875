.class public Lcom/motorola/extensions/preference/DynamicSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "DynamicSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
.implements Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMaxLines:I

.field private mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    .line 35
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    .line 40
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    .line 46
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    new-instance v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;-><init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 53
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 80
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 81
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 58
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, title:Landroid/widget/TextView;
    iget v1, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 62
    iget v1, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "newValue"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->refresh()V

    .line 92
    return-void
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "autoRefresh"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setAutoRefresh(Landroid/net/Uri;Z)V

    .line 86
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public setInterceptor(Z)V
    .locals 1
    .parameter "interceptor"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setInterceptor(Z)V

    .line 107
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter "maxLines"

    .prologue
    .line 122
    iput p1, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mMaxLines:I

    .line 123
    return-void
.end method

.method public setOffInterceptor(Z)V
    .locals 1
    .parameter "offInterceptor"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOffInterceptor(Z)V

    .line 102
    return-void
.end method

.method public setOnInterceptor(Z)V
    .locals 1
    .parameter "onInterceptor"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOnInterceptor(Z)V

    .line 97
    return-void
.end method

.method public setPreferenceDataUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicSwitchPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setPreferenceDataUri(Landroid/net/Uri;)V

    .line 70
    return-void
.end method
