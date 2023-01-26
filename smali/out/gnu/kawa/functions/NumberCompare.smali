.class public Lgnu/kawa/functions/NumberCompare;
.super Lgnu/mapping/ProcedureN;
.source "NumberCompare.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field public static final TRUE_IF_EQU:I = 0x8

.field public static final TRUE_IF_GRT:I = 0x10

.field public static final TRUE_IF_LSS:I = 0x4

.field public static final TRUE_IF_NAN:I = 0x2

.field public static final TRUE_IF_NEQ:I = 0x1


# instance fields
.field flags:I

.field language:Lgnu/expr/Language;


# direct methods
.method public static $Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 33
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, p3

    if-eqz v1, :cond_20

    aget-object v1, p3, v0

    invoke-static {p2, v1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0x8

    invoke-static {v1, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static $Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 38
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 43
    const/16 v0, 0x18

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, p3

    if-eqz v1, :cond_20

    aget-object v1, p3, v0

    invoke-static {p2, v1}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0x18

    invoke-static {v1, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static $Gr$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, p3

    if-eqz v1, :cond_20

    aget-object v1, p3, v0

    invoke-static {p2, v1}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0x10

    invoke-static {v1, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static $Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 53
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    array-length v1, p3

    if-eqz v1, :cond_20

    aget-object v1, p3, v0

    invoke-static {p2, v1}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0xc

    invoke-static {v1, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static $Ls$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    array-length v1, p3

    if-eqz v1, :cond_1f

    aget-object v1, p3, v0

    invoke-static {p2, v1}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x4

    invoke-static {v1, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    shl-int v1, v0, v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static applyN(I[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "flags"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_17

    .line 223
    aget-object v0, p1, v2

    .line 224
    .local v0, "arg1":Ljava/lang/Object;
    add-int/lit8 v3, v2, 0x1

    aget-object v1, p1, v3

    .line 225
    .local v1, "arg2":Ljava/lang/Object;
    invoke-static {p0, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 226
    const/4 v3, 0x0

    .line 228
    .end local v0    # "arg1":Ljava/lang/Object;
    .end local v1    # "arg2":Ljava/lang/Object;
    :goto_13
    return v3

    .line 221
    .restart local v0    # "arg1":Ljava/lang/Object;
    .restart local v1    # "arg2":Ljava/lang/Object;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "arg1":Ljava/lang/Object;
    .end local v1    # "arg2":Ljava/lang/Object;
    :cond_17
    const/4 v3, 0x1

    goto :goto_13
.end method

.method public static applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v0

    return v0
.end method

.method public static checkCompareCode(II)Z
    .registers 4
    .param p0, "code"    # I
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 126
    add-int/lit8 v1, p0, 0x3

    shl-int v1, v0, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static classify(Lgnu/expr/Expression;)I
    .registers 6
    .param p0, "exp"    # Lgnu/expr/Expression;

    .prologue
    .line 348
    invoke-virtual {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 349
    .local v2, "type":Lgnu/bytecode/Type;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v1

    .line 351
    .local v1, "kind":I
    const/4 v4, 0x4

    if-ne v1, v4, :cond_24

    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_24

    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0    # "exp":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/math/IntNum;

    if-eqz v4, :cond_24

    .line 354
    check-cast v3, Lgnu/math/IntNum;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/math/IntNum;->intLength()I

    move-result v0

    .line 355
    .local v0, "ilength":I
    const/16 v4, 0x20

    if-ge v0, v4, :cond_25

    .line 356
    const/4 v1, 0x1

    .line 360
    .end local v0    # "ilength":I
    .end local v1    # "kind":I
    :cond_24
    :goto_24
    return v1

    .line 357
    .restart local v0    # "ilength":I
    .restart local v1    # "kind":I
    :cond_25
    const/16 v4, 0x40

    if-ge v0, v4, :cond_24

    .line 358
    const/4 v1, 0x2

    goto :goto_24
.end method

.method public static compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I
    .registers 29
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "code1"    # I
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "code2"    # I
    .param p4, "exact"    # Z

    .prologue
    .line 152
    if-ltz p1, :cond_4

    if-gez p3, :cond_6

    .line 153
    :cond_4
    const/4 v7, -0x3

    .line 214
    :goto_5
    return v7

    .line 154
    :cond_6
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_1e

    move/from16 v6, p3

    .line 156
    .local v6, "code":I
    :goto_e
    packed-switch v6, :pswitch_data_dc

    .line 210
    :cond_11
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v20

    .line 211
    .local v20, "num1":Lgnu/math/Numeric;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v21

    .line 212
    .local v21, "num2":Lgnu/math/Numeric;
    invoke-virtual/range {v20 .. v21}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v7

    .local v7, "comp":I
    goto :goto_5

    .end local v6    # "code":I
    .end local v7    # "comp":I
    .end local v20    # "num1":Lgnu/math/Numeric;
    .end local v21    # "num2":Lgnu/math/Numeric;
    :cond_1e
    move/from16 v6, p1

    .line 154
    goto :goto_e

    .line 159
    .restart local v6    # "code":I
    :pswitch_21
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v14

    .line 160
    .local v14, "i1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v15

    .line 161
    .local v15, "i2":I
    if-ge v14, v15, :cond_2d

    const/4 v7, -0x1

    .line 162
    .restart local v7    # "comp":I
    :goto_2c
    goto :goto_5

    .line 161
    .end local v7    # "comp":I
    :cond_2d
    if-le v14, v15, :cond_31

    const/4 v7, 0x1

    goto :goto_2c

    :cond_31
    const/4 v7, 0x0

    goto :goto_2c

    .line 164
    .end local v14    # "i1":I
    .end local v15    # "i2":I
    :pswitch_33
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 165
    .local v16, "l1":J
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v18

    .line 166
    .local v18, "l2":J
    cmp-long v22, v16, v18

    if-gez v22, :cond_41

    const/4 v7, -0x1

    .line 167
    .restart local v7    # "comp":I
    :goto_40
    goto :goto_5

    .line 166
    .end local v7    # "comp":I
    :cond_41
    cmp-long v22, v16, v18

    if-lez v22, :cond_47

    const/4 v7, 0x1

    goto :goto_40

    :cond_47
    const/4 v7, 0x0

    goto :goto_40

    .line 169
    .end local v16    # "l1":J
    .end local v18    # "l2":J
    :pswitch_49
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v4

    .line 170
    .local v4, "bi1":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    .line 171
    .local v5, "bi2":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    .line 172
    .restart local v7    # "comp":I
    goto :goto_5

    .line 174
    .end local v4    # "bi1":Ljava/math/BigInteger;
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v7    # "comp":I
    :pswitch_56
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v7

    .line 176
    .restart local v7    # "comp":I
    goto :goto_5

    .line 178
    .end local v7    # "comp":I
    :pswitch_63
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 179
    .local v2, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 180
    .local v3, "bd2":Ljava/math/BigDecimal;
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v7

    .line 181
    .restart local v7    # "comp":I
    goto :goto_5

    .line 183
    .end local v2    # "bd1":Ljava/math/BigDecimal;
    .end local v3    # "bd2":Ljava/math/BigDecimal;
    .end local v7    # "comp":I
    :pswitch_70
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v7

    .line 185
    .restart local v7    # "comp":I
    goto :goto_5

    .line 187
    .end local v7    # "comp":I
    :pswitch_7d
    if-eqz p4, :cond_8f

    const/16 v22, 0x6

    move/from16 v0, p1

    move/from16 v1, v22

    if-le v0, v1, :cond_ac

    const/16 v22, 0x6

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_ac

    .line 191
    :cond_8f
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v12

    .line 192
    .local v12, "f1":F
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v13

    .line 193
    .local v13, "f2":F
    cmpl-float v22, v12, v13

    if-lez v22, :cond_9e

    const/4 v7, 0x1

    .line 194
    .restart local v7    # "comp":I
    :goto_9c
    goto/16 :goto_5

    .line 193
    .end local v7    # "comp":I
    :cond_9e
    cmpg-float v22, v12, v13

    if-gez v22, :cond_a4

    const/4 v7, -0x1

    goto :goto_9c

    :cond_a4
    cmpl-float v22, v12, v13

    if-nez v22, :cond_aa

    const/4 v7, 0x0

    goto :goto_9c

    :cond_aa
    const/4 v7, -0x2

    goto :goto_9c

    .line 199
    .end local v12    # "f1":F
    .end local v13    # "f2":F
    :cond_ac
    :pswitch_ac
    if-eqz p4, :cond_be

    const/16 v22, 0x6

    move/from16 v0, p1

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    const/16 v22, 0x6

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 203
    :cond_be
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v8

    .line 204
    .local v8, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 205
    .local v10, "d2":D
    cmpl-double v22, v8, v10

    if-lez v22, :cond_cd

    const/4 v7, 0x1

    .line 206
    .restart local v7    # "comp":I
    :goto_cb
    goto/16 :goto_5

    .line 205
    .end local v7    # "comp":I
    :cond_cd
    cmpg-double v22, v8, v10

    if-gez v22, :cond_d3

    const/4 v7, -0x1

    goto :goto_cb

    :cond_d3
    cmpl-double v22, v8, v10

    if-nez v22, :cond_d9

    const/4 v7, 0x0

    goto :goto_cb

    :cond_d9
    const/4 v7, -0x2

    goto :goto_cb

    .line 156
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_21
        :pswitch_33
        :pswitch_49
        :pswitch_56
        :pswitch_63
        :pswitch_70
        :pswitch_7d
        :pswitch_ac
        :pswitch_ac
    .end packed-switch
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "exact"    # Z

    .prologue
    .line 143
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "code1":I
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 145
    .local v1, "code2":I
    invoke-static {p0, v0, p1, v1, p2}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v2

    return v2
.end method

.method public static make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;
    .registers 6
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 100
    new-instance v0, Lgnu/kawa/functions/NumberCompare;

    invoke-direct {v0}, Lgnu/kawa/functions/NumberCompare;-><init>()V

    .line 101
    .local v0, "proc":Lgnu/kawa/functions/NumberCompare;
    iput-object p0, v0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    .line 102
    invoke-virtual {v0, p1}, Lgnu/kawa/functions/NumberCompare;->setName(Ljava/lang/String;)V

    .line 103
    iput p2, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 104
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1, p2}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 235
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 28
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 241
    .local v7, "args":[Lgnu/expr/Expression;
    array-length v0, v7

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1dc

    .line 243
    const/16 v22, 0x0

    aget-object v5, v7, v22

    .line 244
    .local v5, "arg0":Lgnu/expr/Expression;
    const/16 v22, 0x1

    aget-object v6, v7, v22

    .line 245
    .local v6, "arg1":Lgnu/expr/Expression;
    invoke-static {v5}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v14

    .line 246
    .local v14, "kind0":I
    invoke-static {v6}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v15

    .line 247
    .local v15, "kind1":I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    .line 248
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    if-lez v14, :cond_1dc

    if-lez v15, :cond_1dc

    const/16 v22, 0xa

    move/from16 v0, v22

    if-gt v14, v0, :cond_1dc

    const/16 v22, 0xa

    move/from16 v0, v22

    if-gt v15, v0, :cond_1dc

    const/16 v22, 0x6

    move/from16 v0, v22

    if-ne v14, v0, :cond_3f

    const/16 v22, 0x6

    move/from16 v0, v22

    if-eq v15, v0, :cond_1dc

    .line 253
    :cond_3f
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move/from16 v22, v0

    if-nez v22, :cond_59

    .line 255
    sget-object v22, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    sget-object v23, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 344
    .end local v5    # "arg0":Lgnu/expr/Expression;
    .end local v6    # "arg1":Lgnu/expr/Expression;
    .end local v9    # "code":Lgnu/bytecode/CodeAttr;
    .end local v14    # "kind0":I
    .end local v15    # "kind1":I
    :goto_58
    return-void

    .line 259
    .restart local v5    # "arg0":Lgnu/expr/Expression;
    .restart local v6    # "arg1":Lgnu/expr/Expression;
    .restart local v9    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v14    # "kind0":I
    .restart local v15    # "kind1":I
    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    move/from16 v17, v0

    .line 260
    .local v17, "mask":I
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_69

    .line 261
    const/16 v17, 0x14

    .line 262
    :cond_69
    const/16 v22, 0x4

    move/from16 v0, v22

    if-gt v14, v0, :cond_bc

    const/16 v22, 0x4

    move/from16 v0, v22

    if-gt v15, v0, :cond_bc

    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v14, v0, :cond_81

    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v15, v0, :cond_bc

    .line 265
    :cond_81
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v13, v0, [Lgnu/bytecode/Type;

    .line 266
    .local v13, "ctypes":[Lgnu/bytecode/Type;
    const/16 v22, 0x0

    sget-object v23, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v23, v13, v22

    .line 267
    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v15, v0, :cond_14c

    .line 269
    const/16 v22, 0x1

    sget-object v23, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v23, v13, v22

    .line 287
    :cond_99
    :goto_99
    sget-object v22, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v23, "compare"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lgnu/kawa/lispexpr/LangObjType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    .line 289
    .local v8, "cmeth":Lgnu/bytecode/Method;
    new-instance v11, Lgnu/expr/PrimProcedure;

    invoke-direct {v11, v8}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 290
    .local v11, "compare":Lgnu/expr/PrimProcedure;
    new-instance v5, Lgnu/expr/ApplyExp;

    .end local v5    # "arg0":Lgnu/expr/Expression;
    invoke-direct {v5, v11, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 291
    .restart local v5    # "arg0":Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/QuoteExp;

    .end local v6    # "arg1":Lgnu/expr/Expression;
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 292
    .restart local v6    # "arg1":Lgnu/expr/Expression;
    const/4 v15, 0x1

    move v14, v15

    .line 295
    .end local v8    # "cmeth":Lgnu/bytecode/Method;
    .end local v11    # "compare":Lgnu/expr/PrimProcedure;
    .end local v13    # "ctypes":[Lgnu/bytecode/Type;
    :cond_bc
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v14, v0, :cond_19a

    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v15, v0, :cond_19a

    .line 296
    sget-object v10, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 301
    .local v10, "commonType":Lgnu/bytecode/Type;
    :goto_ca
    new-instance v19, Lgnu/expr/StackTarget;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .local v19, "subTarget":Lgnu/expr/StackTarget;
    move-object/from16 v12, p3

    .line 302
    check-cast v12, Lgnu/expr/ConditionalTarget;

    .line 305
    .local v12, "ctarget":Lgnu/expr/ConditionalTarget;
    instance-of v0, v5, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_f8

    instance-of v0, v6, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_f8

    .line 307
    move-object/from16 v20, v6

    .local v20, "tmp":Lgnu/expr/Expression;
    move-object v6, v5

    move-object/from16 v5, v20

    .line 308
    const/16 v22, 0x8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_f8

    const/16 v22, 0x14

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_f8

    .line 309
    xor-int/lit8 v17, v17, 0x14

    .line 311
    .end local v20    # "tmp":Lgnu/expr/Expression;
    :cond_f8
    iget-boolean v0, v12, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ae

    iget-object v0, v12, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    .line 312
    .local v16, "label1":Lgnu/bytecode/Label;
    :goto_102
    iget-boolean v0, v12, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10a

    .line 313
    xor-int/lit8 v17, v17, 0x1c

    .line 314
    :cond_10a
    sparse-switch v17, :sswitch_data_1e2

    .line 323
    const/16 v18, 0x0

    .line 325
    .local v18, "opcode":I
    :goto_10f
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 327
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v14, v0, :cond_1cc

    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v15, v0, :cond_1cc

    instance-of v0, v6, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_1cc

    move-object/from16 v22, v6

    check-cast v22, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    .local v21, "value":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v22, v0

    if-eqz v22, :cond_1cc

    check-cast v21, Lgnu/math/IntNum;

    .end local v21    # "value":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Lgnu/math/IntNum;->isZero()Z

    move-result v22

    if-eqz v22, :cond_1cc

    .line 332
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 339
    :goto_147
    invoke-virtual {v12, v9}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    goto/16 :goto_58

    .line 271
    .end local v10    # "commonType":Lgnu/bytecode/Type;
    .end local v12    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v16    # "label1":Lgnu/bytecode/Label;
    .end local v18    # "opcode":I
    .end local v19    # "subTarget":Lgnu/expr/StackTarget;
    .restart local v13    # "ctypes":[Lgnu/bytecode/Type;
    :cond_14c
    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v14, v0, :cond_192

    instance-of v0, v5, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_16a

    instance-of v0, v6, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_16a

    instance-of v0, v5, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-nez v22, :cond_16a

    instance-of v0, v6, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-eqz v22, :cond_192

    .line 278
    :cond_16a
    const/16 v22, 0x1

    sget-object v23, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v23, v13, v22

    .line 279
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v7, v0, [Lgnu/expr/Expression;

    .line 280
    const/16 v22, 0x0

    aput-object v6, v7, v22

    .line 281
    const/16 v22, 0x1

    aput-object v5, v7, v22

    .line 282
    const/16 v22, 0x8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_99

    const/16 v22, 0x14

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_99

    .line 283
    xor-int/lit8 v17, v17, 0x14

    goto/16 :goto_99

    .line 286
    :cond_192
    const/16 v22, 0x1

    sget-object v23, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v23, v13, v22

    goto/16 :goto_99

    .line 297
    .end local v13    # "ctypes":[Lgnu/bytecode/Type;
    :cond_19a
    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v14, v0, :cond_1aa

    const/16 v22, 0x2

    move/from16 v0, v22

    if-gt v15, v0, :cond_1aa

    .line 298
    sget-object v10, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .restart local v10    # "commonType":Lgnu/bytecode/Type;
    goto/16 :goto_ca

    .line 300
    .end local v10    # "commonType":Lgnu/bytecode/Type;
    :cond_1aa
    sget-object v10, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .restart local v10    # "commonType":Lgnu/bytecode/Type;
    goto/16 :goto_ca

    .line 311
    .restart local v12    # "ctarget":Lgnu/expr/ConditionalTarget;
    .restart local v19    # "subTarget":Lgnu/expr/StackTarget;
    :cond_1ae
    iget-object v0, v12, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    goto/16 :goto_102

    .line 316
    .restart local v16    # "label1":Lgnu/bytecode/Label;
    :sswitch_1b4
    const/16 v18, 0x9d

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 317
    .end local v18    # "opcode":I
    :sswitch_1b8
    const/16 v18, 0x99

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 318
    .end local v18    # "opcode":I
    :sswitch_1bc
    const/16 v18, 0x9b

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 319
    .end local v18    # "opcode":I
    :sswitch_1c0
    const/16 v18, 0x9a

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 320
    .end local v18    # "opcode":I
    :sswitch_1c4
    const/16 v18, 0x9c

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 321
    .end local v18    # "opcode":I
    :sswitch_1c8
    const/16 v18, 0x9e

    .restart local v18    # "opcode":I
    goto/16 :goto_10f

    .line 336
    :cond_1cc
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 337
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    goto/16 :goto_147

    .line 343
    .end local v5    # "arg0":Lgnu/expr/Expression;
    .end local v6    # "arg1":Lgnu/expr/Expression;
    .end local v9    # "code":Lgnu/bytecode/CodeAttr;
    .end local v10    # "commonType":Lgnu/bytecode/Type;
    .end local v12    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v14    # "kind0":I
    .end local v15    # "kind1":I
    .end local v16    # "label1":Lgnu/bytecode/Label;
    .end local v17    # "mask":I
    .end local v18    # "opcode":I
    .end local v19    # "subTarget":Lgnu/expr/StackTarget;
    :cond_1dc
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_58

    .line 314
    nop

    :sswitch_data_1e2
    .sparse-switch
        0x4 -> :sswitch_1bc
        0x8 -> :sswitch_1b8
        0xc -> :sswitch_1c8
        0x10 -> :sswitch_1b4
        0x14 -> :sswitch_1c0
        0x18 -> :sswitch_1c4
    .end sparse-switch
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 365
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method public numArgs()I
    .registers 2

    .prologue
    .line 29
    const/16 v0, -0xffe

    return v0
.end method
