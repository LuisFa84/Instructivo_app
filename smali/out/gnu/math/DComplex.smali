.class public Lgnu/math/DComplex;
.super Lgnu/math/Complex;
.source "DComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:D

.field real:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6
    .param p1, "real"    # D
    .param p3, "imag"    # D

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 25
    iput-wide p1, p0, Lgnu/math/DComplex;->real:D

    .line 26
    iput-wide p3, p0, Lgnu/math/DComplex;->imag:D

    .line 27
    return-void
.end method

.method public static div(DDDD)Lgnu/math/DComplex;
    .registers 32
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D
    .param p4, "y_re"    # D
    .param p6, "y_im"    # D

    .prologue
    .line 211
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 212
    .local v8, "ar":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 215
    .local v6, "ai":D
    cmpg-double v18, v8, v6

    if-gtz v18, :cond_2e

    .line 217
    div-double v16, p4, p6

    .line 218
    .local v16, "t":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v16, v16

    add-double v18, v18, v20

    mul-double v10, p6, v18

    .line 219
    .local v10, "d":D
    mul-double v18, p0, v16

    add-double v14, v18, p2

    .line 220
    .local v14, "nr":D
    mul-double v18, p2, v16

    sub-double v12, v18, p0

    .line 229
    .local v12, "ni":D
    :goto_1e
    new-instance v18, Lgnu/math/DComplex;

    div-double v20, v14, v10

    div-double v22, v12, v10

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v18

    .line 224
    .end local v10    # "d":D
    .end local v12    # "ni":D
    .end local v14    # "nr":D
    .end local v16    # "t":D
    :cond_2e
    div-double v16, p6, p4

    .line 225
    .restart local v16    # "t":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v16, v16

    add-double v18, v18, v20

    mul-double v10, p4, v18

    .line 226
    .restart local v10    # "d":D
    mul-double v18, p2, v16

    add-double v14, p0, v18

    .line 227
    .restart local v14    # "nr":D
    mul-double v18, p0, v16

    sub-double v12, p2, v18

    .restart local v12    # "ni":D
    goto :goto_1e
.end method

.method public static log(DD)Lgnu/math/Complex;
    .registers 10
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D

    .prologue
    .line 175
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 179
    .local v0, "h":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DComplex;->make(DD)Lgnu/math/Complex;

    move-result-object v2

    return-object v2
.end method

.method public static power(DDDD)Lgnu/math/DComplex;
    .registers 20
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D
    .param p4, "y_re"    # D
    .param p6, "y_im"    # D

    .prologue
    .line 160
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 164
    .local v0, "h":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 165
    .local v2, "logr":D
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 166
    .local v6, "t":D
    mul-double v8, v2, p4

    mul-double v10, p6, v6

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 167
    .local v4, "r":D
    mul-double v8, p6, v2

    mul-double v10, p4, v6

    add-double v6, v8, v10

    .line 168
    invoke-static {v4, v5, v6, v7}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v8

    return-object v8
.end method

.method public static sqrt(DD)Lgnu/math/Complex;
    .registers 14
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D

    .prologue
    .line 235
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 240
    .local v4, "r":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_12

    .line 241
    move-wide v0, v4

    .local v0, "ni":D
    move-wide v2, v4

    .line 254
    .local v2, "nr":D
    :goto_c
    new-instance v6, Lgnu/math/DComplex;

    invoke-direct {v6, v2, v3, v0, v1}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v6

    .line 242
    .end local v0    # "ni":D
    .end local v2    # "nr":D
    :cond_12
    const-wide/16 v6, 0x0

    cmpl-double v6, p0, v6

    if-lez v6, :cond_28

    .line 244
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double v8, v4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 245
    .restart local v2    # "nr":D
    div-double v6, p2, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v0, v6, v8

    .restart local v0    # "ni":D
    goto :goto_c

    .line 249
    .end local v0    # "ni":D
    .end local v2    # "nr":D
    :cond_28
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v8, v4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 250
    .restart local v0    # "ni":D
    const-wide/16 v6, 0x0

    cmpg-double v6, p2, v6

    if-gez v6, :cond_38

    .line 251
    neg-double v0, v0

    .line 252
    :cond_38
    div-double v6, p2, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v2, v6, v8

    .restart local v2    # "nr":D
    goto :goto_c
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 13
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .prologue
    .line 116
    instance-of v1, p1, Lgnu/math/Complex;

    if-eqz v1, :cond_2f

    move-object v0, p1

    .line 118
    check-cast v0, Lgnu/math/Complex;

    .line 119
    .local v0, "yc":Lgnu/math/Complex;
    invoke-virtual {v0}, Lgnu/math/Complex;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    sget-object v2, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-eq v1, v2, :cond_17

    .line 120
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "units mis-match"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_17
    new-instance v1, Lgnu/math/DComplex;

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    int-to-double v4, p2

    invoke-virtual {v0}, Lgnu/math/Complex;->reValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    int-to-double v6, p2

    invoke-virtual {v0}, Lgnu/math/Complex;->imValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/math/DComplex;-><init>(DD)V

    .line 124
    .end local v0    # "yc":Lgnu/math/Complex;
    .end local p1    # "y":Ljava/lang/Object;
    :goto_2e
    return-object v1

    .restart local p1    # "y":Ljava/lang/Object;
    :cond_2f
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_2e
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 11
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 146
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_18

    move-object v8, p1

    .line 148
    check-cast v8, Lgnu/math/Complex;

    .line 149
    .local v8, "yc":Lgnu/math/Complex;
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-virtual {v8}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v8}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v0

    .line 152
    .end local v8    # "yc":Lgnu/math/Complex;
    .end local p1    # "y":Ljava/lang/Object;
    :goto_17
    return-object v0

    .restart local p1    # "y":Ljava/lang/Object;
    :cond_18
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_17
.end method

.method public doubleImagValue()D
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_7

    instance-of v2, p1, Lgnu/math/Complex;

    if-nez v2, :cond_8

    .line 49
    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 48
    check-cast v0, Lgnu/math/Complex;

    .line 49
    .local v0, "y":Lgnu/math/Complex;
    invoke-virtual {v0}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v2

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v3, :cond_7

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0}, Lgnu/math/Complex;->reValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0}, Lgnu/math/Complex;->imValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public im()Lgnu/math/RealNum;
    .registers 5

    .prologue
    .line 31
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 14
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 129
    instance-of v5, p1, Lgnu/math/Complex;

    if-eqz v5, :cond_30

    move-object v4, p1

    .line 131
    check-cast v4, Lgnu/math/Complex;

    .line 132
    .local v4, "yc":Lgnu/math/Complex;
    invoke-virtual {v4}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v5

    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v5, v6, :cond_2b

    .line 134
    invoke-virtual {v4}, Lgnu/math/Complex;->reValue()D

    move-result-wide v2

    .line 135
    .local v2, "y_re":D
    invoke-virtual {v4}, Lgnu/math/Complex;->imValue()D

    move-result-wide v0

    .line 136
    .local v0, "y_im":D
    new-instance v5, Lgnu/math/DComplex;

    iget-wide v6, p0, Lgnu/math/DComplex;->real:D

    mul-double/2addr v6, v2

    iget-wide v8, p0, Lgnu/math/DComplex;->imag:D

    mul-double/2addr v8, v0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lgnu/math/DComplex;->real:D

    mul-double/2addr v8, v0

    iget-wide v10, p0, Lgnu/math/DComplex;->imag:D

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/math/DComplex;-><init>(DD)V

    .line 141
    .end local v0    # "y_im":D
    .end local v2    # "y_re":D
    .end local v4    # "yc":Lgnu/math/Complex;
    .end local p1    # "y":Ljava/lang/Object;
    :goto_2a
    return-object v5

    .line 139
    .restart local v4    # "yc":Lgnu/math/Complex;
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_2b
    invoke-static {p0, v4}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v5

    goto :goto_2a

    .line 141
    .end local v4    # "yc":Lgnu/math/Complex;
    :cond_30
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v5

    goto :goto_2a
.end method

.method public final neg()Lgnu/math/Numeric;
    .registers 7

    .prologue
    .line 112
    new-instance v0, Lgnu/math/DComplex;

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    neg-double v2, v2

    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    neg-double v4, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .registers 5

    .prologue
    .line 29
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
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
    .line 404
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->real:D

    .line 405
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->imag:D

    .line 406
    return-void
.end method

.method public toExact()Lgnu/math/Complex;
    .registers 5

    .prologue
    .line 41
    new-instance v0, Lgnu/math/CComplex;

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lgnu/math/DComplex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 58
    const-string v1, ""

    .line 61
    .local v1, "prefix":Ljava/lang/String;
    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    cmpl-double v3, v4, v8

    if-nez v3, :cond_2e

    .line 63
    const-string v1, "#i"

    const-string v2, "1/0"

    .line 76
    .local v2, "reString":Ljava/lang/String;
    :goto_12
    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_4d

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_2d
    return-object v3

    .line 65
    .end local v2    # "reString":Ljava/lang/String;
    :cond_2e
    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_39

    .line 67
    const-string v1, "#i"

    const-string v2, "-1/0"

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_12

    .line 69
    .end local v2    # "reString":Ljava/lang/String;
    :cond_39
    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 71
    const-string v1, "#i"

    const-string v2, "0/0"

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_12

    .line 74
    .end local v2    # "reString":Ljava/lang/String;
    :cond_46
    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "reString":Ljava/lang/String;
    goto :goto_12

    .line 80
    :cond_4d
    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v3, v4, v8

    if-nez v3, :cond_74

    .line 82
    const-string v1, "#i"

    const-string v0, "+1/0i"

    .line 99
    .local v0, "imString":Ljava/lang/String;
    :cond_57
    :goto_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-nez v3, :cond_c2

    move-object v3, v1

    :goto_67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 84
    .end local v0    # "imString":Ljava/lang/String;
    :cond_74
    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_7f

    .line 86
    const-string v1, "#i"

    const-string v0, "-1/0i"

    .restart local v0    # "imString":Ljava/lang/String;
    goto :goto_57

    .line 88
    .end local v0    # "imString":Ljava/lang/String;
    :cond_7f
    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 90
    const-string v1, "#i"

    const-string v0, "+0/0i"

    .restart local v0    # "imString":Ljava/lang/String;
    goto :goto_57

    .line 94
    .end local v0    # "imString":Ljava/lang/String;
    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "imString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_57

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 99
    :cond_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_67
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .param p1, "radix"    # I

    .prologue
    .line 105
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 106
    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
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
    .line 397
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 398
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 399
    return-void
.end method
