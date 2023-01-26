.class public abstract Lgnu/math/Numeric;
.super Ljava/lang/Number;
.source "Numeric.java"


# static fields
.field public static final CEILING:I = 0x2

.field public static final FLOOR:I = 0x1

.field public static final NONNEG_MOD:I = 0x5

.field public static final ROUND:I = 0x4

.field public static final TRUNCATE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public static asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_7

    .line 35
    check-cast p0, Lgnu/math/Numeric;

    .line 44
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 36
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 39
    :cond_1b
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 40
    :cond_20
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_29

    .line 41
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_6

    .line 42
    :cond_29
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3e

    .line 43
    :cond_31
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v0

    goto :goto_6

    .line 44
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3e
    const/4 p0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public abstract abs()Lgnu/math/Numeric;
.end method

.method public final add(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .registers 4
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, -0x3

    return v0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .registers 3
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 3
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div_inv()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 123
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 89
    if-eqz p1, :cond_7

    instance-of v1, p1, Lgnu/math/Numeric;

    if-nez v1, :cond_8

    .line 91
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public geq(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public grt(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p0}, Lgnu/math/Numeric;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public abstract isExact()Z
.end method

.method public abstract isZero()Z
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0}, Lgnu/math/Numeric;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 3
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public mul_ident()Lgnu/math/Numeric;
    .registers 2

    .prologue
    .line 129
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract neg()Lgnu/math/Numeric;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .registers 5
    .param p1, "y"    # Lgnu/math/IntNum;

    .prologue
    .line 137
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 138
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Numeric;->div_inv()Lgnu/math/Numeric;

    move-result-object v1

    .line 153
    :cond_12
    :goto_12
    return-object v1

    .line 139
    :cond_13
    move-object v0, p0

    .line 140
    .local v0, "pow2":Lgnu/math/Numeric;
    const/4 v1, 0x0

    .line 145
    .local v1, "r":Lgnu/math/Numeric;
    :goto_15
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 146
    if-nez v1, :cond_30

    move-object v1, v0

    .line 147
    :cond_1e
    :goto_1e
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 153
    if-nez v1, :cond_12

    invoke-virtual {p0}, Lgnu/math/Numeric;->mul_ident()Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_12

    .line 146
    :cond_30
    invoke-virtual {v1, v0}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_1e

    .line 151
    :cond_35
    invoke-virtual {v0, v0}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_15
.end method

.method public final sub(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/Numeric;
    .registers 1

    .prologue
    .line 51
    return-object p0
.end method

.method public toInexact()Lgnu/math/Numeric;
    .registers 1

    .prologue
    .line 56
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString(I)Ljava/lang/String;
.end method
