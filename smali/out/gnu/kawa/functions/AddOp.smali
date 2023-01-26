.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "code":I
    packed-switch v0, :pswitch_data_6c

    .line 119
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    :goto_f
    return-object v1

    .line 101
    :pswitch_10
    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_f

    .line 103
    :pswitch_1b
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_f

    .line 105
    :pswitch_26
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_f

    .line 107
    :pswitch_2f
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_f

    .line 109
    :pswitch_38
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f

    .line 111
    :pswitch_41
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_f

    .line 113
    :pswitch_4a
    new-instance v1, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_f

    .line 115
    :pswitch_55
    new-instance v1, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_f

    .line 117
    :pswitch_60
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_f

    .line 98
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1b
        :pswitch_26
        :pswitch_2f
        :pswitch_38
        :pswitch_41
        :pswitch_4a
        :pswitch_55
        :pswitch_60
    .end packed-switch
.end method

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 133
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plusOrMinus"    # I

    .prologue
    const/4 v2, 0x1

    .line 20
    if-lez p2, :cond_1c

    move v1, v2

    :goto_4
    invoke-direct {p0, p1, v1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 16
    iput v2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 21
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 22
    if-lez p2, :cond_1e

    const-string v0, "gnu.kawa.functions.CompileArith:$Pl"

    .line 25
    .local v0, "compiler":Ljava/lang/String;
    :goto_f
    sget-object v1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void

    .line 20
    .end local v0    # "compiler":Ljava/lang/String;
    :cond_1c
    const/4 v1, 0x2

    goto :goto_4

    .line 22
    :cond_1e
    const-string v0, "gnu.kawa.functions.CompileArith:$Mn"

    goto :goto_f
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p0, "plusOrMinus"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v9

    .line 36
    .local v9, "code1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v10

    .line 41
    .local v10, "code2":I
    if-ge v9, v10, :cond_21

    move v8, v10

    .line 42
    .local v8, "code":I
    :goto_b
    packed-switch v8, :pswitch_data_ea

    .line 79
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v19

    .line 80
    .local v19, "num1":Lgnu/math/Numeric;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    .line 81
    .local v24, "num2":Lgnu/math/Numeric;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v25

    .end local v19    # "num1":Lgnu/math/Numeric;
    .end local v24    # "num2":Lgnu/math/Numeric;
    :goto_20
    return-object v25

    .end local v8    # "code":I
    :cond_21
    move v8, v9

    .line 41
    goto :goto_b

    .line 45
    .restart local v8    # "code":I
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v17

    .line 46
    .local v17, "i1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v18

    .line 47
    .local v18, "i2":I
    new-instance v26, Ljava/lang/Integer;

    if-lez p0, :cond_3b

    add-int v25, v17, v18

    :goto_31
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v25, v26

    goto :goto_20

    :cond_3b
    sub-int v25, v17, v18

    goto :goto_31

    .line 49
    .end local v17    # "i1":I
    .end local v18    # "i2":I
    :pswitch_3e
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v20

    .line 50
    .local v20, "l1":J
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v22

    .line 51
    .local v22, "l2":J
    new-instance v25, Ljava/lang/Long;

    if-lez p0, :cond_50

    add-long v26, v20, v22

    :goto_4c
    invoke-direct/range {v25 .. v27}, Ljava/lang/Long;-><init>(J)V

    goto :goto_20

    :cond_50
    sub-long v26, v20, v22

    goto :goto_4c

    .line 53
    .end local v20    # "l1":J
    .end local v22    # "l2":J
    :pswitch_53
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    .line 54
    .local v6, "bi1":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v7

    .line 55
    .local v7, "bi2":Ljava/math/BigInteger;
    if-lez p0, :cond_62

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    goto :goto_20

    :cond_62
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    goto :goto_20

    .line 57
    .end local v6    # "bi1":Ljava/math/BigInteger;
    .end local v7    # "bi2":Ljava/math/BigInteger;
    :pswitch_67
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v25

    goto :goto_20

    .line 60
    :pswitch_7a
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 61
    .local v4, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 62
    .local v5, "bd2":Ljava/math/BigDecimal;
    if-lez p0, :cond_89

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v25

    goto :goto_20

    :cond_89
    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v25

    goto :goto_20

    .line 64
    .end local v4    # "bd1":Ljava/math/BigDecimal;
    .end local v5    # "bd2":Ljava/math/BigDecimal;
    :pswitch_8e
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v25

    goto :goto_20

    .line 67
    :pswitch_a1
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v11

    .line 68
    .local v11, "f1":F
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v16

    .line 69
    .local v16, "f2":F
    new-instance v26, Ljava/lang/Float;

    if-lez p0, :cond_ba

    add-float v25, v11, v16

    :goto_af
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v25, v26

    goto/16 :goto_20

    :cond_ba
    sub-float v25, v11, v16

    goto :goto_af

    .line 71
    .end local v11    # "f1":F
    .end local v16    # "f2":F
    :pswitch_bd
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 72
    .local v12, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v14

    .line 73
    .local v14, "d2":D
    new-instance v25, Ljava/lang/Double;

    if-lez p0, :cond_d0

    add-double v26, v12, v14

    :goto_cb
    invoke-direct/range {v25 .. v27}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_20

    :cond_d0
    sub-double v26, v12, v14

    goto :goto_cb

    .line 75
    .end local v12    # "d1":D
    .end local v14    # "d2":D
    :pswitch_d3
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 76
    .restart local v12    # "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v14

    .line 77
    .restart local v14    # "d2":D
    new-instance v25, Lgnu/math/DFloNum;

    if-lez p0, :cond_e6

    add-double v26, v12, v14

    :goto_e1
    invoke-direct/range {v25 .. v27}, Lgnu/math/DFloNum;-><init>(D)V

    goto/16 :goto_20

    :cond_e6
    sub-double v26, v12, v14

    goto :goto_e1

    .line 42
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_23
        :pswitch_3e
        :pswitch_53
        :pswitch_67
        :pswitch_7a
        :pswitch_8e
        :pswitch_a1
        :pswitch_bd
        :pswitch_d3
    .end packed-switch
.end method

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "plusOrMinus"    # I
    .param p1, "init"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 151
    array-length v1, p2

    .line 152
    .local v1, "len":I
    move-object v2, p1

    .line 153
    .local v2, "result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 154
    aget-object v3, p2, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 155
    :cond_e
    return-object v2
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "plusOrMinus"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 138
    array-length v1, p1

    .line 139
    .local v1, "len":I
    if-nez v1, :cond_8

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    .line 146
    :cond_7
    :goto_7
    return-object v2

    .line 141
    :cond_8
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 142
    .local v2, "result":Ljava/lang/Object;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    if-gez p0, :cond_15

    .line 143
    invoke-static {v2}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    .line 144
    :cond_15
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_16
    if-ge v0, v1, :cond_7

    .line 145
    aget-object v3, p1, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 160
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
