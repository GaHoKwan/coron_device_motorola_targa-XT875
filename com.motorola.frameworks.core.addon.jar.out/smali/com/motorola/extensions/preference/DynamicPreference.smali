.class public Lcom/motorola/extensions/preference/DynamicPreference;
.super Landroid/preference/Preference;
.source "DynamicPreference.java"

# interfaces
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;


# instance fields
.field private mAutoRefresh:Z

.field private mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

.field private mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

.field private mPreferenceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private checkObserver()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mPreferenceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-direct {v0, v1, v2}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;-><init>(Landroid/content/Context;Landroid/preference/MotoPreferenceManager;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    .line 64
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mPreferenceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->start(Landroid/net/Uri;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 55
    invoke-static {p1}, Landroid/preference/MotoPreferenceManager;->getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    .line 56
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicPreference;->checkObserver()V

    .line 57
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mPreferenceUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mPreferenceUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const-string v1, "enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 90
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 91
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 93
    :cond_2
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 95
    if-ltz v7, :cond_3

    .line 96
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 98
    invoke-virtual {p0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v7           #index:I
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    .restart local v7       #index:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 103
    .end local v7           #index:I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "autoRefresh"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mPreferenceUri:Landroid/net/Uri;

    .line 71
    iput-boolean p2, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mAutoRefresh:Z

    .line 72
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->stop()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicPreference;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicPreference;->checkObserver()V

    .line 77
    return-void
.end method
