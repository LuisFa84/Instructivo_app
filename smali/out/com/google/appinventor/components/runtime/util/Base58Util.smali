.class public Lcom/google/appinventor/components/runtime/util/Base58Util;
.super Ljava/lang/Object;
.source "Base58Util.java"


# static fields
.field public static final ALPHABET:[C

.field private static final ENCODED_ZERO:C

.field private static final INDEXES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const-string v1, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    .line 49
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    sput-char v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    .line 50
    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    .line 52
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 54
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    sget-object v2, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 56
    :cond_2c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([BII)[B
    .registers 8
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 145
    sub-int v1, p2, p1

    .line 146
    .local v1, "newLength":I
    if-gez v1, :cond_21

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_21
    new-array v0, v1, [B

    .line 149
    .local v0, "copy":[B
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 150
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 149
    invoke-static {p0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 103
    const/4 v8, 0x0

    new-array v8, v8, [B

    .line 134
    :goto_9
    return-object v8

    .line 106
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v4, v8, [B

    .line 107
    .local v4, "input58":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_50

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    const/16 v8, 0x80

    if-ge v0, v8, :cond_48

    sget-object v8, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    aget v2, v8, v0

    .line 110
    .local v2, "digit":I
    :goto_23
    if-gez v2, :cond_4a

    .line 111
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal character "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    .end local v2    # "digit":I
    :cond_48
    const/4 v2, -0x1

    goto :goto_23

    .line 113
    .restart local v2    # "digit":I
    :cond_4a
    int-to-byte v8, v2

    aput-byte v8, v4, v3

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 116
    .end local v0    # "c":C
    .end local v2    # "digit":I
    :cond_50
    const/4 v7, 0x0

    .line 117
    .local v7, "zeros":I
    :goto_51
    array-length v8, v4

    if-ge v7, v8, :cond_5b

    aget-byte v8, v4, v7

    if-nez v8, :cond_5b

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 121
    :cond_5b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v1, v8, [B

    .line 122
    .local v1, "decoded":[B
    array-length v6, v1

    .line 123
    .local v6, "outputStart":I
    move v5, v7

    .local v5, "inputStart":I
    :cond_63
    :goto_63
    array-length v8, v4

    if-ge v5, v8, :cond_79

    .line 124
    add-int/lit8 v6, v6, -0x1

    const/16 v8, 0x3a

    const/16 v9, 0x100

    invoke-static {v4, v5, v8, v9}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v8

    aput-byte v8, v1, v6

    .line 125
    aget-byte v8, v4, v5

    if-nez v8, :cond_63

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 130
    :cond_79
    :goto_79
    array-length v8, v1

    if-ge v6, v8, :cond_83

    aget-byte v8, v1, v6

    if-nez v8, :cond_83

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 134
    :cond_83
    sub-int v8, v6, v7

    array-length v9, v1

    invoke-static {v1, v8, v9}, Lcom/google/appinventor/components/runtime/util/Base58Util;->copyOfRange([BII)[B

    move-result-object v8

    goto/16 :goto_9
.end method

.method public static decodeToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static divmod([BIII)B
    .registers 9
    .param p0, "number"    # [B
    .param p1, "firstDigit"    # I
    .param p2, "base"    # I
    .param p3, "divisor"    # I

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_17

    .line 170
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 171
    .local v0, "digit":I
    mul-int v4, v2, p2

    add-int v3, v4, v0

    .line 172
    .local v3, "temp":I
    div-int v4, v3, p3

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 173
    rem-int v2, v3, p3

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 175
    .end local v0    # "digit":I
    .end local v3    # "temp":I
    :cond_17
    int-to-byte v4, v2

    return v4
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 8
    .param p0, "input"    # [B

    .prologue
    .line 65
    array-length v4, p0

    if-nez v4, :cond_6

    .line 66
    const-string v4, ""

    .line 91
    :goto_5
    return-object v4

    .line 69
    :cond_6
    const/4 v3, 0x0

    .line 70
    .local v3, "zeros":I
    :goto_7
    array-length v4, p0

    if-ge v3, v4, :cond_11

    aget-byte v4, p0, v3

    if-nez v4, :cond_11

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 74
    :cond_11
    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 75
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 76
    .local v0, "encoded":[C
    array-length v2, v0

    .line 77
    .local v2, "outputStart":I
    move v1, v3

    .local v1, "inputStart":I
    :cond_1d
    :goto_1d
    array-length v4, p0

    if-ge v1, v4, :cond_37

    .line 78
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/16 v5, 0x100

    const/16 v6, 0x3a

    invoke-static {p0, v1, v5, v6}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v5

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 79
    aget-byte v4, p0, v1

    if-nez v4, :cond_1d

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 84
    :cond_37
    :goto_37
    array-length v4, v0

    if-ge v2, v4, :cond_43

    aget-char v4, v0, v2

    sget-char v5, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    if-ne v4, v5, :cond_43

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 87
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4e

    .line 88
    add-int/lit8 v2, v2, -0x1

    sget-char v4, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    aput-char v4, v0, v2

    goto :goto_43

    .line 91
    :cond_4e
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5
.end method
