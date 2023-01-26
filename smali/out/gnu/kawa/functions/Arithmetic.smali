.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field static typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeRealNum:Lgnu/kawa/lispexpr/LangObjType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 109
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 110
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 111
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    .line 112
    const-string v0, "gnu.math.Numeric"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 213
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 214
    check-cast p0, Ljava/math/BigDecimal;

    .line 220
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 215
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_14

    .line 216
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_6

    .line 217
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2f

    .line 219
    :cond_24
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_6

    .line 220
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2f
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 183
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    .line 184
    check-cast p0, Ljava/math/BigInteger;

    .line 187
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 185
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_16

    .line 186
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_6

    .line 187
    :cond_16
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_6
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 202
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_7

    .line 203
    check-cast p0, Lgnu/math/IntNum;

    .line 208
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 204
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_16

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 206
    :cond_16
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_21

    .line 207
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 208
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_21
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    .line 238
    .local v0, "n":Lgnu/math/Numeric;
    if-eqz v0, :cond_7

    .end local v0    # "n":Lgnu/math/Numeric;
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object v0

    .restart local v0    # "n":Lgnu/math/Numeric;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    check-cast p0, Lgnu/math/Numeric;

    move-object v0, p0

    goto :goto_6
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 225
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_7

    .line 226
    check-cast p0, Lgnu/math/RatNum;

    .line 232
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 227
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_16

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 229
    :cond_16
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_21

    .line 230
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_6

    .line 232
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_21
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .registers 10
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "kind":I
    instance-of v8, p0, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_33

    .line 120
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    .local v1, "sig":C
    const/16 v8, 0x56

    if-eq v1, v8, :cond_1f

    const/16 v8, 0x5a

    if-eq v1, v8, :cond_1f

    const/16 v8, 0x43

    if-ne v1, v8, :cond_21

    :cond_1f
    move v3, v7

    .line 158
    .end local v1    # "sig":C
    :cond_20
    :goto_20
    return v3

    .line 123
    .restart local v1    # "sig":C
    :cond_21
    const/16 v7, 0x44

    if-eq v1, v7, :cond_20

    .line 125
    const/16 v3, 0x46

    if-ne v1, v3, :cond_2b

    move v3, v4

    .line 126
    goto :goto_20

    .line 127
    :cond_2b
    const/16 v3, 0x4a

    if-ne v1, v3, :cond_31

    move v3, v5

    .line 128
    goto :goto_20

    :cond_31
    move v3, v6

    .line 130
    goto :goto_20

    .line 132
    .end local v1    # "sig":C
    :cond_33
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "tname":Ljava/lang/String;
    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 134
    const/4 v3, 0x4

    goto :goto_20

    .line 135
    :cond_41
    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 136
    const/4 v3, 0x6

    goto :goto_20

    .line 137
    :cond_4b
    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 138
    const/16 v3, 0x9

    goto :goto_20

    .line 139
    :cond_56
    const-string v8, "java.lang.Double"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 141
    const-string v3, "java.lang.Float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    move v3, v4

    .line 142
    goto :goto_20

    .line 143
    :cond_68
    const-string v3, "java.lang.Long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    move v3, v5

    .line 144
    goto :goto_20

    .line 145
    :cond_72
    const-string v3, "java.lang.Integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "java.lang.Short"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "java.lang.Byte"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :cond_8a
    move v3, v6

    .line 148
    goto :goto_20

    .line 149
    :cond_8c
    const-string v3, "java.math.BigInteger"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 150
    const/4 v3, 0x3

    goto :goto_20

    .line 151
    :cond_96
    const-string v3, "java.math.BigDecimal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 152
    const/4 v3, 0x5

    goto :goto_20

    .line 153
    :cond_a0
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 154
    const/16 v3, 0xa

    goto/16 :goto_20

    .line 155
    :cond_ac
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 156
    const/16 v3, 0xb

    goto/16 :goto_20

    :cond_b8
    move v3, v7

    .line 158
    goto/16 :goto_20
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    .line 38
    instance-of v1, p0, Lgnu/math/Numeric;

    if-eqz v1, :cond_22

    .line 40
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_b

    .line 41
    const/4 v0, 0x4

    .line 70
    :cond_a
    :goto_a
    return v0

    .line 42
    :cond_b
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_11

    .line 43
    const/4 v0, 0x6

    goto :goto_a

    .line 44
    :cond_11
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_18

    .line 45
    const/16 v0, 0x9

    goto :goto_a

    .line 46
    :cond_18
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_1f

    .line 47
    const/16 v0, 0xa

    goto :goto_a

    .line 49
    :cond_1f
    const/16 v0, 0xb

    goto :goto_a

    .line 51
    :cond_22
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_a

    .line 53
    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_32

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_32

    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_34

    .line 55
    :cond_32
    const/4 v0, 0x1

    goto :goto_a

    .line 56
    :cond_34
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_3a

    .line 57
    const/4 v0, 0x2

    goto :goto_a

    .line 58
    :cond_3a
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_40

    .line 59
    const/4 v0, 0x7

    goto :goto_a

    .line 60
    :cond_40
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_47

    .line 61
    const/16 v0, 0x8

    goto :goto_a

    .line 62
    :cond_47
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4d

    .line 63
    const/4 v0, 0x3

    goto :goto_a

    .line 64
    :cond_4d
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    .line 65
    const/4 v0, 0x5

    goto :goto_a
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "code"    # I

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_6c

    .line 337
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    :cond_5
    :goto_5
    return-object p0

    .line 285
    .restart local p0    # "value":Ljava/lang/Object;
    :pswitch_6
    instance-of v6, p0, Ljava/lang/Integer;

    if-nez v6, :cond_5

    .line 287
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 289
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5

    .line 294
    .end local v3    # "i":I
    .restart local p0    # "value":Ljava/lang/Object;
    :pswitch_15
    instance-of v6, p0, Ljava/lang/Long;

    if-nez v6, :cond_5

    .line 296
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 298
    .local v4, "l":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_5

    .line 303
    .end local v4    # "l":J
    .restart local p0    # "value":Ljava/lang/Object;
    :pswitch_24
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_5

    .line 305
    :pswitch_29
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_5

    .line 307
    :pswitch_2e
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_5

    .line 309
    :pswitch_33
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_5

    .line 311
    :pswitch_38
    instance-of v6, p0, Ljava/lang/Float;

    if-nez v6, :cond_5

    .line 313
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    .line 315
    .local v2, "f":F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_5

    .line 320
    .end local v2    # "f":F
    :pswitch_45
    instance-of v6, p0, Ljava/lang/Double;

    if-nez v6, :cond_5

    .line 322
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 324
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_5

    .line 329
    .end local v0    # "d":D
    :pswitch_52
    instance-of v6, p0, Lgnu/math/DFloNum;

    if-nez v6, :cond_5

    .line 331
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object p0

    goto :goto_5

    .line 333
    :pswitch_5f
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    goto :goto_5

    .line 335
    :pswitch_64
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    move-object p0, v6

    goto :goto_5

    .line 282
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_15
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_45
        :pswitch_52
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method public static isExact(Ljava/lang/Number;)Z
    .registers 2
    .param p0, "num"    # Ljava/lang/Number;

    .prologue
    .line 343
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_b

    .line 344
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "num":Ljava/lang/Number;
    invoke-virtual {p0}, Lgnu/math/Numeric;->isExact()Z

    move-result v0

    .line 345
    .restart local p0    # "num":Ljava/lang/Number;
    :goto_a
    return v0

    :cond_b
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_19

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_19

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .registers 2
    .param p0, "kind"    # I

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_30

    .line 100
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_5
    return-object v0

    .line 78
    :pswitch_6
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    goto :goto_5

    .line 80
    :pswitch_9
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto :goto_5

    .line 82
    :pswitch_c
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_5

    .line 84
    :pswitch_13
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_5

    .line 86
    :pswitch_16
    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_5

    .line 88
    :pswitch_1d
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_5

    .line 90
    :pswitch_20
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_5

    .line 92
    :pswitch_23
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_5

    .line 94
    :pswitch_26
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_5

    .line 96
    :pswitch_29
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_5

    .line 98
    :pswitch_2c
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 75
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_13
        :pswitch_16
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public static toExact(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3
    .param p0, "num"    # Ljava/lang/Number;

    .prologue
    .line 351
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_b

    .line 352
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "num":Ljava/lang/Number;
    invoke-virtual {p0}, Lgnu/math/Numeric;->toExact()Lgnu/math/Numeric;

    move-result-object p0

    .line 357
    :cond_a
    :goto_a
    return-object p0

    .line 353
    .restart local p0    # "num":Ljava/lang/Number;
    :cond_b
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_17

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_17

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    .line 355
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_a
.end method

.method public static toInexact(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3
    .param p0, "num"    # Ljava/lang/Number;

    .prologue
    .line 362
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_b

    .line 363
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "num":Ljava/lang/Number;
    invoke-virtual {p0}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object p0

    .line 368
    :cond_a
    :goto_a
    return-object p0

    .line 364
    .restart local p0    # "num":Ljava/lang/Number;
    :cond_b
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_a

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_a

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_a

    .line 368
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_a
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 6
    .param p0, "number"    # Ljava/lang/Object;
    .param p1, "radix"    # I

    .prologue
    const/16 v1, 0xa

    .line 247
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "code":I
    packed-switch v0, :pswitch_data_58

    .line 272
    :cond_9
    :pswitch_9
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1

    .line 251
    :pswitch_12
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 253
    :pswitch_1b
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 255
    :pswitch_24
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 257
    :pswitch_2d
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 259
    :pswitch_36
    if-ne p1, v1, :cond_41

    .line 260
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 263
    :cond_41
    :pswitch_41
    if-ne p1, v1, :cond_4c

    .line 264
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 268
    :cond_4c
    :pswitch_4c
    if-ne p1, v1, :cond_9

    .line 269
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 248
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1b
        :pswitch_24
        :pswitch_2d
        :pswitch_36
        :pswitch_9
        :pswitch_41
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method
