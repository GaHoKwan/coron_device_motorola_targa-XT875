.class public Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckKDDIBCD(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "dialStr"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 77
    const-string v4, "gsm.operator.iso-country"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, currIso:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.iso-country"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, defaultIso:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.alpha"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, operator:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 82
    const/4 p0, 0x0

    .line 98
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 85
    .restart local p0
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_0

    invoke-static {v2}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->getFormatTypeFromTelecomCode(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, tmp_dial:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    .line 91
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->isBCDDigit(C)Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 92
    const-string v4, ""

    invoke-virtual {v3, v7, v6, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hyphenation_feature_enabled"

    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 41
    .local v0, hyphenStatus:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    .end local p1
    :goto_1
    return-object p1

    .end local v0           #hyphenStatus:Z
    .restart local p1
    :cond_0
    move v0, v1

    .line 39
    goto :goto_0

    .line 44
    .restart local v0       #hyphenStatus:Z
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hyphenation_feature_enabled"

    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 53
    .local v0, hyphenStatus:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    .end local p1
    :goto_1
    return-object p1

    .end local v0           #hyphenStatus:Z
    .restart local p1
    :cond_0
    move v0, v1

    .line 51
    goto :goto_0

    .line 56
    .restart local v0       #hyphenStatus:Z
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static getFormatTypeFromTelecomCode(Ljava/lang/String;)I
    .locals 1
    .parameter "telecom"

    .prologue
    .line 105
    const-string v0, "KDDI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBCDDigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 69
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
