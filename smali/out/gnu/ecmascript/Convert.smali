.class public Lgnu/ecmascript/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInteger(D)D
    .registers 6
    .param p0, "x"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 33
    :goto_8
    return-wide v0

    :cond_9
    cmpg-double v0, p0, v0

    if-gez v0, :cond_12

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_8

    :cond_12
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_8
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p0}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/ecmascript/Convert;->toInteger(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .registers 5
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 7
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_d

    .line 8
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 26
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :cond_c
    :goto_c
    return-wide v2

    .line 11
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_d
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1f

    .line 12
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_c

    :cond_1c
    const-wide/16 v2, 0x0

    goto :goto_c

    .line 13
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_1f
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 18
    :try_start_23
    check-cast p0, Ljava/lang/String;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2c} :catch_2e

    move-result-wide v2

    goto :goto_c

    .line 20
    :catch_2e
    move-exception v0

    .line 22
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_c
.end method


# virtual methods
.method public toInt32(D)I
    .registers 4
    .param p1, "x"    # D

    .prologue
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    :cond_c
    const/4 v0, 0x0

    .line 46
    :goto_d
    return v0

    :cond_e
    double-to-int v0, p1

    goto :goto_d
.end method

.method public toInt32(Ljava/lang/Object;)I
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lgnu/ecmascript/Convert;->toInt32(D)I

    move-result v0

    return v0
.end method
