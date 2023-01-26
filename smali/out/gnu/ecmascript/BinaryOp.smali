.class public Lgnu/ecmascript/BinaryOp;
.super Lgnu/mapping/Procedure2;
.source "BinaryOp.java"


# instance fields
.field op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lgnu/ecmascript/BinaryOp;->setName(Ljava/lang/String;)V

    .line 10
    iput p2, p0, Lgnu/ecmascript/BinaryOp;->op:I

    .line 11
    return-void
.end method


# virtual methods
.method public apply(DD)D
    .registers 8
    .param p1, "arg1"    # D
    .param p3, "arg2"    # D

    .prologue
    .line 25
    iget v0, p0, Lgnu/ecmascript/BinaryOp;->op:I

    packed-switch v0, :pswitch_data_18

    .line 32
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_7
    return-wide v0

    .line 27
    :pswitch_8
    add-double v0, p1, p3

    goto :goto_7

    .line 28
    :pswitch_b
    sub-double v0, p1, p3

    goto :goto_7

    .line 29
    :pswitch_e
    mul-double v0, p1, p3

    goto :goto_7

    .line 30
    :pswitch_11
    double-to-int v0, p1

    double-to-int v1, p3

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_7

    .line 25
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 15
    iget v0, p0, Lgnu/ecmascript/BinaryOp;->op:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 17
    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p2}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    :goto_13
    return-object v0

    .line 17
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    .line 20
    :cond_17
    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {p2}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lgnu/ecmascript/BinaryOp;->apply(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_13
.end method
