.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .registers 19
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;
    .param p2, "k"    # I

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget v3, v0, Lgnu/math/Duration;->months:I

    int-to-long v8, v3

    move/from16 v0, p2

    int-to-long v10, v0

    move-object/from16 v0, p1

    iget v3, v0, Lgnu/math/Duration;->months:I

    int-to-long v12, v3

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    .line 255
    .local v4, "months":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    move-object/from16 v0, p0

    iget v3, v0, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    move/from16 v0, p2

    int-to-long v10, v0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v14, 0x3b9aca00

    mul-long/2addr v12, v14

    move-object/from16 v0, p1

    iget v3, v0, Lgnu/math/Duration;->nanos:I

    int-to-long v14, v3

    add-long/2addr v12, v14

    mul-long/2addr v10, v12

    add-long v6, v8, v10

    .line 259
    .local v6, "nanos":J
    new-instance v2, Lgnu/math/Duration;

    invoke-direct {v2}, Lgnu/math/Duration;-><init>()V

    .line 260
    .local v2, "d":Lgnu/math/Duration;
    long-to-int v3, v4

    iput v3, v2, Lgnu/math/Duration;->months:I

    .line 261
    const-wide/32 v8, 0x3b9aca00

    div-long v8, v6, v8

    long-to-int v3, v8

    int-to-long v8, v3

    iput-wide v8, v2, Lgnu/math/Duration;->seconds:J

    .line 262
    const-wide/32 v8, 0x3b9aca00

    rem-long v8, v6, v8

    long-to-int v3, v8

    iput v3, v2, Lgnu/math/Duration;->nanos:I

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object/from16 v0, p1

    iget-object v8, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v3, v8, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v8, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v3, v8, :cond_65

    .line 264
    :cond_5d
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v8, "cannot add these duration types"

    invoke-direct {v3, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v3, v2, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 266
    return-object v2
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .registers 7
    .param p0, "nanoSeconds"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v4, 0x30

    .line 372
    if-nez p0, :cond_5

    .line 384
    :goto_4
    return-void

    .line 374
    :cond_5
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 376
    .local v2, "pos":I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 378
    .local v0, "len":I
    add-int/lit8 v3, v2, 0x9

    sub-int v1, v3, v0

    .line 379
    .local v1, "pad":I
    :goto_19
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_21

    .line 380
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 381
    :cond_21
    add-int/lit8 v0, v2, 0x9

    .line 382
    :cond_23
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_23

    .line 383
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .registers 16
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .prologue
    const-wide/32 v10, 0x3b9aca00

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v12, 0x0

    .line 287
    iget v6, p0, Lgnu/math/Duration;->months:I

    int-to-long v6, v6

    iget v8, p1, Lgnu/math/Duration;->months:I

    int-to-long v8, v8

    sub-long v0, v6, v8

    .line 288
    .local v0, "months":J
    iget-wide v6, p0, Lgnu/math/Duration;->seconds:J

    mul-long/2addr v6, v10

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iget-wide v8, p1, Lgnu/math/Duration;->seconds:J

    mul-long/2addr v8, v10

    iget v10, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sub-long v2, v6, v8

    .line 290
    .local v2, "nanos":J
    cmp-long v6, v0, v12

    if-gez v6, :cond_28

    cmp-long v6, v2, v12

    if-gtz v6, :cond_28

    .line 296
    :cond_27
    :goto_27
    return v4

    .line 292
    :cond_28
    cmp-long v6, v0, v12

    if-lez v6, :cond_32

    cmp-long v6, v2, v12

    if-ltz v6, :cond_32

    move v4, v5

    .line 293
    goto :goto_27

    .line 294
    :cond_32
    cmp-long v6, v0, v12

    if-nez v6, :cond_42

    .line 295
    cmp-long v6, v2, v12

    if-ltz v6, :cond_27

    cmp-long v4, v2, v12

    if-lez v4, :cond_40

    move v4, v5

    goto :goto_27

    :cond_40
    const/4 v4, 0x0

    goto :goto_27

    .line 296
    :cond_42
    const/4 v4, -0x2

    goto :goto_27
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .registers 16
    .param p0, "dur1"    # Lgnu/math/Duration;
    .param p1, "dur2"    # Lgnu/math/Duration;

    .prologue
    const-wide v12, 0x3e112e0be826d695L    # 1.0E-9

    const-wide/16 v10, 0x0

    .line 217
    iget v0, p0, Lgnu/math/Duration;->months:I

    .line 218
    .local v0, "months1":I
    iget v1, p1, Lgnu/math/Duration;->months:I

    .line 219
    .local v1, "months2":I
    iget-wide v6, p0, Lgnu/math/Duration;->seconds:J

    long-to-double v6, v6

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double v2, v6, v8

    .line 220
    .local v2, "sec1":D
    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    long-to-double v6, v6

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double v4, v6, v8

    .line 221
    .local v4, "sec2":D
    if-nez v1, :cond_2b

    cmpl-double v6, v4, v10

    if-nez v6, :cond_2b

    .line 222
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide duration by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_2b
    if-nez v1, :cond_32

    .line 225
    if-nez v0, :cond_3e

    .line 226
    div-double v6, v2, v4

    .line 231
    :goto_31
    return-wide v6

    .line 228
    :cond_32
    cmpl-double v6, v4, v10

    if-nez v6, :cond_3e

    .line 230
    cmpl-double v6, v2, v10

    if-nez v6, :cond_3e

    .line 231
    int-to-double v6, v0

    int-to-double v8, v1

    div-double/2addr v6, v8

    goto :goto_31

    .line 233
    :cond_3e
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide of incompatible durations"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .registers 6
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .prologue
    .line 512
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget v1, p1, Lgnu/math/Duration;->months:I

    if-ne v0, v1, :cond_16

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    iget-wide v2, p1, Lgnu/math/Duration;->seconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    iget v1, p1, Lgnu/math/Duration;->nanos:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .registers 6
    .param p0, "months"    # I
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I
    .param p4, "unit"    # Lgnu/math/Unit;

    .prologue
    .line 24
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 25
    .local v0, "d":Lgnu/math/Duration;
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 26
    iput-wide p1, v0, Lgnu/math/Duration;->seconds:J

    .line 27
    iput p3, v0, Lgnu/math/Duration;->nanos:I

    .line 28
    iput-object p4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 29
    return-object v0
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .registers 5
    .param p0, "minutes"    # I

    .prologue
    .line 42
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 43
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 44
    mul-int/lit8 v1, p0, 0x3c

    int-to-long v2, v1

    iput-wide v2, v0, Lgnu/math/Duration;->seconds:J

    .line 45
    return-object v0
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .registers 3
    .param p0, "months"    # I

    .prologue
    .line 34
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 35
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 37
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    .line 51
    .local v0, "d":Lgnu/math/Duration;
    if-nez v0, :cond_33

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_33
    return-object v0
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .registers 16
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v12, 0x0

    .line 393
    move v2, p1

    .line 394
    .local v2, "i":I
    const-wide/16 v4, -0x1

    .line 395
    .local v4, "val":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, "len":I
    :cond_b
    if-ge v2, v3, :cond_42

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 400
    const/16 v8, 0xa

    invoke-static {v0, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 401
    .local v1, "dig":I
    if-gez v1, :cond_2e

    .line 403
    cmp-long v6, v4, v12

    if-gez v6, :cond_23

    shl-int/lit8 v6, p1, 0x10

    int-to-long v6, v6

    .line 410
    .end local v0    # "ch":C
    .end local v1    # "dig":I
    :cond_22
    :goto_22
    return-wide v6

    .line 404
    .restart local v0    # "ch":C
    .restart local v1    # "dig":I
    :cond_23
    const/16 v6, 0x20

    shl-long v6, v4, v6

    shl-int/lit8 v8, v2, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    int-to-long v8, v0

    or-long/2addr v6, v8

    goto :goto_22

    .line 406
    :cond_2e
    cmp-long v8, v4, v12

    if-gez v8, :cond_3b

    int-to-long v4, v1

    .line 407
    :goto_33
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_b

    goto :goto_22

    .line 406
    :cond_3b
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v4

    int-to-long v10, v1

    add-long v4, v8, v10

    goto :goto_33

    .line 410
    .end local v0    # "ch":C
    .end local v1    # "dig":I
    :cond_42
    cmp-long v8, v4, v12

    if-gez v8, :cond_22

    shl-int/lit8 v6, p1, 0x10

    int-to-long v6, v6

    goto :goto_22
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .registers 16
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # D

    .prologue
    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    .line 271
    iget-object v1, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v6, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v1, v6, :cond_13

    .line 272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "cannot multiply general duration"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_13
    iget v1, p0, Lgnu/math/Duration;->months:I

    int-to-double v6, v1

    mul-double v2, v6, p1

    .line 274
    .local v2, "months":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 275
    :cond_24
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v6, "overflow/NaN when multiplying a duration"

    invoke-direct {v1, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_2c
    iget-wide v6, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v8, v1

    add-long/2addr v6, v8

    long-to-double v6, v6

    mul-double v4, v6, p1

    .line 277
    .local v4, "nanos":D
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 278
    .local v0, "d":Lgnu/math/Duration;
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    iput v1, v0, Lgnu/math/Duration;->months:I

    .line 279
    div-double v6, v4, v10

    double-to-int v1, v6

    int-to-long v6, v1

    iput-wide v6, v0, Lgnu/math/Duration;->seconds:J

    .line 280
    rem-double v6, v4, v10

    double-to-int v1, v6

    iput v1, v0, Lgnu/math/Duration;->nanos:I

    .line 281
    iget-object v1, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 282
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .registers 24
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 78
    const/4 v11, 0x0

    .line 79
    .local v11, "pos":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 81
    .local v5, "len":I
    if-ge v11, v5, :cond_2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v15, v0, :cond_2c

    .line 83
    const/4 v8, 0x1

    .line 84
    .local v8, "negative":Z
    add-int/lit8 v11, v11, 0x1

    .line 88
    :goto_1a
    add-int/lit8 v15, v11, 0x1

    if-ge v15, v5, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0x50

    move/from16 v0, v18

    if-eq v15, v0, :cond_2e

    .line 89
    :cond_2a
    const/4 v3, 0x0

    .line 189
    :goto_2b
    return-object v3

    .line 87
    .end local v8    # "negative":Z
    :cond_2c
    const/4 v8, 0x0

    .restart local v8    # "negative":Z
    goto :goto_1a

    .line 90
    :cond_2e
    add-int/lit8 v11, v11, 0x1

    .line 91
    const/4 v6, 0x0

    .local v6, "months":I
    const/4 v7, 0x0

    .line 92
    .local v7, "nanos":I
    const-wide/16 v16, 0x0

    .line 93
    .local v16, "seconds":J
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 94
    .local v12, "part":J
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 95
    long-to-int v15, v12

    int-to-char v2, v15

    .line 96
    .local v2, "ch":C
    sget-object v15, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_4f

    const/16 v15, 0x59

    if-eq v2, v15, :cond_4d

    const/16 v15, 0x4d

    if-ne v2, v15, :cond_4f

    .line 97
    :cond_4d
    const/4 v3, 0x0

    goto :goto_2b

    .line 98
    :cond_4f
    const/16 v15, 0x59

    if-ne v2, v15, :cond_67

    .line 100
    const/16 v15, 0x20

    shr-long v18, v12, v15

    move-wide/from16 v0, v18

    long-to-int v15, v0

    mul-int/lit8 v6, v15, 0xc

    .line 101
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 102
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 103
    long-to-int v15, v12

    int-to-char v2, v15

    .line 105
    :cond_67
    const/16 v15, 0x4d

    if-ne v2, v15, :cond_82

    .line 107
    int-to-long v0, v6

    move-wide/from16 v18, v0

    const/16 v15, 0x20

    shr-long v20, v12, v15

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 108
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 109
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 110
    long-to-int v15, v12

    int-to-char v2, v15

    .line 112
    :cond_82
    sget-object v15, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_8c

    if-eq v11, v5, :cond_8c

    .line 113
    const/4 v3, 0x0

    goto :goto_2b

    .line 114
    :cond_8c
    const/16 v15, 0x44

    if-ne v2, v15, :cond_b0

    .line 116
    sget-object v15, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_98

    .line 117
    const/4 v3, 0x0

    goto :goto_2b

    .line 118
    :cond_98
    const-wide/32 v18, 0x15180

    const/16 v15, 0x20

    shr-long v20, v12, v15

    move-wide/from16 v0, v20

    long-to-int v15, v0

    int-to-long v0, v15

    move-wide/from16 v20, v0

    mul-long v16, v18, v20

    .line 119
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 120
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 122
    :cond_b0
    shl-int/lit8 v15, v11, 0x10

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v12, v18

    if-eqz v15, :cond_bc

    .line 123
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 124
    :cond_bc
    if-ne v11, v5, :cond_c3

    .line 176
    :cond_be
    if-eq v11, v5, :cond_18c

    .line 177
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 128
    :cond_c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0x54

    move/from16 v0, v18

    if-ne v15, v0, :cond_d3

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v5, :cond_d6

    .line 129
    :cond_d3
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 132
    :cond_d6
    sget-object v15, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_df

    .line 133
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 134
    :cond_df
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 135
    long-to-int v15, v12

    int-to-char v2, v15

    .line 136
    const/16 v15, 0x48

    if-ne v2, v15, :cond_104

    .line 138
    const/16 v15, 0x20

    shr-long v18, v12, v15

    move-wide/from16 v0, v18

    long-to-int v15, v0

    mul-int/lit16 v15, v15, 0xe10

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 139
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 140
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 141
    long-to-int v15, v12

    int-to-char v2, v15

    .line 143
    :cond_104
    const/16 v15, 0x4d

    if-ne v2, v15, :cond_121

    .line 145
    const/16 v15, 0x20

    shr-long v18, v12, v15

    move-wide/from16 v0, v18

    long-to-int v15, v0

    mul-int/lit8 v15, v15, 0x3c

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 146
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 147
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v12

    .line 148
    long-to-int v15, v12

    int-to-char v2, v15

    .line 150
    :cond_121
    const/16 v15, 0x53

    if-eq v2, v15, :cond_129

    const/16 v15, 0x2e

    if-ne v2, v15, :cond_138

    .line 152
    :cond_129
    const/16 v15, 0x20

    shr-long v18, v12, v15

    move-wide/from16 v0, v18

    long-to-int v15, v0

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 153
    long-to-int v15, v12

    shr-int/lit8 v11, v15, 0x10

    .line 155
    :cond_138
    const/16 v15, 0x2e

    if-ne v2, v15, :cond_be

    add-int/lit8 v15, v11, 0x1

    if-ge v15, v5, :cond_be

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v15

    if-ltz v15, :cond_be

    .line 158
    const/4 v9, 0x0

    .local v9, "nfrac":I
    move v14, v11

    .line 159
    .end local v11    # "pos":I
    .local v14, "pos":I
    :goto_152
    if-ge v14, v5, :cond_1a8

    .line 161
    add-int/lit8 v11, v14, 0x1

    .end local v14    # "pos":I
    .restart local v11    # "pos":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 162
    const/16 v15, 0xa

    invoke-static {v2, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 163
    .local v4, "dig":I
    if-gez v4, :cond_16f

    move v10, v9

    .line 170
    .end local v4    # "dig":I
    .end local v9    # "nfrac":I
    .local v10, "nfrac":I
    :goto_165
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "nfrac":I
    .restart local v9    # "nfrac":I
    const/16 v15, 0x9

    if-ge v10, v15, :cond_185

    .line 171
    mul-int/lit8 v7, v7, 0xa

    move v10, v9

    .end local v9    # "nfrac":I
    .restart local v10    # "nfrac":I
    goto :goto_165

    .line 165
    .end local v10    # "nfrac":I
    .restart local v4    # "dig":I
    .restart local v9    # "nfrac":I
    :cond_16f
    const/16 v15, 0x9

    if-ge v9, v15, :cond_17b

    .line 166
    mul-int/lit8 v15, v7, 0xa

    add-int v7, v15, v4

    .line 159
    :cond_177
    :goto_177
    add-int/lit8 v9, v9, 0x1

    move v14, v11

    .end local v11    # "pos":I
    .restart local v14    # "pos":I
    goto :goto_152

    .line 167
    .end local v14    # "pos":I
    .restart local v11    # "pos":I
    :cond_17b
    const/16 v15, 0x9

    if-ne v9, v15, :cond_177

    const/4 v15, 0x5

    if-lt v4, v15, :cond_177

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto :goto_177

    .line 172
    .end local v4    # "dig":I
    :cond_185
    const/16 v15, 0x53

    if-eq v2, v15, :cond_be

    .line 173
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 178
    .end local v9    # "nfrac":I
    :cond_18c
    new-instance v3, Lgnu/math/Duration;

    invoke-direct {v3}, Lgnu/math/Duration;-><init>()V

    .line 179
    .local v3, "d":Lgnu/math/Duration;
    if-eqz v8, :cond_19a

    .line 181
    neg-int v6, v6

    .line 182
    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v16, v0

    .line 183
    neg-int v7, v7

    .line 185
    :cond_19a
    iput v6, v3, Lgnu/math/Duration;->months:I

    .line 186
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lgnu/math/Duration;->seconds:J

    .line 187
    iput v7, v3, Lgnu/math/Duration;->nanos:I

    .line 188
    move-object/from16 v0, p1

    iput-object v0, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    goto/16 :goto_2b

    .end local v3    # "d":Lgnu/math/Duration;
    .end local v11    # "pos":I
    .restart local v9    # "nfrac":I
    .restart local v14    # "pos":I
    :cond_1a8
    move v10, v9

    .end local v9    # "nfrac":I
    .restart local v10    # "nfrac":I
    move v11, v14

    .end local v14    # "pos":I
    .restart local v11    # "pos":I
    goto :goto_165
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 5
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .prologue
    const/4 v1, 0x1

    .line 194
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_c

    .line 195
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object v0

    .line 197
    :goto_b
    return-object v0

    .line 196
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_19

    if-ne p2, v1, :cond_19

    .line 197
    check-cast p1, Lgnu/math/DateTime;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p1, p0, v1}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    goto :goto_b

    .line 198
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 301
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_b

    .line 302
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v0

    return v0

    .line 304
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 238
    instance-of v2, p1, Lgnu/math/RealNum;

    if-eqz v2, :cond_26

    .line 240
    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 241
    .local v0, "dy":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_16

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 242
    :cond_16
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "divide of duration by 0 or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_1e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {p0, v2, v3}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v2

    .line 247
    .end local v0    # "dy":D
    :goto_25
    return-object v2

    .line 245
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_26
    instance-of v2, p1, Lgnu/math/Duration;

    if-eqz v2, :cond_36

    .line 246
    new-instance v2, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_25

    .line 247
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_36
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_25
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 522
    if-eqz p1, :cond_6

    instance-of v0, p1, Lgnu/math/Duration;

    if-nez v0, :cond_8

    .line 523
    :cond_6
    const/4 v0, 0x0

    .line 524
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result v0

    goto :goto_7
.end method

.method public getDays()I
    .registers 5

    .prologue
    .line 426
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getHours()I
    .registers 5

    .prologue
    .line 431
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMinutes()I
    .registers 5

    .prologue
    const-wide/16 v2, 0x3c

    .line 436
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMonths()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Lgnu/math/Duration;->months:I

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getNanoSeconds()J
    .registers 5

    .prologue
    .line 466
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNanoSecondsOnly()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    return v0
.end method

.method public getSecondsOnly()I
    .registers 5

    .prologue
    .line 441
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getTotalMinutes()J
    .registers 5

    .prologue
    .line 461
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMonths()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lgnu/math/Duration;->months:I

    return v0
.end method

.method public getTotalSeconds()J
    .registers 3

    .prologue
    .line 456
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    return-wide v0
.end method

.method public getYears()I
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Lgnu/math/Duration;->months:I

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 504
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .registers 5

    .prologue
    .line 471
    iget v0, p0, Lgnu/math/Duration;->months:I

    if-nez v0, :cond_12

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 4
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 203
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_f

    .line 204
    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    .line 205
    :goto_e
    return-object v0

    .restart local p1    # "y":Ljava/lang/Object;
    :cond_f
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_e
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 4
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 210
    instance-of v0, p1, Lgnu/math/RealNum;

    if-nez v0, :cond_a

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 212
    :cond_a
    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .registers 3

    .prologue
    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->months:I

    .line 491
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/Duration;->seconds:J

    .line 492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->nanos:I

    .line 493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 19

    .prologue
    .line 309
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v11, "sbuf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v6, v0, Lgnu/math/Duration;->months:I

    .line 311
    .local v6, "m":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Lgnu/math/Duration;->seconds:J

    .line 312
    .local v12, "s":J
    move-object/from16 v0, p0

    iget v7, v0, Lgnu/math/Duration;->nanos:I

    .line 313
    .local v7, "n":I
    if-ltz v6, :cond_1b

    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_1b

    if-gez v7, :cond_b3

    :cond_1b
    const/4 v10, 0x1

    .line 314
    .local v10, "neg":Z
    :goto_1c
    if-eqz v10, :cond_26

    .line 316
    neg-int v6, v6

    .line 317
    neg-long v12, v12

    .line 318
    neg-int v7, v7

    .line 319
    const/16 v15, 0x2d

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    :cond_26
    const/16 v15, 0x50

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    div-int/lit8 v14, v6, 0xc

    .line 323
    .local v14, "y":I
    if-eqz v14, :cond_3a

    .line 325
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    const/16 v15, 0x59

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    mul-int/lit8 v15, v14, 0xc

    sub-int/2addr v6, v15

    .line 329
    :cond_3a
    if-eqz v6, :cond_44

    .line 331
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    const/16 v15, 0x4d

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_44
    const-wide/32 v16, 0x15180

    div-long v2, v12, v16

    .line 335
    .local v2, "d":J
    const-wide/16 v16, 0x0

    cmp-long v15, v2, v16

    if-eqz v15, :cond_5e

    .line 337
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 338
    const/16 v15, 0x44

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    const-wide/32 v16, 0x15180

    mul-long v16, v16, v2

    sub-long v12, v12, v16

    .line 341
    :cond_5e
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-nez v15, :cond_66

    if-eqz v7, :cond_b6

    .line 343
    :cond_66
    const/16 v15, 0x54

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const-wide/16 v16, 0xe10

    div-long v4, v12, v16

    .line 345
    .local v4, "hr":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_83

    .line 347
    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 348
    const/16 v15, 0x48

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    const-wide/16 v16, 0xe10

    mul-long v16, v16, v4

    sub-long v12, v12, v16

    .line 351
    :cond_83
    const-wide/16 v16, 0x3c

    div-long v8, v12, v16

    .line 352
    .local v8, "mn":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-eqz v15, :cond_9b

    .line 354
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 355
    const/16 v15, 0x4d

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-wide/16 v16, 0x3c

    mul-long v16, v16, v8

    sub-long v12, v12, v16

    .line 358
    :cond_9b
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-nez v15, :cond_a3

    if-eqz v7, :cond_ae

    .line 360
    :cond_a3
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v7, v11}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 362
    const/16 v15, 0x53

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    .end local v4    # "hr":J
    .end local v8    # "mn":J
    :cond_ae
    :goto_ae
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 313
    .end local v2    # "d":J
    .end local v10    # "neg":Z
    .end local v14    # "y":I
    :cond_b3
    const/4 v10, 0x0

    goto/16 :goto_1c

    .line 365
    .restart local v2    # "d":J
    .restart local v10    # "neg":Z
    .restart local v14    # "y":I
    :cond_b6
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_ae

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v16, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_d0

    const-string v15, "0M"

    :goto_cc
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ae

    :cond_d0
    const-string v15, "T0S"

    goto :goto_cc
.end method

.method public unit()Lgnu/math/Unit;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget v0, p0, Lgnu/math/Duration;->months:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    return-void
.end method
