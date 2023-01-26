.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# static fields
.field private static final numberHierarchy:Ljava/lang/String; = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .prologue
    .line 14
    iget-object v0, p1, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lgnu/bytecode/PrimType;->size:I

    iput v0, p0, Lgnu/bytecode/PrimType;->size:I

    .line 16
    iget-object v0, p1, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object v0, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 5
    .param p1, "nam"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "siz"    # I
    .param p4, "reflectClass"    # Ljava/lang/Class;

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p3, p0, Lgnu/bytecode/PrimType;->size:I

    .line 8
    iput-object p4, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    invoke-static {p4, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 10
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 64
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .registers 10
    .param p0, "type1"    # Lgnu/bytecode/PrimType;
    .param p1, "type2"    # Lgnu/bytecode/PrimType;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v3, -0x3

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 160
    iget-object v6, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "sig1":C
    iget-object v6, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 163
    .local v1, "sig2":C
    if-ne v0, v1, :cond_15

    move v2, v5

    .line 204
    :cond_14
    :goto_14
    return v2

    .line 167
    :cond_15
    const/16 v5, 0x56

    if-ne v0, v5, :cond_1b

    move v2, v4

    .line 168
    goto :goto_14

    .line 169
    :cond_1b
    const/16 v5, 0x56

    if-eq v1, v5, :cond_14

    .line 175
    const/16 v5, 0x5a

    if-eq v0, v5, :cond_27

    const/16 v5, 0x5a

    if-ne v1, v5, :cond_29

    :cond_27
    move v2, v3

    .line 176
    goto :goto_14

    .line 178
    :cond_29
    const/16 v5, 0x43

    if-ne v0, v5, :cond_33

    .line 179
    iget v4, p1, Lgnu/bytecode/PrimType;->size:I

    if-gt v4, v7, :cond_14

    move v2, v3

    goto :goto_14

    .line 180
    :cond_33
    const/16 v5, 0x43

    if-ne v1, v5, :cond_3e

    .line 181
    iget v2, p0, Lgnu/bytecode/PrimType;->size:I

    if-le v2, v7, :cond_3c

    move v3, v4

    :cond_3c
    move v2, v3

    goto :goto_14

    .line 183
    :cond_3e
    const/16 v5, 0x44

    if-ne v0, v5, :cond_44

    move v2, v4

    .line 184
    goto :goto_14

    .line 185
    :cond_44
    const/16 v5, 0x44

    if-eq v1, v5, :cond_14

    .line 187
    const/16 v5, 0x46

    if-ne v0, v5, :cond_4e

    move v2, v4

    .line 188
    goto :goto_14

    .line 189
    :cond_4e
    const/16 v5, 0x46

    if-eq v1, v5, :cond_14

    .line 191
    const/16 v5, 0x4a

    if-ne v0, v5, :cond_58

    move v2, v4

    .line 192
    goto :goto_14

    .line 193
    :cond_58
    const/16 v5, 0x4a

    if-eq v1, v5, :cond_14

    .line 195
    const/16 v5, 0x49

    if-ne v0, v5, :cond_62

    move v2, v4

    .line 196
    goto :goto_14

    .line 197
    :cond_62
    const/16 v5, 0x49

    if-eq v1, v5, :cond_14

    .line 199
    const/16 v5, 0x53

    if-ne v0, v5, :cond_6c

    move v2, v4

    .line 200
    goto :goto_14

    .line 201
    :cond_6c
    const/16 v4, 0x53

    if-eq v1, v4, :cond_14

    move v2, v3

    .line 204
    goto :goto_14
.end method

.method private static findInHierarchy(Ljava/lang/String;)C
    .registers 3
    .param p0, "cname"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v1, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 241
    .local v0, "pos":I
    if-gez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    const-string v1, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b
.end method


# virtual methods
.method public boxedType()Lgnu/bytecode/ClassType;
    .registers 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 71
    .local v1, "sig1":C
    sparse-switch v1, :sswitch_data_2a

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "cname":Ljava/lang/String;
    :goto_d
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    return-object v2

    .line 73
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_12
    const-string v0, "java.lang.Boolean"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 74
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_15
    const-string v0, "java.lang.Character"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 75
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_18
    const-string v0, "java.lang.Byte"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 76
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "java.lang.Short"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 77
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "java.lang.Integer"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 78
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_21
    const-string v0, "java.lang.Long"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 79
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_24
    const-string v0, "java.lang.Float"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 80
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_27
    const-string v0, "java.lang.Double"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_d

    .line 71
    :sswitch_data_2a
    .sparse-switch
        0x42 -> :sswitch_18
        0x43 -> :sswitch_15
        0x44 -> :sswitch_27
        0x46 -> :sswitch_24
        0x49 -> :sswitch_1e
        0x4a -> :sswitch_21
        0x53 -> :sswitch_1b
        0x5a -> :sswitch_12
    .end sparse-switch
.end method

.method public charValue(Ljava/lang/Object;)C
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    .line 34
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_8
    return-object p1

    .line 23
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    :cond_16
    const/16 v0, 0x20

    .line 26
    .local v0, "sig1":C
    :goto_18
    sparse-switch v0, :sswitch_data_a2

    .line 48
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t know how to coerce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    .end local v0    # "sig1":C
    :cond_4a
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    .line 28
    .restart local v0    # "sig1":C
    :sswitch_52
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_8

    .line 29
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_5d
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_8

    .line 30
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_68
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_8

    .line 31
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_73
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_8

    .line 32
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_7e
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_8

    .line 33
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_89
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_8

    .line 34
    .restart local p1    # "obj":Ljava/lang/Object;
    :sswitch_95
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_8

    .line 26
    nop

    :sswitch_data_a2
    .sparse-switch
        0x42 -> :sswitch_52
        0x44 -> :sswitch_89
        0x46 -> :sswitch_7e
        0x49 -> :sswitch_68
        0x4a -> :sswitch_73
        0x53 -> :sswitch_5d
        0x5a -> :sswitch_95
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .registers 11
    .param p1, "other"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x3

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 246
    instance-of v8, p1, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_1e

    .line 251
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    if-eq v4, p1, :cond_17

    .line 252
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v4

    .line 295
    .end local p1    # "other":Lgnu/bytecode/Type;
    :cond_16
    :goto_16
    return v4

    .line 253
    .restart local p1    # "other":Lgnu/bytecode/Type;
    :cond_17
    check-cast p1, Lgnu/bytecode/PrimType;

    .end local p1    # "other":Lgnu/bytecode/Type;
    invoke-static {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result v4

    goto :goto_16

    .line 255
    .restart local p1    # "other":Lgnu/bytecode/Type;
    :cond_1e
    instance-of v8, p1, Lgnu/bytecode/ClassType;

    if-nez v8, :cond_31

    .line 257
    instance-of v4, p1, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_28

    move v4, v7

    .line 258
    goto :goto_16

    .line 260
    :cond_28
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    invoke-static {v4}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v4

    goto :goto_16

    .line 262
    :cond_31
    iget-object v8, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "sig1":C
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "otherName":Ljava/lang/String;
    if-nez v0, :cond_3f

    move v4, v6

    .line 265
    goto :goto_16

    .line 266
    :cond_3f
    const/4 v3, 0x0

    .line 267
    .local v3, "thisPriority":C
    sparse-switch v2, :sswitch_data_88

    .line 285
    :cond_43
    :goto_43
    if-eqz v3, :cond_78

    .line 287
    invoke-static {v0}, Lgnu/bytecode/PrimType;->findInHierarchy(Ljava/lang/String;)C

    move-result v1

    .line 288
    .local v1, "otherPriority":C
    if-eqz v1, :cond_78

    .line 289
    if-eq v1, v3, :cond_16

    if-ge v1, v3, :cond_76

    move v4, v5

    goto :goto_16

    .end local v1    # "otherPriority":C
    :sswitch_51
    move v4, v5

    .line 270
    goto :goto_16

    .line 272
    :sswitch_53
    const-string v8, "java.lang.Boolean"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 275
    :sswitch_5b
    const-string v8, "java.lang.Character"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    goto :goto_16

    .line 278
    :sswitch_64
    const/16 v3, 0x41

    goto :goto_43

    .line 279
    :sswitch_67
    const/16 v3, 0x42

    goto :goto_43

    .line 280
    :sswitch_6a
    const/16 v3, 0x43

    goto :goto_43

    .line 281
    :sswitch_6d
    const/16 v3, 0x44

    goto :goto_43

    .line 282
    :sswitch_70
    const/16 v3, 0x48

    goto :goto_43

    .line 283
    :sswitch_73
    const/16 v3, 0x49

    goto :goto_43

    .restart local v1    # "otherPriority":C
    :cond_76
    move v4, v6

    .line 289
    goto :goto_16

    .line 292
    .end local v1    # "otherPriority":C
    :cond_78
    const-string v4, "java.lang.Object"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    sget-object v4, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v4, :cond_86

    :cond_84
    move v4, v6

    .line 294
    goto :goto_16

    :cond_86
    move v4, v7

    .line 295
    goto :goto_16

    .line 267
    :sswitch_data_88
    .sparse-switch
        0x42 -> :sswitch_64
        0x43 -> :sswitch_5b
        0x44 -> :sswitch_73
        0x46 -> :sswitch_70
        0x49 -> :sswitch_6a
        0x4a -> :sswitch_6d
        0x53 -> :sswitch_67
        0x56 -> :sswitch_51
        0x5a -> :sswitch_53
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .registers 6
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1e

    :cond_d
    const/16 v0, 0x20

    .line 134
    .local v0, "sig1":C
    :goto_f
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_26

    .line 136
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 137
    sget-object v1, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 156
    :goto_1d
    return-void

    .line 132
    .end local v0    # "sig1":C
    :cond_1e
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_f

    .line 139
    .restart local v0    # "sig1":C
    :cond_26
    const/16 v1, 0x56

    if-ne v0, v1, :cond_2e

    .line 140
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_1d

    .line 143
    :cond_2e
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 144
    const/16 v1, 0x49

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x42

    if-ne v0, v1, :cond_45

    .line 145
    :cond_3f
    sget-object v1, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1d

    .line 146
    :cond_45
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_4f

    .line 147
    sget-object v1, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1d

    .line 148
    :cond_4f
    const/16 v1, 0x44

    if-ne v0, v1, :cond_59

    .line 149
    sget-object v1, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1d

    .line 150
    :cond_59
    const/16 v1, 0x46

    if-ne v0, v1, :cond_63

    .line 151
    sget-object v1, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1d

    .line 154
    :cond_63
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1d
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .registers 8
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 89
    .local v3, "sig1":C
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 90
    .local v1, "clas":Lgnu/bytecode/ClassType;
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2d

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 93
    const-string v4, "TRUE"

    invoke-virtual {v1, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 94
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 95
    const-string v4, "FALSE"

    invoke-virtual {v1, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 96
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 112
    :goto_2c
    return-void

    .line 100
    :cond_2d
    const/4 v4, 0x1

    new-array v0, v4, [Lgnu/bytecode/Type;

    .line 101
    .local v0, "args":[Lgnu/bytecode/Type;
    aput-object p0, v0, v5

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    iget v4, v4, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/high16 v5, 0x310000    # 4.49994E-39f

    if-lt v4, v5, :cond_4a

    .line 103
    const-string v4, "valueOf"

    invoke-virtual {v1, v4, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 111
    .local v2, "method":Lgnu/bytecode/Method;
    :goto_46
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_2c

    .line 106
    .end local v2    # "method":Lgnu/bytecode/Method;
    :cond_4a
    const-string v4, "<init>"

    invoke-virtual {v1, v4, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 107
    .restart local v2    # "method":Lgnu/bytecode/Method;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 109
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_46
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .registers 6
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_19

    :cond_d
    const/16 v0, 0x20

    .line 118
    .local v0, "sig1":C
    :goto_f
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_21

    .line 119
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 128
    :goto_18
    return-void

    .line 116
    .end local v0    # "sig1":C
    :cond_19
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_f

    .line 120
    .restart local v0    # "sig1":C
    :cond_21
    const/16 v1, 0x56

    if-ne v0, v1, :cond_2c

    .line 122
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 123
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_18

    .line 127
    :cond_2c
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_18
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 214
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_e
    return-object v0

    .line 212
    :sswitch_f
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_e

    .line 209
    :sswitch_data_12
    .sparse-switch
        0x42 -> :sswitch_f
        0x43 -> :sswitch_f
        0x49 -> :sswitch_f
        0x53 -> :sswitch_f
        0x5a -> :sswitch_f
    .end sparse-switch
.end method
