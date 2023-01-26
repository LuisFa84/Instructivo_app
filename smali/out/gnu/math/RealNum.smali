.class public abstract Lgnu/math/RealNum;
.super Lgnu/math/Complex;
.source "RealNum.java"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;
    .registers 4
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;
    .param p2, "k"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 17
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_7

    .line 18
    check-cast p0, Lgnu/math/RealNum;

    .line 21
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 19
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    .line 20
    :cond_f
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v0

    goto :goto_6

    .line 21
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1c
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 3
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 3
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static toExactInt(D)Lgnu/math/IntNum;
    .registers 10
    .param p0, "value"    # D

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 139
    :cond_d
    new-instance v5, Ljava/lang/ArithmeticException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to exact integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_2c
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 141
    .local v0, "bits":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_56

    move v3, v5

    .line 142
    .local v3, "neg":Z
    :goto_37
    const/16 v6, 0x34

    shr-long v6, v0, v6

    long-to-int v6, v6

    and-int/lit16 v2, v6, 0x7ff

    .line 143
    .local v2, "exp":I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v0, v6

    .line 144
    if-nez v2, :cond_58

    .line 145
    shl-long/2addr v0, v5

    .line 148
    :goto_47
    const/16 v5, 0x433

    if-gt v2, v5, :cond_67

    .line 150
    rsub-int v4, v2, 0x433

    .line 151
    .local v4, "rshift":I
    const/16 v5, 0x35

    if-le v4, v5, :cond_5c

    .line 152
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    .line 156
    .end local v4    # "rshift":I
    :goto_55
    return-object v5

    .line 141
    .end local v2    # "exp":I
    .end local v3    # "neg":Z
    :cond_56
    const/4 v3, 0x0

    goto :goto_37

    .line 147
    .restart local v2    # "exp":I
    .restart local v3    # "neg":Z
    :cond_58
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v0, v6

    goto :goto_47

    .line 153
    .restart local v4    # "rshift":I
    :cond_5c
    shr-long/2addr v0, v4

    .line 154
    if-eqz v3, :cond_65

    neg-long v6, v0

    :goto_60
    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_55

    :cond_65
    move-wide v6, v0

    goto :goto_60

    .line 156
    .end local v4    # "rshift":I
    :cond_67
    if-eqz v3, :cond_75

    neg-long v6, v0

    :goto_6a
    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    add-int/lit16 v6, v2, -0x433

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_55

    :cond_75
    move-wide v6, v0

    goto :goto_6a
.end method

.method public static toExactInt(DI)Lgnu/math/IntNum;
    .registers 5
    .param p0, "value"    # D
    .param p2, "rounding_mode"    # I

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/RealNum;->toExactInt(D)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toInt(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "rounding_mode"    # I

    .prologue
    .line 100
    packed-switch p2, :pswitch_data_24

    move-wide v0, p0

    .line 111
    :goto_4
    return-wide v0

    .line 103
    :pswitch_5
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_4

    .line 105
    :pswitch_a
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_4

    .line 107
    :pswitch_f
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1a

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_4

    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_4

    .line 109
    :pswitch_1f
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    goto :goto_4

    .line 100
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_1f
    .end packed-switch
.end method

.method public static toScaledInt(DI)Lgnu/math/IntNum;
    .registers 5
    .param p0, "f"    # D
    .param p2, "k"    # I

    .prologue
    .line 186
    invoke-static {p0, p1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;
    .registers 7
    .param p0, "r"    # Lgnu/math/RatNum;
    .param p1, "k"    # I

    .prologue
    .line 192
    if-eqz p1, :cond_1f

    .line 194
    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v4

    if-gez p1, :cond_25

    neg-int v3, p1

    :goto_9
    invoke-static {v4, v3}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 195
    .local v2, "power":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 196
    .local v1, "num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 197
    .local v0, "den":Lgnu/math/IntNum;
    if-ltz p1, :cond_27

    .line 198
    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .line 201
    :goto_1b
    invoke-static {v1, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    .line 203
    .end local v0    # "den":Lgnu/math/IntNum;
    .end local v1    # "num":Lgnu/math/IntNum;
    .end local v2    # "power":Lgnu/math/IntNum;
    :cond_1f
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgnu/math/RatNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    :cond_25
    move v3, p1

    .line 194
    goto :goto_9

    .line 200
    .restart local v0    # "den":Lgnu/math/IntNum;
    .restart local v1    # "num":Lgnu/math/IntNum;
    .restart local v2    # "power":Lgnu/math/IntNum;
    :cond_27
    invoke-static {v0, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1b
.end method

.method public static toStringDecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "dstr"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x45

    const/16 v13, 0x30

    const/4 v8, 0x1

    const/16 v12, 0x2d

    const/4 v9, 0x0

    .line 349
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 350
    .local v2, "indexE":I
    if-gez v2, :cond_f

    .line 379
    .end local p0    # "dstr":Ljava/lang/String;
    :cond_e
    :goto_e
    return-object p0

    .line 352
    .restart local p0    # "dstr":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    .local v3, "len":I
    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 355
    .local v0, "ch":C
    const/16 v10, 0x79

    if-eq v0, v10, :cond_e

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_e

    .line 357
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v10, v3, 0xa

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_50

    move v4, v8

    .line 359
    .local v4, "neg":Z
    :goto_2f
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_52

    .line 361
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not implemented: toStringDecimal given non-negative exponent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v4    # "neg":Z
    :cond_50
    move v4, v9

    .line 358
    goto :goto_2f

    .line 365
    .restart local v4    # "neg":Z
    :cond_52
    add-int/lit8 v5, v2, 0x2

    .line 366
    .local v5, "pos":I
    const/4 v1, 0x0

    .local v1, "exp":I
    move v6, v5

    .line 367
    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_56
    if-ge v6, v3, :cond_66

    .line 368
    mul-int/lit8 v10, v1, 0xa

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    add-int v1, v10, v11

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_56

    .line 369
    :cond_66
    if-eqz v4, :cond_6b

    .line 370
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    :cond_6b
    const-string v10, "0."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_70
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_78

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_70

    .line 373
    :cond_78
    const/4 v5, 0x0

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :goto_79
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_99

    .line 375
    if-eq v0, v12, :cond_95

    move v11, v8

    :goto_84
    const/16 v10, 0x2e

    if-eq v0, v10, :cond_97

    move v10, v8

    :goto_89
    and-int/2addr v10, v11

    if-eqz v10, :cond_9f

    if-ne v0, v13, :cond_90

    if-ge v6, v2, :cond_9f

    .line 377
    :cond_90
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_79

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :cond_95
    move v11, v9

    .line 375
    goto :goto_84

    :cond_97
    move v10, v9

    goto :goto_89

    .line 379
    :cond_99
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_e

    :cond_9f
    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_79
.end method

.method public static toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 14
    .param p0, "dstr"    # Ljava/lang/String;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 274
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3c

    const/4 v5, 0x1

    .line 275
    .local v5, "neg":Z
    :goto_a
    if-eqz v5, :cond_11

    .line 276
    const/16 v10, 0x2d

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    :cond_11
    if-eqz v5, :cond_3e

    const/4 v6, 0x1

    .line 279
    .local v6, "pos":I
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 280
    .local v3, "len":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_7d

    .line 282
    move v9, v6

    .local v9, "start":I
    move v7, v6

    .line 285
    .end local v6    # "pos":I
    .local v7, "pos":I
    :goto_22
    if-ne v7, v3, :cond_40

    .line 287
    const-string v10, "0"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const/4 v2, 0x0

    .local v2, "exp":I
    move v6, v7

    .line 328
    .end local v7    # "pos":I
    .end local v9    # "start":I
    .restart local v6    # "pos":I
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 329
    const/4 v8, -0x1

    .line 332
    .local v8, "slen":I
    :goto_30
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 333
    .local v0, "ch":C
    const/16 v10, 0x30

    if-ne v0, v10, :cond_ad

    .line 334
    move v8, v6

    goto :goto_30

    .line 274
    .end local v0    # "ch":C
    .end local v2    # "exp":I
    .end local v3    # "len":I
    .end local v5    # "neg":Z
    .end local v6    # "pos":I
    .end local v8    # "slen":I
    :cond_3c
    const/4 v5, 0x0

    goto :goto_a

    .line 277
    .restart local v5    # "neg":Z
    :cond_3e
    const/4 v6, 0x0

    goto :goto_14

    .line 291
    .restart local v3    # "len":I
    .restart local v7    # "pos":I
    .restart local v9    # "start":I
    :cond_40
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    .restart local v0    # "ch":C
    const/16 v10, 0x30

    if-lt v0, v10, :cond_7b

    const/16 v10, 0x39

    if-gt v0, v10, :cond_7b

    const/16 v10, 0x30

    if-ne v0, v10, :cond_54

    if-ne v6, v3, :cond_7b

    .line 294
    :cond_54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    const/16 v10, 0x2e

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    const/16 v10, 0x30

    if-ne v0, v10, :cond_69

    const/4 v2, 0x0

    .line 297
    .restart local v2    # "exp":I
    :goto_61
    if-ne v6, v3, :cond_bc

    .line 298
    const/16 v10, 0x30

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 296
    .end local v2    # "exp":I
    :cond_69
    sub-int v10, v9, v6

    add-int/lit8 v2, v10, 0x2

    goto :goto_61

    .line 301
    .end local v6    # "pos":I
    .restart local v2    # "exp":I
    .restart local v7    # "pos":I
    :goto_6e
    if-ge v7, v3, :cond_b9

    .line 302
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_6e

    .end local v2    # "exp":I
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :cond_7b
    move v7, v6

    .line 306
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_22

    .line 311
    .end local v0    # "ch":C
    .end local v7    # "pos":I
    .end local v9    # "start":I
    .restart local v6    # "pos":I
    :cond_7d
    if-eqz v5, :cond_ab

    const/4 v10, 0x2

    :goto_80
    sub-int v4, v3, v10

    .line 312
    .local v4, "ndigits":I
    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 317
    .local v1, "dot":I
    sub-int v10, v4, v3

    add-int v2, v10, v1

    .line 318
    .restart local v2    # "exp":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    const/16 v10, 0x2e

    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :goto_9a
    if-ge v7, v3, :cond_b9

    .line 322
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .restart local v0    # "ch":C
    const/16 v10, 0x2e

    if-eq v0, v10, :cond_a9

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a9
    move v7, v6

    .line 325
    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_9a

    .line 311
    .end local v0    # "ch":C
    .end local v1    # "dot":I
    .end local v2    # "exp":I
    .end local v4    # "ndigits":I
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :cond_ab
    const/4 v10, 0x1

    goto :goto_80

    .line 337
    .restart local v0    # "ch":C
    .restart local v2    # "exp":I
    .restart local v8    # "slen":I
    :cond_ad
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_b3

    .line 338
    add-int/lit8 v8, v6, 0x2

    .line 342
    :cond_b3
    if-ltz v8, :cond_b8

    .line 343
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 344
    :cond_b8
    return v2

    .end local v0    # "ch":C
    .end local v6    # "pos":I
    .end local v8    # "slen":I
    .restart local v7    # "pos":I
    :cond_b9
    move v6, v7

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    goto/16 :goto_2b

    .restart local v0    # "ch":C
    .restart local v9    # "start":I
    :cond_bc
    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_6e
.end method

.method public static toStringScientific(D)Ljava/lang/String;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 248
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(F)Ljava/lang/String;
    .registers 2
    .param p0, "d"    # F

    .prologue
    .line 243
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dstr"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x45

    .line 257
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 258
    .local v2, "indexE":I
    if-ltz v2, :cond_9

    .line 269
    .end local p0    # "dstr":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 260
    .restart local p0    # "dstr":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 262
    .local v3, "len":I
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 263
    .local v0, "ch":C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_8

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_8

    .line 265
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 267
    .local v1, "exp":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    .end local p0    # "this":Lgnu/math/RealNum;
    :cond_a
    return-object p0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .registers 5

    .prologue
    .line 238
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public exp()Lgnu/math/Complex;
    .registers 5

    .prologue
    .line 161
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final im()Lgnu/math/RealNum;
    .registers 2

    .prologue
    .line 13
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract isNegative()Z
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public log()Lgnu/math/Complex;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 167
    .local v0, "x":D
    cmpg-double v2, v0, v4

    if-gez v2, :cond_f

    .line 168
    invoke-static {v0, v1, v4, v5}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v2

    .line 169
    :goto_e
    return-object v2

    :cond_f
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_e
.end method

.method public max(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 8
    .param p1, "x"    # Lgnu/math/RealNum;

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v0, 0x1

    .line 32
    .local v0, "exact":Z
    :goto_d
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v1, p0

    .line 33
    .local v1, "result":Lgnu/math/RealNum;
    :goto_14
    if-nez v0, :cond_26

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 34
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    .end local v1    # "result":Lgnu/math/RealNum;
    .local v2, "result":Lgnu/math/RealNum;
    move-object v1, v2

    .line 35
    .end local v2    # "result":Lgnu/math/RealNum;
    :cond_26
    return-object v1

    .line 31
    .end local v0    # "exact":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_d

    .restart local v0    # "exact":Z
    :cond_29
    move-object v1, p1

    .line 32
    goto :goto_14
.end method

.method public min(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 8
    .param p1, "x"    # Lgnu/math/RealNum;

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v0, 0x1

    .line 41
    .local v0, "exact":Z
    :goto_d
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v1, p1

    .line 42
    .local v1, "result":Lgnu/math/RealNum;
    :goto_14
    if-nez v0, :cond_26

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 43
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    .end local v1    # "result":Lgnu/math/RealNum;
    .local v2, "result":Lgnu/math/RealNum;
    move-object v1, v2

    .line 44
    .end local v2    # "result":Lgnu/math/RealNum;
    :cond_26
    return-object v1

    .line 40
    .end local v0    # "exact":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_d

    .restart local v0    # "exact":Z
    :cond_29
    move-object v1, p0

    .line 41
    goto :goto_14
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public final re()Lgnu/math/RealNum;
    .registers 1

    .prologue
    .line 12
    return-object p0
.end method

.method public rneg()Lgnu/math/RealNum;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public abstract sign()I
.end method

.method public final sin()Lgnu/math/Complex;
    .registers 5

    .prologue
    .line 172
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final sqrt()Lgnu/math/Complex;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 176
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 177
    .local v0, "d":D
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_14

    .line 178
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    .line 180
    :goto_13
    return-object v2

    :cond_14
    invoke-static {v0, v1, v4, v5}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v2

    goto :goto_13
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/RatNum;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .registers 4
    .param p1, "rounding_mode"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Complex;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/RealNum;
    .registers 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 90
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v0

    .line 92
    .end local p0    # "this":Lgnu/math/RealNum;
    :cond_10
    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .registers 6
    .param p1, "rounding_mode"    # I

    .prologue
    .line 120
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public toScaledInt(I)Lgnu/math/IntNum;
    .registers 3
    .param p1, "k"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
