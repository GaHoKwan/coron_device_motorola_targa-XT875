.class public Lcom/motorola/extensions/preference/DynamicCheckboxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DynamicCheckboxPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;
.implements Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    new-instance v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;-><init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    .line 49
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 64
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "newValue"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->refresh()V

    .line 75
    return-void
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "autoRefresh"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setAutoRefresh(Landroid/net/Uri;Z)V

    .line 70
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public setInterceptor(Z)V
    .locals 1
    .parameter "interceptor"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setInterceptor(Z)V

    .line 90
    return-void
.end method

.method public setOffInterceptor(Z)V
    .locals 1
    .parameter "offInterceptor"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOffInterceptor(Z)V

    .line 85
    return-void
.end method

.method public setOnInterceptor(Z)V
    .locals 1
    .parameter "onInterceptor"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setOnInterceptor(Z)V

    .line 80
    return-void
.end method

.method public setPreferenceDataUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicCheckboxPreference;->mTwoStatePrefDelegator:Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0, p1}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->setPreferenceDataUri(Landroid/net/Uri;)V

    .line 54
    return-void
.end method
