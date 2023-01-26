.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/MultiplyOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forMul"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    .line 39
    .local v22, "len":I
    if-nez v22, :cond_c

    .line 40
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v23

    .line 99
    :cond_b
    return-object v23

    .line 41
    :cond_c
    const/16 v24, 0x0

    aget-object v23, p1, v24

    check-cast v23, Ljava/lang/Number;

    .line 42
    .local v23, "result":Ljava/lang/Number;
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v7

    .line 43
    .local v7, "code":I
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_17
    move/from16 v0, v22

    if-ge v15, v0, :cond_b

    .line 45
    aget-object v2, p1, v15

    .line 46
    .local v2, "arg2":Ljava/lang/Object;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v8

    .line 47
    .local v8, "code2":I
    if-ge v7, v8, :cond_24

    move v7, v8

    .line 49
    :cond_24
    packed-switch v7, :pswitch_data_bc

    .line 95
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v23

    .line 43
    :goto_33
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 52
    :pswitch_36
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v16

    .line 53
    .local v16, "i1":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v17

    .line 54
    .local v17, "i2":I
    new-instance v23, Ljava/lang/Integer;

    .end local v23    # "result":Ljava/lang/Number;
    mul-int v24, v16, v17

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    .line 55
    .restart local v23    # "result":Ljava/lang/Number;
    goto :goto_33

    .line 57
    .end local v16    # "i1":I
    .end local v17    # "i2":I
    :pswitch_46
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v18

    .line 58
    .local v18, "l1":J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v20

    .line 59
    .local v20, "l2":J
    new-instance v23, Ljava/lang/Long;

    .end local v23    # "result":Ljava/lang/Number;
    mul-long v24, v18, v20

    invoke-direct/range {v23 .. v25}, Ljava/lang/Long;-><init>(J)V

    .line 60
    .restart local v23    # "result":Ljava/lang/Number;
    goto :goto_33

    .line 62
    .end local v18    # "l1":J
    .end local v20    # "l2":J
    :pswitch_56
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    .line 63
    .local v5, "bi1":Ljava/math/BigInteger;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    .local v6, "bi2":Ljava/math/BigInteger;
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 65
    goto :goto_33

    .line 67
    .end local v5    # "bi1":Ljava/math/BigInteger;
    .end local v6    # "bi2":Ljava/math/BigInteger;
    :pswitch_63
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v23

    .line 69
    goto :goto_33

    .line 71
    :pswitch_70
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 72
    .local v3, "bd1":Ljava/math/BigDecimal;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 73
    .local v4, "bd2":Ljava/math/BigDecimal;
    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 74
    goto :goto_33

    .line 76
    .end local v3    # "bd1":Ljava/math/BigDecimal;
    .end local v4    # "bd2":Ljava/math/BigDecimal;
    :pswitch_7d
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v23

    .line 78
    goto :goto_33

    .line 80
    :pswitch_8a
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v9

    .line 81
    .local v9, "f1":F
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v14

    .line 82
    .local v14, "f2":F
    new-instance v23, Ljava/lang/Float;

    .end local v23    # "result":Ljava/lang/Number;
    mul-float v24, v9, v14

    invoke-direct/range {v23 .. v24}, Ljava/lang/Float;-><init>(F)V

    .line 83
    .restart local v23    # "result":Ljava/lang/Number;
    goto :goto_33

    .line 85
    .end local v9    # "f1":F
    .end local v14    # "f2":F
    :pswitch_9a
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 86
    .local v10, "d1":D
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 87
    .local v12, "d2":D
    new-instance v23, Ljava/lang/Double;

    .end local v23    # "result":Ljava/lang/Number;
    mul-double v24, v10, v12

    invoke-direct/range {v23 .. v25}, Ljava/lang/Double;-><init>(D)V

    .line 88
    .restart local v23    # "result":Ljava/lang/Number;
    goto :goto_33

    .line 90
    .end local v10    # "d1":D
    .end local v12    # "d2":D
    :pswitch_aa
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 91
    .restart local v10    # "d1":D
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 92
    .restart local v12    # "d2":D
    new-instance v23, Lgnu/math/DFloNum;

    .end local v23    # "result":Ljava/lang/Number;
    mul-double v24, v10, v12

    invoke-direct/range {v23 .. v25}, Lgnu/math/DFloNum;-><init>(D)V

    .line 93
    .restart local v23    # "result":Ljava/lang/Number;
    goto/16 :goto_33

    .line 49
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_36
        :pswitch_46
        :pswitch_56
        :pswitch_63
        :pswitch_70
        :pswitch_7d
        :pswitch_8a
        :pswitch_9a
        :pswitch_aa
    .end packed-switch
.end method

.method public defaultResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
