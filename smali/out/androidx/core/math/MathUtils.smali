.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .registers 8
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 60
    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    .line 65
    .end local p2    # "min":D
    :goto_4
    return-wide p2

    .line 62
    .restart local p2    # "min":D
    :cond_5
    cmpl-double v0, p0, p4

    if-lez v0, :cond_b

    move-wide p2, p4

    .line 63
    goto :goto_4

    :cond_b
    move-wide p2, p0

    .line 65
    goto :goto_4
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 39
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 44
    .end local p1    # "min":F
    :goto_4
    return p1

    .line 41
    .restart local p1    # "min":F
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    .line 42
    goto :goto_4

    :cond_b
    move p1, p0

    .line 44
    goto :goto_4
.end method

.method public static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 81
    if-ge p0, p1, :cond_3

    .line 86
    .end local p1    # "min":I
    :goto_2
    return p1

    .line 83
    .restart local p1    # "min":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    .line 84
    goto :goto_2

    :cond_7
    move p1, p0

    .line 86
    goto :goto_2
.end method
