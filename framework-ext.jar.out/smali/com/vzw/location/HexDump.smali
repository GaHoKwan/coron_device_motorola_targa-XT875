.class public Lcom/vzw/location/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vzw/location/HexDump;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .locals 2
    .parameter "array"

    .prologue
    .line 14
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/vzw/location/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .locals 10
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v7, result:Ljava/lang/StringBuilder;
    const/16 v8, 0x10

    new-array v4, v8, [B

    .line 22
    .local v4, line:[B
    const/4 v5, 0x0

    .line 24
    .local v5, lineIndex:I
    const-string v8, "\n0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p1}, Lcom/vzw/location/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move v2, p1

    .local v2, i:I
    :goto_0
    add-int v8, p1, p2

    if-ge v2, v8, :cond_3

    .line 29
    const/16 v8, 0x10

    if-ne v5, v8, :cond_2

    .line 31
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    const/16 v8, 0x10

    if-ge v3, v8, :cond_1

    .line 35
    aget-byte v8, v4, v3

    const/16 v9, 0x20

    if-le v8, v9, :cond_0

    aget-byte v8, v4, v3

    const/16 v9, 0x7e

    if-ge v8, v9, :cond_0

    .line 37
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 41
    :cond_0
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 45
    :cond_1
    const-string v8, "\n0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v2}, Lcom/vzw/location/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const/4 v5, 0x0

    .line 50
    .end local v3           #j:I
    :cond_2
    aget-byte v0, p0, v2

    .line 51
    .local v0, b:B
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v8, Lcom/vzw/location/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    sget-object v8, Lcom/vzw/location/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v9, v0, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v6, v5, 0x1

    .end local v5           #lineIndex:I
    .local v6, lineIndex:I
    aput-byte v0, v4, v5

    .line 27
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6           #lineIndex:I
    .restart local v5       #lineIndex:I
    goto :goto_0

    .line 58
    .end local v0           #b:B
    :cond_3
    const/16 v8, 0x10

    if-eq v5, v8, :cond_6

    .line 60
    rsub-int/lit8 v8, v5, 0x10

    mul-int/lit8 v1, v8, 0x3

    .line 61
    .local v1, count:I
    add-int/lit8 v1, v1, 0x1

    .line 62
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 64
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 67
    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_6

    .line 69
    aget-byte v8, v4, v2

    const/16 v9, 0x20

    if-le v8, v9, :cond_5

    aget-byte v8, v4, v2

    const/16 v9, 0x7e

    if-ge v8, v9, :cond_5

    .line 71
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v2, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    :cond_5
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 80
    .end local v1           #count:I
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "hexString"

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 144
    .local v2, length:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 146
    .local v0, buffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 148
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/vzw/location/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/vzw/location/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 146
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method private static toByte(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 134
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 136
    :goto_0
    return v0

    .line 135
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 136
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(B)[B
    .locals 2
    .parameter "b"

    .prologue
    .line 115
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 116
    .local v0, array:[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 117
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 122
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 124
    .local v0, array:[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/vzw/location/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/vzw/location/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/vzw/location/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .parameter "array"

    .prologue
    .line 90
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/vzw/location/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 95
    mul-int/lit8 v5, p2, 0x2

    new-array v1, v5, [C

    .line 97
    .local v1, buf:[C
    const/4 v2, 0x0

    .line 98
    .local v2, bufIndex:I
    move v4, p1

    .local v4, i:I
    move v3, v2

    .end local v2           #bufIndex:I
    .local v3, bufIndex:I
    :goto_0
    add-int v5, p1, p2

    if-ge v4, v5, :cond_0

    .line 100
    aget-byte v0, p0, v4

    .line 101
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufIndex:I
    .restart local v2       #bufIndex:I
    sget-object v5, Lcom/vzw/location/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 102
    add-int/lit8 v3, v2, 0x1

    .end local v2           #bufIndex:I
    .restart local v3       #bufIndex:I
    sget-object v5, Lcom/vzw/location/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v2

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v0           #b:B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method