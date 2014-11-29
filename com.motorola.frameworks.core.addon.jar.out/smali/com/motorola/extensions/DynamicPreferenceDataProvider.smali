.class public abstract Lcom/motorola/extensions/DynamicPreferenceDataProvider;
.super Landroid/content/ContentProvider;
.source "DynamicPreferenceDataProvider.java"


# static fields
.field public static final CHECKBOX_PREFERENCE:Ljava/lang/String; = "checkbox_preference"

.field public static final COLUMN_ENABLED:Ljava/lang/String; = "enabled"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final COLUMN_VISIBLE:Ljava/lang/String; = "visible"

.field public static final LISTEN_FOR_CHANGE:Ljava/lang/String; = "listen"

.field public static final LIST_PREFERENCE:Ljava/lang/String; = "list_preference"

.field public static final PREFERENCE:Ljava/lang/String; = "preference"

.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_STRING:I = 0x2

.field private static final TYPE_UNKNOWN:I

.field private static sValueTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    .line 104
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "preference"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "list_preference"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    const-string v1, "checkbox_preference"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "key"

    .prologue
    .line 195
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    const-string v2, "listen"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 202
    .local v0, listenForChange:Z
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->onStartMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #listenForChange:Z
    .end local v1           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 205
    .restart local v0       #listenForChange:Z
    .restart local v1       #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->onStopMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getPreferenceDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "authority"
    .parameter "type"
    .parameter "key"

    .prologue
    .line 397
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 398
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 399
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 402
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method private getValueType(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, type:I
    invoke-virtual {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, pathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 117
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, prefType:Ljava/lang/String;
    sget-object v4, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    sget-object v4, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->sValueTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 123
    .end local v1           #pathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #prefType:Ljava/lang/String;
    .end local v3           #type:I
    :cond_0
    return v3
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 309
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getDefaultBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 371
    const-string v0, ""

    return-object v0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getDefaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method protected isVisible(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected onStartMonitor(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 389
    return-void
.end method

.method protected onStopMonitor(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 394
    return-void
.end method

.method protected putBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 353
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 358
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 328
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 333
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "enabled"

    aput-object v6, v3, v5

    const-string v6, "visible"

    aput-object v6, v3, v4

    const-string v6, "value"

    aput-object v6, v3, v7

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 172
    .local v1, mc:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 173
    .local v2, values:[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getValueType(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_0
    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-object v1

    .line 176
    :pswitch_0
    new-array v2, v8, [Ljava/lang/Object;

    .end local v2           #values:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isVisible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 178
    .restart local v2       #values:[Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #values:[Ljava/lang/Object;
    :cond_1
    move v3, v5

    .line 176
    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_3

    .line 181
    .restart local v2       #values:[Ljava/lang/Object;
    :pswitch_1
    new-array v2, v8, [Ljava/lang/Object;

    .end local v2           #values:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isVisible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v5, v4

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 183
    .restart local v2       #values:[Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #values:[Ljava/lang/Object;
    :cond_5
    move v3, v5

    .line 181
    goto :goto_4

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, updatedRows:I
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 224
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->checkMonitor(Landroid/net/Uri;Ljava/lang/String;)V

    .line 225
    const/4 v2, 0x0

    .line 245
    :goto_0
    return v2

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getValueType(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 243
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3
    move v2, v1

    .line 245
    goto :goto_0

    .line 229
    :pswitch_0
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->putBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const/4 v1, 0x1

    goto :goto_1

    .line 235
    :pswitch_1
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const/4 v1, 0x1

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
