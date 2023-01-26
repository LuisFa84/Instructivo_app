.class public abstract Lgnu/math/RatNum;
.super Lgnu/math/RealNum;
.source "RatNum.java"


# static fields
.field public static final ten_exp_9:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const v0, 0x3b9aca00

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;
    .registers 9
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;
    .param p2, "k"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 109
    .local v1, "x_num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 110
    .local v0, "x_den":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    .line 111
    .local v3, "y_num":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    .line 112
    .local v2, "y_den":Lgnu/math/IntNum;
    invoke-static {v0, v2}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 113
    invoke-static {v1, v3, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v4, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    .line 114
    :goto_1e
    return-object v4

    :cond_1f
    invoke-static {v2, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v0, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    goto :goto_1e
.end method

.method public static asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_7

    .line 60
    check-cast p0, Lgnu/math/RatNum;

    .line 63
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 61
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_12

    .line 62
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_6

    .line 63
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_12
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I
    .registers 5
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .prologue
    .line 87
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    return v0
.end method

.method public static divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .registers 5
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .prologue
    .line 134
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z
    .registers 4
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .prologue
    .line 94
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static infinity(I)Lgnu/math/RatNum;
    .registers 4
    .param p0, "sign"    # I

    .prologue
    .line 82
    new-instance v0, Lgnu/math/IntFraction;

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method

.method public static make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;
    .registers 4
    .param p0, "num"    # Lgnu/math/IntNum;
    .param p1, "den"    # Lgnu/math/IntNum;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 17
    .local v0, "g":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 18
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 19
    :cond_e
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 21
    invoke-static {p0, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 22
    invoke-static {p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 24
    :cond_1c
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-eqz v1, :cond_23

    .end local p0    # "num":Lgnu/math/IntNum;
    :goto_22
    return-object p0

    .restart local p0    # "num":Lgnu/math/IntNum;
    :cond_23
    new-instance v1, Lgnu/math/IntFraction;

    invoke-direct {v1, p0, p1}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    move-object p0, v1

    goto :goto_22
.end method

.method public static neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .registers 4
    .param p0, "x"    # Lgnu/math/RatNum;

    .prologue
    .line 121
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 122
    .local v1, "x_num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 123
    .local v0, "x_den":Lgnu/math/IntNum;
    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    return-object v2
.end method

.method public static rationalize(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 4
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    .line 192
    .end local p0    # "x":Lgnu/math/RealNum;
    :cond_a
    :goto_a
    return-object p0

    .line 184
    .restart local p0    # "x":Lgnu/math/RealNum;
    :cond_b
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-lez v0, :cond_1c

    .line 187
    invoke-static {p0, p1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    goto :goto_a

    .line 188
    :cond_1c
    invoke-virtual {p1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 189
    invoke-virtual {p1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/RealNum;

    invoke-static {v0, v1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    move-object p0, v0

    goto :goto_a

    .line 192
    :cond_3a
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_a
.end method

.method private static simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .registers 9
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .prologue
    const/4 v6, 0x1

    .line 197
    invoke-virtual {p0, v6}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    .line 198
    .local v1, "fx":Lgnu/math/RealNum;
    invoke-virtual {p1, v6}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v2

    .line 199
    .local v2, "fy":Lgnu/math/RealNum;
    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object v4, v1

    .line 209
    :goto_10
    return-object v4

    .line 201
    :cond_11
    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 203
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p1, v2}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    .line 204
    .local v3, "n":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    .line 205
    .local v0, "d":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v4

    check-cast v4, Lgnu/math/RealNum;

    goto :goto_10

    .line 209
    .end local v0    # "d":Lgnu/math/RealNum;
    .end local v3    # "n":Lgnu/math/RealNum;
    :cond_46
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v4

    check-cast v4, Lgnu/math/RealNum;

    goto :goto_10
.end method

.method public static times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .registers 5
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .prologue
    .line 128
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;
    .registers 6
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    const/16 v4, 0xa

    .line 31
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 32
    .local v2, "v":Lgnu/math/RatNum;
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 33
    .local v0, "scale":I
    :goto_12
    const/16 v3, 0x9

    if-lt v0, v3, :cond_1f

    .line 34
    sget-object v3, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    .line 33
    add-int/lit8 v0, v0, -0x9

    goto :goto_12

    .line 35
    :cond_1f
    :goto_1f
    const/16 v3, -0x9

    if-gt v0, v3, :cond_2c

    .line 36
    sget-object v3, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v2, v3}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    .line 35
    add-int/lit8 v0, v0, 0x9

    goto :goto_1f

    .line 38
    :cond_2c
    if-lez v0, :cond_33

    move v3, v0

    :goto_2f
    packed-switch v3, :pswitch_data_7a

    .line 54
    .end local v2    # "v":Lgnu/math/RatNum;
    :goto_32
    return-object v2

    .line 38
    .restart local v2    # "v":Lgnu/math/RatNum;
    :cond_33
    neg-int v3, v0

    goto :goto_2f

    .line 40
    :pswitch_35
    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 51
    .local v1, "scaleVal":Lgnu/math/IntNum;
    :goto_39
    if-lez v0, :cond_75

    .line 52
    invoke-static {v2, v1}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    goto :goto_32

    .line 41
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_40
    const/16 v3, 0x64

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 42
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_47
    const/16 v3, 0x3e8

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 43
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_4e
    const/16 v3, 0x2710

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 44
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_55
    const v3, 0x186a0

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 45
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_5d
    const v3, 0xf4240

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 46
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_65
    const v3, 0x989680

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 47
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_6d
    const v3, 0x5f5e100

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    goto :goto_39

    .line 54
    :cond_75
    invoke-static {v2, v1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    goto :goto_32

    .line 38
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_40
        :pswitch_47
        :pswitch_4e
        :pswitch_55
        :pswitch_5d
        :pswitch_65
        :pswitch_6d
    .end packed-switch
.end method


# virtual methods
.method public abstract denominator()Lgnu/math/IntNum;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-eqz p1, :cond_6

    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_8

    .line 102
    :cond_6
    const/4 v0, 0x0

    .line 103
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lgnu/math/RatNum;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/RatNum;->equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z

    move-result v0

    goto :goto_7
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    return v0
.end method

.method public abstract numerator()Lgnu/math/IntNum;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .registers 10
    .param p1, "y"    # Lgnu/math/IntNum;

    .prologue
    .line 141
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 143
    const/4 v3, 0x1

    .line 144
    .local v3, "inv":Z
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 148
    :goto_b
    iget-object v6, p1, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_31

    .line 150
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v6

    iget v7, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    .line 151
    .local v5, "num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v6

    iget v7, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 152
    .local v2, "den":Lgnu/math/IntNum;
    if-eqz v3, :cond_2c

    invoke-static {v2, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    .line 159
    .end local v2    # "den":Lgnu/math/IntNum;
    .end local v5    # "num":Lgnu/math/IntNum;
    :goto_29
    return-object v6

    .line 147
    .end local v3    # "inv":Z
    :cond_2a
    const/4 v3, 0x0

    .restart local v3    # "inv":Z
    goto :goto_b

    .line 152
    .restart local v2    # "den":Lgnu/math/IntNum;
    .restart local v5    # "num":Lgnu/math/IntNum;
    :cond_2c
    invoke-static {v5, v2}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    goto :goto_29

    .line 154
    .end local v2    # "den":Lgnu/math/IntNum;
    .end local v5    # "num":Lgnu/math/IntNum;
    :cond_31
    invoke-virtual {p0}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v0

    .line 155
    .local v0, "d":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_59

    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v6

    if-eqz v6, :cond_59

    const/4 v4, 0x1

    .line 156
    .local v4, "neg":Z
    :goto_42
    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 157
    if-eqz v3, :cond_50

    .line 158
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v0, v6, v0

    .line 159
    :cond_50
    new-instance v6, Lgnu/math/DFloNum;

    if-eqz v4, :cond_55

    neg-double v0, v0

    .end local v0    # "d":D
    :cond_55
    invoke-direct {v6, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_29

    .line 155
    .end local v4    # "neg":Z
    .restart local v0    # "d":D
    :cond_59
    const/4 v4, 0x0

    goto :goto_42
.end method

.method public final rneg()Lgnu/math/RatNum;
    .registers 2

    .prologue
    .line 76
    invoke-static {p0}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rneg()Lgnu/math/RealNum;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public final toExact()Lgnu/math/RatNum;
    .registers 1

    .prologue
    .line 164
    return-object p0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .registers 4
    .param p1, "rounding_mode"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .registers 4
    .param p1, "rounding_mode"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
