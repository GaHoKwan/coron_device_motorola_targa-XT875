.class Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;
.super Ljava/lang/Object;
.source "DynamicListPreferenceAttrHandler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicListOnPreferenceChangeListener"
.end annotation


# instance fields
.field private final mDataUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter "dataUri"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    .line 181
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 188
    .local v6, startTime:J
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 189
    .local v10, value:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v5, v0

    .line 190
    .local v5, listPreference:Landroid/preference/ListPreference;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 191
    .local v3, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 192
    .local v1, b:Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 193
    .local v8, summaryEntries:[Ljava/lang/CharSequence;
    const-string v12, "summaryEntries"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 194
    const-string v12, "summaryEntries"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 196
    if-eqz v8, :cond_0

    array-length v12, v8

    array-length v13, v3

    if-eq v12, v13, :cond_1

    .line 198
    :cond_0
    move-object v8, v3

    .line 203
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .line 204
    .local v9, updatedRows:I
    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 205
    .local v4, index:I
    if-ltz v4, :cond_2

    array-length v12, v3

    if-ge v4, v12, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    if-eqz v12, :cond_4

    .line 207
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "value"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;->mDataUri:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 224
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-lez v9, :cond_5

    .line 225
    aget-object v12, v8, v4

    invoke-virtual {v5, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v12, 0x1

    .line 231
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #index:I
    .end local v5           #listPreference:Landroid/preference/ListPreference;
    .end local v6           #startTime:J
    .end local v8           #summaryEntries:[Ljava/lang/CharSequence;
    .end local v9           #updatedRows:I
    .end local v10           #value:Ljava/lang/String;
    :goto_2
    return v12

    .line 201
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v3       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #listPreference:Landroid/preference/ListPreference;
    .restart local v6       #startTime:J
    .restart local v8       #summaryEntries:[Ljava/lang/CharSequence;
    .restart local v10       #value:Ljava/lang/String;
    :cond_3
    move-object v8, v3

    goto :goto_0

    .line 215
    .restart local v4       #index:I
    .restart local v9       #updatedRows:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    .line 228
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #index:I
    .end local v5           #listPreference:Landroid/preference/ListPreference;
    .end local v6           #startTime:J
    .end local v8           #summaryEntries:[Ljava/lang/CharSequence;
    .end local v9           #updatedRows:I
    .end local v10           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Error on update"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_5
    const/4 v12, 0x0

    goto :goto_2
.end method
