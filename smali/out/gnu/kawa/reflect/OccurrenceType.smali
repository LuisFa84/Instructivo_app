.class public Lgnu/kawa/reflect/OccurrenceType;
.super Lgnu/bytecode/ObjectType;
.source "OccurrenceType.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final emptySequenceType:Lgnu/bytecode/Type;

.field static final isInstanceMethod:Lgnu/bytecode/Method;

.field public static final typeOccurrenceType:Lgnu/bytecode/ClassType;


# instance fields
.field base:Lgnu/bytecode/Type;

.field maxOccurs:I

.field minOccurs:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    invoke-static {v0, v1, v1}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    .line 305
    const-string v0, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    .line 307
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    const-string v1, "isInstance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;II)V
    .registers 4
    .param p1, "base"    # Lgnu/bytecode/Type;
    .param p2, "minOccurs"    # I
    .param p3, "maxOccurs"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 28
    iput p2, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 29
    iput p3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 30
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;
    .registers 4
    .param p0, "base"    # Lgnu/bytecode/Type;
    .param p1, "minOccurs"    # I
    .param p2, "maxOccurs"    # I

    .prologue
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_6

    if-ne p2, v0, :cond_6

    .line 39
    .end local p0    # "base":Lgnu/bytecode/Type;
    :goto_5
    return-object p0

    .line 36
    .restart local p0    # "base":Lgnu/bytecode/Type;
    :cond_6
    if-nez p1, :cond_15

    if-gez p2, :cond_15

    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    if-eq p0, v0, :cond_12

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_15

    .line 38
    :cond_12
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 39
    :cond_15
    new-instance v0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-direct {v0, p0, p1, p2}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    move-object p0, v0

    goto :goto_5
.end method

.method public static itemCountCode(Lgnu/bytecode/Type;)C
    .registers 5
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v2

    .line 230
    .local v2, "num":I
    and-int/lit16 v1, v2, 0xfff

    .line 231
    .local v1, "min":I
    shr-int/lit8 v0, v2, 0xc

    .line 232
    .local v0, "max":I
    if-nez v0, :cond_e

    const/16 v3, 0x30

    :goto_d
    return v3

    :cond_e
    if-nez v1, :cond_18

    if-ne v0, v3, :cond_15

    const/16 v3, 0x3f

    goto :goto_d

    :cond_15
    const/16 v3, 0x2a

    goto :goto_d

    :cond_18
    if-ne v1, v3, :cond_1f

    if-ne v0, v3, :cond_1f

    const/16 v3, 0x31

    goto :goto_d

    :cond_1f
    const/16 v3, 0x2b

    goto :goto_d
.end method

.method public static itemCountIsOne(Lgnu/bytecode/Type;)Z
    .registers 3
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 245
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z
    .registers 2
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 240
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    shr-int/lit8 v0, v0, 0xd

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static itemCountRange(Lgnu/bytecode/Type;)I
    .registers 14
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    const v12, 0xfffff

    const/16 v11, 0xfff

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x1001

    .line 174
    instance-of v9, p0, Lgnu/kawa/reflect/SingletonType;

    if-eqz v9, :cond_e

    .line 217
    :cond_d
    :goto_d
    return v8

    .line 176
    :cond_e
    instance-of v9, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v9, :cond_52

    move-object v6, p0

    .line 178
    check-cast v6, Lgnu/kawa/reflect/OccurrenceType;

    .line 179
    .local v6, "occ":Lgnu/kawa/reflect/OccurrenceType;
    invoke-virtual {v6}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v5

    .line 180
    .local v5, "min":I
    invoke-virtual {v6}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v4

    .line 181
    .local v4, "max":I
    invoke-virtual {v6}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-static {v9}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v2

    .line 182
    .local v2, "bnum":I
    if-ne v5, v10, :cond_29

    if-eq v4, v10, :cond_2b

    :cond_29
    if-nez v2, :cond_2d

    :cond_2b
    move v8, v2

    .line 184
    goto :goto_d

    .line 185
    :cond_2d
    if-le v4, v12, :cond_30

    .line 186
    const/4 v4, -0x1

    .line 187
    :cond_30
    if-nez v4, :cond_34

    move v8, v7

    .line 188
    goto :goto_d

    .line 189
    :cond_34
    and-int/lit16 v1, v2, 0xfff

    .line 190
    .local v1, "bmin":I
    shr-int/lit8 v0, v2, 0xc

    .line 191
    .local v0, "bmax":I
    if-eq v2, v8, :cond_4b

    .line 193
    if-le v5, v11, :cond_3e

    .line 194
    const/16 v5, 0xfff

    .line 195
    :cond_3e
    mul-int/2addr v5, v1

    .line 196
    if-le v5, v11, :cond_43

    .line 197
    const/16 v5, 0xfff

    .line 198
    :cond_43
    if-ltz v4, :cond_47

    if-gez v0, :cond_50

    .line 199
    :cond_47
    const/4 v4, -0x1

    .line 202
    :goto_48
    if-le v4, v12, :cond_4b

    .line 203
    const/4 v4, -0x1

    .line 205
    :cond_4b
    shl-int/lit8 v7, v4, 0xc

    or-int v8, v7, v5

    goto :goto_d

    .line 201
    :cond_50
    mul-int/2addr v4, v0

    goto :goto_48

    .line 207
    .end local v0    # "bmax":I
    .end local v1    # "bmin":I
    .end local v2    # "bnum":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    :cond_52
    instance-of v9, p0, Lgnu/bytecode/PrimType;

    if-eqz v9, :cond_60

    .line 208
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v9

    if-eqz v9, :cond_5e

    :goto_5c
    move v8, v7

    goto :goto_d

    :cond_5e
    move v7, v8

    goto :goto_5c

    .line 209
    :cond_60
    instance-of v7, p0, Lgnu/bytecode/ArrayType;

    if-nez v7, :cond_d

    .line 211
    instance-of v7, p0, Lgnu/bytecode/ObjectType;

    if-eqz v7, :cond_71

    .line 213
    sget-object v7, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v7}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    .line 214
    .local v3, "cmp":I
    const/4 v7, -0x3

    if-eq v3, v7, :cond_d

    .line 217
    .end local v3    # "cmp":I
    :cond_71
    const/16 v8, -0x1000

    goto :goto_d
.end method

.method public static itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 2
    .param p0, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 252
    :goto_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_b

    .line 253
    check-cast p0, Lgnu/kawa/reflect/OccurrenceType;

    .end local p0    # "type":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p0

    .restart local p0    # "type":Lgnu/bytecode/Type;
    goto :goto_0

    .line 254
    :cond_b
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    .end local p0    # "type":Lgnu/bytecode/Type;
    :goto_11
    return-object p0

    .restart local p0    # "type":Lgnu/bytecode/Type;
    :cond_12
    sget-object p0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    goto :goto_11
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_10

    .line 79
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/OccurrenceType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 80
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 75
    :cond_10
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_1f
    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .registers 5
    .param p1, "other"    # Lgnu/bytecode/Type;

    .prologue
    .line 52
    instance-of v1, p1, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_1e

    move-object v0, p1

    .line 54
    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    .line 55
    .local v0, "occOther":Lgnu/kawa/reflect/OccurrenceType;
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    iget v2, v0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v1, v2, :cond_1e

    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    iget v2, v0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v1, v2, :cond_1e

    .line 57
    iget-object v1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    .line 64
    .end local v0    # "occOther":Lgnu/kawa/reflect/OccurrenceType;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, -0x2

    goto :goto_1d
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "value"    # Lgnu/expr/Expression;

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 4
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 155
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 156
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .registers 6
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 138
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 139
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_9

    .line 140
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 141
    :cond_9
    if-eqz p2, :cond_11

    .line 143
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 144
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_11
    invoke-virtual {p3, p0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 148
    sget-object v1, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 149
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 150
    return-void
.end method

.method public getBase()Lgnu/bytecode/Type;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 86
    instance-of v8, p1, Lgnu/mapping/Values;

    if-eqz v8, :cond_5c

    move-object v4, p1

    .line 88
    check-cast v4, Lgnu/mapping/Values;

    .line 89
    .local v4, "vals":Lgnu/mapping/Values;
    invoke-virtual {v4}, Lgnu/mapping/Values;->startPos()I

    move-result v2

    .line 90
    .local v2, "pos":I
    const/4 v1, 0x0

    .line 91
    .local v1, "n":I
    iget-object v8, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    instance-of v8, v8, Lgnu/lists/ItemPredicate;

    if-eqz v8, :cond_39

    .line 93
    iget-object v3, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    check-cast v3, Lgnu/lists/ItemPredicate;

    .line 97
    .local v3, "pred":Lgnu/lists/ItemPredicate;
    :goto_18
    invoke-interface {v3, v4, v2}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    .line 98
    .local v0, "matches":Z
    invoke-virtual {v4, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 99
    if-nez v2, :cond_32

    .line 101
    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v1, v8, :cond_30

    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v8, :cond_2e

    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v1, v8, :cond_30

    :cond_2e
    :goto_2e
    move v7, v6

    .line 131
    .end local v0    # "matches":Z
    .end local v1    # "n":I
    .end local v2    # "pos":I
    .end local v3    # "pred":Lgnu/lists/ItemPredicate;
    .end local v4    # "vals":Lgnu/mapping/Values;
    :cond_2f
    :goto_2f
    return v7

    .restart local v0    # "matches":Z
    .restart local v1    # "n":I
    .restart local v2    # "pos":I
    .restart local v3    # "pred":Lgnu/lists/ItemPredicate;
    .restart local v4    # "vals":Lgnu/mapping/Values;
    :cond_30
    move v6, v7

    .line 101
    goto :goto_2e

    .line 104
    :cond_32
    if-eqz v0, :cond_2f

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_18

    .line 123
    .end local v0    # "matches":Z
    .end local v3    # "pred":Lgnu/lists/ItemPredicate;
    .local v5, "value":Ljava/lang/Object;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 114
    .end local v5    # "value":Ljava/lang/Object;
    :cond_39
    invoke-virtual {v4, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 115
    if-nez v2, :cond_4f

    .line 117
    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v1, v8, :cond_4d

    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v8, :cond_4b

    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v1, v8, :cond_4d

    :cond_4b
    :goto_4b
    move v7, v6

    goto :goto_2f

    :cond_4d
    move v6, v7

    goto :goto_4b

    .line 120
    :cond_4f
    invoke-virtual {v4, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    .line 121
    .restart local v5    # "value":Ljava/lang/Object;
    iget-object v8, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v8, v5}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    goto :goto_2f

    .line 129
    .end local v1    # "n":I
    .end local v2    # "pos":I
    .end local v4    # "vals":Lgnu/mapping/Values;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5c
    iget v8, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-gt v8, v6, :cond_2f

    iget v6, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v6, :cond_2f

    .line 131
    iget-object v6, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v6, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2f
.end method

.method public maxOccurs()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return v0
.end method

.method public minOccurs()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 301
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 302
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x2a

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 267
    iget-object v4, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v4}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "b":Ljava/lang/String;
    if-eqz v0, :cond_14

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_38

    :cond_14
    move v1, v3

    .line 269
    .local v1, "parens":Z
    :goto_15
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_21

    .line 271
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    if-eqz v1, :cond_2b

    .line 274
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_2b
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v4, v3, :cond_3a

    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v4, v3, :cond_3a

    .line 294
    :goto_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 268
    .end local v1    # "parens":Z
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_38
    const/4 v1, 0x0

    goto :goto_15

    .line 277
    .restart local v1    # "parens":Z
    .restart local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_3a
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v4, :cond_48

    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v4, v3, :cond_48

    .line 278
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 279
    :cond_48
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v4, v3, :cond_56

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v5, :cond_56

    .line 280
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 281
    :cond_56
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v3, :cond_62

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v5, :cond_62

    .line 282
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 285
    :cond_62
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v3, :cond_80

    .line 289
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 292
    :goto_7a
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 291
    :cond_80
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7a
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 262
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 263
    return-void
.end method
