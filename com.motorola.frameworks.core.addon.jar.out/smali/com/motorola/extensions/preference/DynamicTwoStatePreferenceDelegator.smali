.class public Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;
.super Ljava/lang/Object;
.source "DynamicTwoStatePreferenceDelegator.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;
.implements Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator$InterceptHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRefresh:Z

.field mContext:Landroid/content/Context;

.field private mInterceptor:Z

.field private mInterceptorIntent:Landroid/content/Intent;

.field private mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

.field private mNewValue:Ljava/lang/Boolean;

.field private mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

.field private mOffInterceptor:Z

.field private mOnInterceptor:Z

.field private mPreferenceUri:Landroid/net/Uri;

.field private mTwoStatePreference:Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 0
    .parameter "context"
    .parameter "tsp"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    .line 58
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private checkObserver()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-direct {v0, v1, v2}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;-><init>(Landroid/content/Context;Landroid/preference/MotoPreferenceManager;)V

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    .line 79
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->start(Landroid/net/Uri;Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver$IAutoRefresh;)V

    .line 81
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private persistNewValue()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 177
    :try_start_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 178
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v3, values:Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "value"

    iget-object v7, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 184
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 185
    .local v2, rows:I
    if-lez v2, :cond_1

    .line 191
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #rows:I
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v4

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #rows:I
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    move v4, v5

    .line 185
    goto :goto_0

    .line 188
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #rows:I
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Throwable;
    sget-object v4, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    const-string v6, "Error on update"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 191
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/MotoPreferenceManager;->unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 200
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->persistNewValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 205
    :cond_1
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/preference/MotoPreferenceManager;->getInstance(Landroid/preference/PreferenceManager;)Landroid/preference/MotoPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    .line 71
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->checkObserver()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "arg0"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    .line 137
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    iput-object p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    .line 138
    iget-object v3, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptorIntent:Landroid/content/Intent;

    .line 139
    .local v3, in:Landroid/content/Intent;
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    if-eqz v6, :cond_3

    .line 140
    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptor:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOnInterceptor:Z

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOffInterceptor:Z

    if-eqz v6, :cond_3

    .line 142
    :cond_1
    const-string v6, "value"

    iget-object v7, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mNewValue:Ljava/lang/Boolean;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x10000001

    and-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_3

    .line 146
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v6, p0}, Landroid/preference/MotoPreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 147
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 149
    .local v4, reqCode:I
    :try_start_0
    iget-object v6, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mMotoPreferenceManager:Landroid/preference/MotoPreferenceManager;

    invoke-virtual {v6}, Landroid/preference/MotoPreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v2

    .line 150
    .local v2, f:Landroid/app/Fragment;
    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    .end local v2           #f:Landroid/app/Fragment;
    .end local v4           #reqCode:I
    :goto_0
    return v5

    .line 153
    .restart local v2       #f:Landroid/app/Fragment;
    .restart local v4       #reqCode:I
    :cond_2
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 154
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #f:Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->TAG:Ljava/lang/String;

    const-string v7, "Failed to launch activity: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->onActivityResult(IILandroid/content/Intent;)Z

    .line 163
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403cf

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 171
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #reqCode:I
    :cond_3
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->persistNewValue()Z

    move-result v5

    goto :goto_0
.end method

.method public refresh()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 106
    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v9

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    :cond_2
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 110
    if-ltz v7, :cond_3

    .line 111
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 112
    .local v8, value:I
    iget-object v2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mTwoStatePreference:Landroid/preference/TwoStatePreference;

    if-eqz v8, :cond_5

    move v1, v9

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v7           #index:I
    .end local v8           #value:I
    :cond_3
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v7       #index:I
    :cond_4
    move v1, v10

    .line 106
    goto :goto_1

    .restart local v8       #value:I
    :cond_5
    move v1, v10

    .line 112
    goto :goto_2

    .line 116
    .end local v7           #index:I
    .end local v8           #value:I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public setAutoRefresh(Landroid/net/Uri;Z)V
    .locals 1
    .parameter "uri"
    .parameter "autoRefresh"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    .line 86
    iput-boolean p2, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mAutoRefresh:Z

    .line 87
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    invoke-virtual {v0}, Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;->stop()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mObserver:Lcom/motorola/extensions/preference/DynamicPreferenceDataObserver;

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->checkObserver()V

    .line 92
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptorIntent:Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public setInterceptor(Z)V
    .locals 0
    .parameter "interceptor"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mInterceptor:Z

    .line 133
    return-void
.end method

.method public setOffInterceptor(Z)V
    .locals 0
    .parameter "offInterceptor"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOffInterceptor:Z

    .line 129
    return-void
.end method

.method public setOnInterceptor(Z)V
    .locals 0
    .parameter "onInterceptor"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mOnInterceptor:Z

    .line 125
    return-void
.end method

.method public setPreferenceDataUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/extensions/preference/DynamicTwoStatePreferenceDelegator;->mPreferenceUri:Landroid/net/Uri;

    .line 63
    return-void
.end method
