.class public Lgnu/math/DQuantity;
.super Lgnu/math/Quantity;
.source "DQuantity.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field factor:D

.field unt:Lgnu/math/Unit;


# direct methods
.method public constructor <init>(DLgnu/math/Unit;)V
    .registers 5
    .param p1, "factor"    # D
    .param p3, "unit"    # Lgnu/math/Unit;

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 23
    iput-wide p1, p0, Lgnu/math/DQuantity;->factor:D

    .line 24
    iput-object p3, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 25
    return-void
.end method

.method public static add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;
    .registers 14
    .param p0, "x"    # Lgnu/math/DQuantity;
    .param p1, "y"    # Lgnu/math/DQuantity;
    .param p2, "k"    # D

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 34
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "units mis-match"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_12
    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    iget-wide v4, v4, Lgnu/math/Unit;->factor:D

    div-double v0, v2, v4

    .line 36
    .local v0, "unit_ratio":D
    new-instance v2, Lgnu/math/DQuantity;

    iget-wide v4, p0, Lgnu/math/DQuantity;->factor:D

    mul-double v6, p2, v0

    iget-wide v8, p1, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v2
.end method

.method public static divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .registers 10
    .param p0, "x"    # Lgnu/math/DQuantity;
    .param p1, "y"    # Lgnu/math/DQuantity;

    .prologue
    .line 48
    iget-wide v4, p0, Lgnu/math/DQuantity;->factor:D

    iget-wide v6, p1, Lgnu/math/DQuantity;->factor:D

    div-double v0, v4, v6

    .line 49
    .local v0, "factor":D
    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    .line 50
    .local v2, "unit":Lgnu/math/Unit;
    new-instance v3, Lgnu/math/DQuantity;

    invoke-direct {v3, v0, v1, v2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v3
.end method

.method public static times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;
    .registers 10
    .param p0, "x"    # Lgnu/math/DQuantity;
    .param p1, "y"    # Lgnu/math/DQuantity;

    .prologue
    .line 41
    iget-wide v4, p0, Lgnu/math/DQuantity;->factor:D

    iget-wide v6, p1, Lgnu/math/DQuantity;->factor:D

    mul-double v0, v4, v6

    .line 42
    .local v0, "factor":D
    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    .line 43
    .local v2, "unit":Lgnu/math/Unit;
    new-instance v3, Lgnu/math/DQuantity;

    invoke-direct {v3, v0, v1, v2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 11
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .prologue
    .line 55
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_c

    .line 56
    check-cast p1, Lgnu/math/DQuantity;

    .end local p1    # "y":Ljava/lang/Object;
    int-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Lgnu/math/DQuantity;->add(Lgnu/math/DQuantity;Lgnu/math/DQuantity;D)Lgnu/math/DQuantity;

    move-result-object v0

    .line 61
    :goto_b
    return-object v0

    .line 57
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_c
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v0, v1, :cond_2d

    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_2d

    .line 58
    new-instance v0, Lgnu/math/DQuantity;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

    int-to-double v4, p2

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_b

    .line 59
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_2d
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_37

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_37
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_b
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .registers 11
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v0, v1, :cond_1d

    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1d

    .line 67
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p2

    iget-wide v6, p0, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 68
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 10
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v1, p1, Lgnu/math/DQuantity;

    if-eqz v1, :cond_31

    move-object v0, p1

    .line 93
    check-cast v0, Lgnu/math/DQuantity;

    .line 94
    .local v0, "qy":Lgnu/math/DQuantity;
    invoke-virtual {p0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/math/DQuantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    if-ne v1, v2, :cond_2c

    .line 95
    new-instance v1, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, v0, Lgnu/math/DQuantity;->factor:D

    invoke-virtual {v0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    iget-wide v6, v6, Lgnu/math/Unit;->factor:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    .line 103
    .end local v0    # "qy":Lgnu/math/DQuantity;
    .end local p1    # "y":Ljava/lang/Object;
    :goto_2b
    return-object v1

    .line 97
    .restart local v0    # "qy":Lgnu/math/DQuantity;
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_2c
    invoke-static {p0, v0}, Lgnu/math/DQuantity;->divide(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v1

    goto :goto_2b

    .line 99
    .end local v0    # "qy":Lgnu/math/DQuantity;
    :cond_31
    instance-of v1, p1, Lgnu/math/RealNum;

    if-eqz v1, :cond_48

    .line 100
    new-instance v1, Lgnu/math/DQuantity;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_2b

    .line 101
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_48
    instance-of v1, p1, Lgnu/math/Numeric;

    if-nez v1, :cond_52

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    :cond_52
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_2b
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 108
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1d

    .line 109
    new-instance v0, Lgnu/math/DQuantity;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DQuantity;->factor:D

    div-double/2addr v2, v4

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v4

    invoke-static {v1, v4}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 111
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final doubleValue()D
    .registers 5

    .prologue
    .line 19
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    iget-object v2, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .registers 5

    .prologue
    .line 29
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 73
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_b

    .line 74
    check-cast p1, Lgnu/math/DQuantity;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/DQuantity;->times(Lgnu/math/DQuantity;Lgnu/math/DQuantity;)Lgnu/math/DQuantity;

    move-result-object v0

    .line 79
    :goto_a
    return-object v0

    .line 75
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_22

    .line 76
    new-instance v0, Lgnu/math/DQuantity;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    goto :goto_a

    .line 77
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_22
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_2c

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_2c
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_a
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 84
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_17

    .line 85
    new-instance v0, Lgnu/math/DQuantity;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DQuantity;->factor:D

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lgnu/math/DQuantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 86
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final number()Lgnu/math/Complex;
    .registers 5

    .prologue
    .line 16
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final re()Lgnu/math/RealNum;
    .registers 5

    .prologue
    .line 18
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DQuantity;->factor:D

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
    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    .line 129
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    .line 130
    return-void
.end method

.method public final unit()Lgnu/math/Unit;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

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
    .line 121
    iget-wide v0, p0, Lgnu/math/DQuantity;->factor:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 122
    iget-object v0, p0, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
