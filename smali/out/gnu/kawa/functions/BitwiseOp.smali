.class public Lgnu/kawa/functions/BitwiseOp;
.super Lgnu/kawa/functions/ArithOp;
.source "BitwiseOp.java"


# static fields
.field public static final and:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashift:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftl:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftr:Lgnu/kawa/functions/BitwiseOp;

.field public static final ior:Lgnu/kawa/functions/BitwiseOp;

.field public static final not:Lgnu/kawa/functions/BitwiseOp;

.field public static final xor:Lgnu/kawa/functions/BitwiseOp;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-and"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->and:Lgnu/kawa/functions/BitwiseOp;

    .line 15
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-ior"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ior:Lgnu/kawa/functions/BitwiseOp;

    .line 17
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-xor"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    .line 19
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashift:Lgnu/kawa/functions/BitwiseOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift-left"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift-right"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-not"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->not:Lgnu/kawa/functions/BitwiseOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/BitwiseOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forBitwise"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static checkNonNegativeShift(Lgnu/mapping/Procedure;I)I
    .registers 6
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "amount"    # I

    .prologue
    .line 120
    if-gez p1, :cond_f

    .line 121
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "non-negative integer"

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_f
    return p1
.end method

.method public static shiftLeft(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Lgnu/math/IntNum;
    .param p1, "count"    # I

    .prologue
    .line 128
    sget-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    invoke-static {v0, p1}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static shiftRight(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Lgnu/math/IntNum;
    .param p1, "count"    # I

    .prologue
    .line 133
    sget-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    invoke-static {v0, p1}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v0

    neg-int v0, v0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;
    .registers 5
    .param p1, "value"    # Lgnu/math/IntNum;
    .param p2, "code"    # I

    .prologue
    .line 46
    packed-switch p2, :pswitch_data_22

    .line 55
    .end local p1    # "value":Lgnu/math/IntNum;
    :goto_3
    return-object p1

    .line 49
    .restart local p1    # "value":Lgnu/math/IntNum;
    :pswitch_4
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 51
    :pswitch_d
    invoke-virtual {p1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    .line 53
    :pswitch_16
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_3

    .line 46
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_4
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget v2, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_17

    .line 63
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "code1":I
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    .line 65
    .local v1, "iarg1":Lgnu/math/IntNum;
    invoke-static {v1}, Lgnu/math/BitOps;->not(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v2

    .line 68
    .end local v0    # "code1":I
    .end local v1    # "iarg1":Lgnu/math/IntNum;
    :goto_16
    return-object v2

    :cond_17
    invoke-virtual {p0}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_16
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0xb

    .line 73
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    .line 74
    .local v4, "kind1":I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 75
    .local v5, "kind2":I
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_16

    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v8, 0xc

    if-le v7, v8, :cond_1c

    :cond_16
    if-lez v4, :cond_1c

    if-le v4, v5, :cond_30

    if-lez v5, :cond_30

    :cond_1c
    move v3, v4

    .line 76
    .local v3, "kind":I
    :goto_1d
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    .line 77
    .local v1, "iarg1":Lgnu/math/IntNum;
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v2

    .line 79
    .local v2, "iarg2":Lgnu/math/IntNum;
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    packed-switch v7, :pswitch_data_60

    .line 97
    :pswitch_2a
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7

    .end local v1    # "iarg1":Lgnu/math/IntNum;
    .end local v2    # "iarg2":Lgnu/math/IntNum;
    .end local v3    # "kind":I
    :cond_30
    move v3, v5

    .line 75
    goto :goto_1d

    .line 81
    .restart local v1    # "iarg1":Lgnu/math/IntNum;
    .restart local v2    # "iarg2":Lgnu/math/IntNum;
    .restart local v3    # "kind":I
    :pswitch_32
    invoke-static {v1, v2}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    .line 99
    .local v6, "result":Lgnu/math/IntNum;
    :goto_36
    invoke-virtual {p0, v6, v3}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 82
    .end local v6    # "result":Lgnu/math/IntNum;
    :pswitch_3b
    invoke-static {v1, v2}, Lgnu/math/BitOps;->ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    .restart local v6    # "result":Lgnu/math/IntNum;
    goto :goto_36

    .line 83
    .end local v6    # "result":Lgnu/math/IntNum;
    :pswitch_40
    invoke-static {v1, v2}, Lgnu/math/BitOps;->xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    .restart local v6    # "result":Lgnu/math/IntNum;
    goto :goto_36

    .line 87
    .end local v6    # "result":Lgnu/math/IntNum;
    :pswitch_45
    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    .line 88
    .local v0, "amount":I
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    if-eq v7, v9, :cond_53

    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5b

    .line 90
    :cond_53
    invoke-static {p0, v0}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    .line 91
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    if-ne v7, v9, :cond_5b

    .line 92
    neg-int v0, v0

    .line 94
    :cond_5b
    invoke-static {v1, v0}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v6

    .line 95
    .restart local v6    # "result":Lgnu/math/IntNum;
    goto :goto_36

    .line 79
    :pswitch_data_60
    .packed-switch 0x9
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_2a
        :pswitch_32
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 104
    array-length v0, p1

    .line 105
    .local v0, "alen":I
    if-nez v0, :cond_9

    .line 106
    invoke-virtual {p0}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v2

    .line 114
    :cond_8
    :goto_8
    return-object v2

    .line 107
    :cond_9
    const/4 v3, 0x1

    if-ne v0, v3, :cond_13

    .line 108
    aget-object v3, p1, v4

    invoke-virtual {p0, v3}, Lgnu/kawa/functions/BitwiseOp;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    .line 111
    :cond_13
    aget-object v2, p1, v4

    .line 112
    .local v2, "r":Ljava/lang/Object;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_8

    .line 113
    aget-object v3, p1, v1

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public defaultResult()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 39
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v0

    .line 41
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_a
.end method

.method public numArgs()I
    .registers 3

    .prologue
    .line 138
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_f

    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_f

    .line 139
    const/16 v0, 0x2002

    .line 142
    :goto_e
    return v0

    .line 140
    :cond_f
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 141
    const/16 v0, 0x1001

    goto :goto_e

    .line 142
    :cond_18
    const/16 v0, -0x1000

    goto :goto_e
.end method
