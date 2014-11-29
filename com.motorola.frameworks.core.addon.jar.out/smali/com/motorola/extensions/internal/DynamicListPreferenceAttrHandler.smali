.class public Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;
.source "DynamicListPreferenceAttrHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final SUMMARY_ENTRIES_KEY:Ljava/lang/String; = "summaryEntries"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mSummaryEntries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "targetContext"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getArrayFromResourse(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .parameter "resName"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "array"

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setProperties(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "15 array length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not match the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " array length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "summaryEntries"

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 133
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mDataAuthority:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataAuthority attribute is required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/preference/DialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_5
    invoke-super {p0, p1}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->setProperties(Landroid/preference/Preference;)V

    .line 149
    new-instance v1, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;

    invoke-virtual {p0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDynamicValuesUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler$DynamicListOnPreferenceChangeListener;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    return-void
.end method


# virtual methods
.method public getTypeForPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "list_preference"

    return-object v0
.end method

.method protected handleAttribute(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "attrCode"
    .parameter "value"

    .prologue
    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 66
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->getArrayFromResourse(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->getArrayFromResourse(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mDialogTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 80
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getTextFromResource(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 83
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->getDrawableFromResource(Ljava/lang/CharSequence;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 86
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->getArrayFromResourse(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public inflate(Landroid/content/Context;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 3
    .parameter "hostContext"
    .parameter "hostRoot"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DynamicListPreference requires an 15 array and an 16 array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0           #pref:Landroid/preference/ListPreference;
    invoke-direct {v0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0       #pref:Landroid/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->setProperties(Landroid/preference/ListPreference;)V

    .line 171
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/extensions/internal/DynamicPreferenceAttrHandler;->inflateInternal(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/Preference;

    move-result-object v1

    return-object v1
.end method

.method protected setValueFromCursor(Landroid/preference/Preference;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "preference"
    .parameter "cursor"
    .parameter "valueIndex"

    .prologue
    .line 101
    if-ltz p3, :cond_0

    move-object v1, p1

    .line 102
    check-cast v1, Landroid/preference/ListPreference;

    .line 103
    .local v1, pref:Landroid/preference/ListPreference;
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 106
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/motorola/extensions/internal/DynamicListPreferenceAttrHandler;->mSummaryEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    .end local v0           #index:I
    .end local v1           #pref:Landroid/preference/ListPreference;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method
