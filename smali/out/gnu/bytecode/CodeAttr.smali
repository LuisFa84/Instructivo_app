.class public Lgnu/bytecode/CodeAttr;
.super Lgnu/bytecode/Attribute;
.source "CodeAttr.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;


# static fields
.field public static final DONT_USE_JSR:I = 0x2

.field static final FIXUP_CASE:I = 0x3

.field static final FIXUP_DEFINE:I = 0x1

.field static final FIXUP_DELETE3:I = 0x8

.field static final FIXUP_GOTO:I = 0x4

.field static final FIXUP_JSR:I = 0x5

.field static final FIXUP_LINE_NUMBER:I = 0xf

.field static final FIXUP_LINE_PC:I = 0xe

.field static final FIXUP_MOVE:I = 0x9

.field static final FIXUP_MOVE_TO_END:I = 0xa

.field static final FIXUP_NONE:I = 0x0

.field static final FIXUP_SWITCH:I = 0x2

.field static final FIXUP_TRANSFER:I = 0x6

.field static final FIXUP_TRANSFER2:I = 0x7

.field static final FIXUP_TRY:I = 0xb

.field static final FIXUP_TRY_END:I = 0xc

.field static final FIXUP_TRY_HANDLER:I = 0xd

.field public static final GENERATE_STACK_MAP_TABLE:I = 0x1

.field public static instructionLineMode:Z


# instance fields
.field PC:I

.field SP:I

.field attributes:Lgnu/bytecode/Attribute;

.field code:[B

.field currentExitableBlock:Lgnu/bytecode/ExitableBlock;

.field exception_table:[S

.field exception_table_length:I

.field exitableBlockLevel:I

.field fixup_count:I

.field fixup_labels:[Lgnu/bytecode/Label;

.field fixup_offsets:[I

.field flags:I

.field if_stack:Lgnu/bytecode/IfState;

.field lines:Lgnu/bytecode/LineNumbersAttr;

.field local_types:[Lgnu/bytecode/Type;

.field public locals:Lgnu/bytecode/LocalVarsAttr;

.field private max_locals:I

.field private max_stack:I

.field previousLabel:Lgnu/bytecode/Label;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field public stackMap:Lgnu/bytecode/StackMapTableAttr;

.field public stack_types:[Lgnu/bytecode/Type;

.field try_stack:Lgnu/bytecode/TryState;

.field private unreachable_here:Z

.field varsSetInCurrentBlock:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .registers 4
    .param p1, "meth"    # Lgnu/bytecode/Method;

    .prologue
    .line 235
    const-string v0, "Code"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 237
    iput-object p0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 238
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1c

    .line 239
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    .line 240
    :cond_1c
    return-void
.end method

.method private adjustTypedOp(C)I
    .registers 3
    .param p1, "sig"    # C

    .prologue
    .line 1084
    sparse-switch p1, :sswitch_data_14

    .line 1090
    const/4 v0, 0x4

    .line 1094
    :goto_4
    return v0

    .line 1086
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1087
    :sswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1088
    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1089
    :sswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 1092
    :sswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 1093
    :sswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 1094
    :sswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 1084
    nop

    :sswitch_data_14
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_f
        0x44 -> :sswitch_b
        0x46 -> :sswitch_9
        0x49 -> :sswitch_5
        0x4a -> :sswitch_7
        0x53 -> :sswitch_11
        0x5a -> :sswitch_d
    .end sparse-switch
.end method

.method private adjustTypedOp(Lgnu/bytecode/Type;)I
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1100
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v0

    return v0
.end method

.method public static final calculateSplit(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 863
    .local v6, "strLength":I
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 865
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 866
    .local v5, "segmentStart":I
    const/4 v0, 0x0

    .line 867
    .local v0, "byteLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v6, :cond_36

    .line 869
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 870
    .local v2, "ch":C
    const/16 v7, 0x800

    if-lt v2, v7, :cond_2c

    const/4 v1, 0x3

    .line 871
    .local v1, "bytes":I
    :goto_19
    add-int v7, v0, v1

    const v8, 0xffff

    if-le v7, v8, :cond_28

    .line 873
    sub-int v7, v3, v5

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 874
    move v5, v3

    .line 875
    const/4 v0, 0x0

    .line 877
    :cond_28
    add-int/2addr v0, v1

    .line 867
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 870
    .end local v1    # "bytes":I
    :cond_2c
    const/16 v7, 0x80

    if-ge v2, v7, :cond_32

    if-nez v2, :cond_34

    :cond_32
    const/4 v1, 0x2

    goto :goto_19

    :cond_34
    const/4 v1, 0x1

    goto :goto_19

    .line 879
    .end local v2    # "ch":C
    :cond_36
    sub-int v7, v6, v5

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .registers 5
    .param p0, "top"    # Lgnu/bytecode/Type;
    .param p1, "required"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v2, 0x0

    .line 2004
    instance-of v0, p0, Lgnu/bytecode/UninitializedType;

    if-eqz v0, :cond_b

    .line 2005
    check-cast p0, Lgnu/bytecode/UninitializedType;

    .end local p0    # "top":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/UninitializedType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 2008
    .restart local p0    # "top":Lgnu/bytecode/Type;
    :cond_b
    :goto_b
    if-ne p0, p1, :cond_f

    move v0, v2

    .line 2021
    :goto_e
    return v0

    .line 2010
    :cond_f
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_25

    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_25

    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    .line 2013
    goto :goto_e

    .line 2014
    :cond_25
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3a

    instance-of v0, p0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3a

    .line 2017
    check-cast p1, Lgnu/bytecode/ArrayType;

    .end local p1    # "required":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 2018
    .restart local p1    # "required":Lgnu/bytecode/Type;
    check-cast p0, Lgnu/bytecode/ArrayType;

    .end local p0    # "top":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 2019
    .restart local p0    # "top":Lgnu/bytecode/Type;
    goto :goto_b

    .line 2021
    :cond_3a
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private emitBinop(I)V
    .registers 7
    .param p1, "base_code"    # I

    .prologue
    .line 1241
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1242
    .local v2, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1243
    .local v1, "type1_raw":Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1244
    .local v0, "type1":Lgnu/bytecode/Type;
    if-ne v0, v2, :cond_16

    instance-of v3, v0, Lgnu/bytecode/PrimType;

    if-nez v3, :cond_1e

    .line 1245
    :cond_16
    new-instance v3, Ljava/lang/Error;

    const-string v4, "non-matching or bad types in binary operation"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1246
    :cond_1e
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1247
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1248
    return-void
.end method

.method private emitBinop(IC)V
    .registers 4
    .param p1, "base_code"    # I
    .param p2, "sig"    # C

    .prologue
    .line 1252
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1253
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1254
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(IC)V

    .line 1255
    invoke-static {p2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1256
    return-void
.end method

.method private emitCheckcast(Lgnu/bytecode/Type;I)V
    .registers 6
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "opcode"    # I

    .prologue
    .line 1990
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1991
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1992
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1993
    instance-of v0, p1, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1c

    .line 1995
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    check-cast p1, Lgnu/bytecode/ObjectType;

    .end local p1    # "type":Lgnu/bytecode/Type;
    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 2000
    return-void

    .line 1998
    .restart local p1    # "type":Lgnu/bytecode/Type;
    :cond_1c
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unimplemented type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in emitCheckcast/emitInstanceof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final emitFieldop(Lgnu/bytecode/Field;I)V
    .registers 4
    .param p1, "field"    # Lgnu/bytecode/Field;
    .param p2, "opcode"    # I

    .prologue
    .line 1413
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1414
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1415
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1416
    return-void
.end method

.method private emitShift(I)V
    .registers 7
    .param p1, "base_code"    # I

    .prologue
    .line 1294
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1295
    .local v2, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1296
    .local v1, "type1_raw":Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1298
    .local v0, "type1":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v0, v3, :cond_20

    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-eq v0, v3, :cond_20

    .line 1299
    new-instance v3, Ljava/lang/Error;

    const-string v4, "the value shifted must be an int or a long"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1301
    :cond_20
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v2, v3, :cond_2c

    .line 1302
    new-instance v3, Ljava/lang/Error;

    const-string v4, "the amount of shift must be an int"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1304
    :cond_2c
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1305
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1306
    return-void
.end method

.method private emitTryEnd(Z)V
    .registers 4
    .param p1, "fromFinally"    # Z

    .prologue
    .line 2246
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-boolean v0, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v0, :cond_7

    .line 2253
    :goto_6
    return-void

    .line 2248
    :cond_7
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    .line 2249
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_1c

    .line 2250
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    sget-object v1, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    .line 2251
    :cond_1c
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2252
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    goto :goto_6
.end method

.method private emitTypedOp(IC)V
    .registers 4
    .param p1, "op"    # I
    .param p2, "sig"    # C

    .prologue
    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1112
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1113
    return-void
.end method

.method private emitTypedOp(ILgnu/bytecode/Type;)V
    .registers 4
    .param p1, "op"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1106
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1107
    return-void
.end method

.method private final fixupKind(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private final fixupOffset(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private gotoFinallyOrEnd(Z)V
    .registers 4
    .param p1, "fromFinally"    # Z

    .prologue
    .line 2276
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2278
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_13

    .line 2279
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2280
    :cond_13
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v0, :cond_22

    .line 2281
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1}, Lgnu/bytecode/Label;-><init>()V

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    .line 2282
    :cond_22
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2284
    :cond_2e
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_3b

    .line 2285
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2286
    :cond_3b
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2297
    :cond_42
    :goto_42
    return-void

    .line 2290
    :cond_43
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v0, :cond_4d

    .line 2291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2292
    :cond_4d
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2293
    if-nez p1, :cond_42

    .line 2294
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_42
.end method

.method private mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;
    .registers 3
    .param p1, "oldLabel"    # Lgnu/bytecode/Label;
    .param p2, "newLabel"    # Lgnu/bytecode/Label;

    .prologue
    .line 2780
    if-eqz p1, :cond_5

    .line 2781
    invoke-virtual {p2, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 2782
    :cond_5
    return-object p2
.end method

.method private print(Ljava/lang/String;ILjava/io/PrintWriter;)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "dst"    # Ljava/io/PrintWriter;

    .prologue
    .line 3257
    const/4 v0, 0x0

    .line 3258
    .local v0, "last":I
    const/4 v1, -0x1

    .line 3259
    .local v1, "pos":I
    :goto_2
    if-ltz p2, :cond_10

    .line 3261
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3262
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3259
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3264
    :cond_10
    sub-int v2, v1, v0

    invoke-virtual {p3, p1, v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 3265
    return-void
.end method

.method private readInt(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 3238
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private readUnsignedShort(I)I
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 3233
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private words([Lgnu/bytecode/Type;)I
    .registers 6
    .param p1, "types"    # [Lgnu/bytecode/Type;

    .prologue
    .line 1459
    const/4 v1, 0x0

    .line 1460
    .local v1, "res":I
    array-length v0, p1

    .local v0, "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 1461
    aget-object v2, p1, v0

    iget v2, v2, Lgnu/bytecode/Type;->size:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_10

    .line 1462
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 1464
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1465
    :cond_13
    return v1
.end method


# virtual methods
.method public addHandler(IIII)V
    .registers 10
    .param p1, "start_pc"    # I
    .param p2, "end_pc"    # I
    .param p3, "handler_pc"    # I
    .param p4, "catch_type"    # I

    .prologue
    const/4 v4, 0x0

    .line 2093
    iget v3, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v0, v3, 0x4

    .line 2094
    .local v0, "index":I
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    if-nez v3, :cond_32

    .line 2096
    const/16 v3, 0x14

    new-array v3, v3, [S

    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    .line 2104
    :cond_f
    :goto_f
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    int-to-short v4, p1

    aput-short v4, v3, v0

    .line 2105
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-short v4, p2

    aput-short v4, v3, v1

    .line 2106
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-short v4, p3

    aput-short v4, v3, v0

    .line 2107
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-short v4, p4

    aput-short v4, v3, v1

    .line 2108
    iget v3, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2109
    return-void

    .line 2098
    :cond_32
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v3, v3

    if-gt v3, v0, :cond_f

    .line 2100
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [S

    .line 2101
    .local v2, "new_table":[S
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    goto :goto_f
.end method

.method public addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V
    .registers 10
    .param p1, "start_try"    # Lgnu/bytecode/Label;
    .param p2, "end_try"    # Lgnu/bytecode/Label;
    .param p3, "catch_type"    # Lgnu/bytecode/ClassType;

    .prologue
    const/4 v5, 0x0

    .line 2116
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    .line 2118
    .local v1, "constants":Lgnu/bytecode/ConstantPool;
    if-nez p3, :cond_31

    .line 2119
    const/4 v0, 0x0

    .line 2122
    .local v0, "catch_type_index":I
    :goto_8
    const/16 v4, 0xb

    invoke-virtual {p0, v4, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 2123
    const/16 v4, 0xc

    invoke-virtual {p0, v4, v0, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2124
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2}, Lgnu/bytecode/Label;-><init>()V

    .line 2125
    .local v2, "handler":Lgnu/bytecode/Label;
    iget-object v4, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iput-object v4, v2, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2126
    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/bytecode/Type;

    iput-object v4, v2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 2127
    if-nez p3, :cond_38

    sget-object v3, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 2128
    .local v3, "handler_class":Lgnu/bytecode/Type;
    :goto_24
    iget-object v4, v2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aput-object v3, v4, v5

    .line 2129
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 2130
    const/16 v4, 0xd

    invoke-virtual {p0, v4, v5, v2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2131
    return-void

    .line 2121
    .end local v0    # "catch_type_index":I
    .end local v2    # "handler":Lgnu/bytecode/Label;
    .end local v3    # "handler_class":Lgnu/bytecode/Type;
    :cond_31
    invoke-virtual {v1, p3}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    iget v0, v4, Lgnu/bytecode/CpoolClass;->index:I

    .restart local v0    # "catch_type_index":I
    goto :goto_8

    .restart local v2    # "handler":Lgnu/bytecode/Label;
    :cond_38
    move-object v3, p3

    .line 2127
    goto :goto_24
.end method

.method public addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 685
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public addParamLocals()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 700
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    .line 701
    .local v2, "method":Lgnu/bytecode/Method;
    iget v3, v2, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_14

    .line 702
    iget-object v3, v2, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 703
    :cond_14
    iget-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v0, v3

    .line 704
    .local v0, "arg_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_28

    .line 705
    iget-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v3, v4}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 706
    :cond_28
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 6
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 2787
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->container:Lgnu/bytecode/AttrContainer;

    if-nez v2, :cond_17

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v2}, Lgnu/bytecode/LocalVarsAttr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2788
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v2, p0}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2789
    :cond_17
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->processFixups()V

    .line 2790
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget v2, v2, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-lez v2, :cond_29

    .line 2791
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    invoke-virtual {v2, p0}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2792
    :cond_29
    sget-boolean v2, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    if-eqz v2, :cond_4c

    .line 2796
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v2, :cond_38

    .line 2797
    new-instance v2, Lgnu/bytecode/LineNumbersAttr;

    invoke-direct {v2, p0}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2798
    :cond_38
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    const/4 v3, 0x0

    iput v3, v2, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 2799
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    .line 2800
    .local v0, "codeLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    if-ge v1, v0, :cond_4c

    .line 2801
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    invoke-virtual {v2, v1, v1}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2800
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 2803
    .end local v0    # "codeLen":I
    .end local v1    # "i":I
    :cond_4c
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 2804
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 2805
    return-void
.end method

.method public beginFragment(Lgnu/bytecode/Label;)I
    .registers 3
    .param p1, "after"    # Lgnu/bytecode/Label;

    .prologue
    .line 3269
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I

    move-result v0

    return v0
.end method

.method public beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I
    .registers 5
    .param p1, "start"    # Lgnu/bytecode/Label;
    .param p2, "after"    # Lgnu/bytecode/Label;

    .prologue
    .line 3274
    iget v0, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 3275
    .local v0, "i":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 3276
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3277
    return v0
.end method

.method public disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V
    .registers 32
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 2961
    const/16 v25, 0x0

    .line 2962
    .local v25, "wide":Z
    move/from16 v10, p2

    .local v10, "i":I
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_5
    move/from16 v0, p3

    if-ge v11, v0, :cond_707

    .line 2964
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    move/from16 v18, v11

    .line 2965
    .local v18, "oldpc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 2966
    .local v19, "op":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 2967
    .local v21, "str":Ljava/lang/String;
    const/16 v20, 0x0

    .line 2968
    .local v20, "printConstant":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v13

    .line 2969
    .local v13, "j":I
    :goto_25
    add-int/lit8 v13, v13, 0x1

    const/16 v26, 0x3

    move/from16 v0, v26

    if-gt v13, v0, :cond_37

    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_25

    .line 2970
    :cond_37
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2971
    const-string v26, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2973
    const/16 v26, 0x78

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_224

    .line 2975
    const/16 v26, 0x57

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e5

    .line 2977
    const/16 v26, 0x3

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_90

    const-string v26, "nop;aconst_null;iconst_m1;"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .line 3220
    .end local v10    # "i":I
    .restart local v11    # "i":I
    :goto_6d
    if-lez v20, :cond_708

    .line 3223
    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_6fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-byte v26, v26, v11

    move/from16 v0, v26

    and-int/lit16 v12, v0, 0xff

    .line 3225
    .local v12, "index":I
    :goto_85
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3227
    .end local v12    # "index":I
    :goto_8a
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    move v11, v10

    .line 3228
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_5

    .line 2978
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_90
    const/16 v26, 0x9

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_ac

    const-string v26, "iconst_"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v26, v19, -0x3

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_6d

    .line 2979
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_ac
    const/16 v26, 0x10

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_eb

    .line 2982
    const/16 v26, 0xb

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_d9

    const/16 v22, 0x6c

    .local v22, "typ":C
    add-int/lit8 v19, v19, -0x9

    .line 2985
    :goto_c0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const-string v26, "const_"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 2986
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_6d

    .line 2983
    .end local v11    # "i":I
    .end local v22    # "typ":C
    .restart local v10    # "i":I
    :cond_d9
    const/16 v26, 0xe

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_e6

    const/16 v22, 0x66

    .restart local v22    # "typ":C
    add-int/lit8 v19, v19, -0xb

    goto :goto_c0

    .line 2984
    .end local v22    # "typ":C
    :cond_e6
    const/16 v22, 0x64

    .restart local v22    # "typ":C
    add-int/lit8 v19, v19, -0xe

    goto :goto_c0

    .line 2987
    .end local v22    # "typ":C
    :cond_eb
    const/16 v26, 0x15

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_150

    .line 2989
    const/16 v26, 0x12

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_131

    .line 2991
    const-string v26, "bipush ;sipush ;"

    add-int/lit8 v27, v19, -0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 2993
    const/16 v26, 0x10

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_125

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-byte v6, v26, v10

    .local v6, "constant":I
    move v10, v11

    .line 2995
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :goto_11d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 2996
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 2994
    .end local v6    # "constant":I
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_125
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v26

    move/from16 v0, v26

    int-to-short v6, v0

    .restart local v6    # "constant":I
    add-int/lit8 v10, v10, 0x2

    goto :goto_11d

    .line 2999
    .end local v6    # "constant":I
    :cond_131
    const/16 v26, 0x12

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_14d

    const/16 v20, 0x1

    .line 3000
    :goto_13b
    const-string v26, "ldc;ldc_w;ldc2_w;"

    add-int/lit8 v27, v19, -0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 2999
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_14d
    const/16 v20, 0x2

    goto :goto_13b

    .line 3006
    :cond_150
    const/16 v26, 0x36

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_19d

    const-string v14, "load"

    .line 3009
    .local v14, "load_or_store":Ljava/lang/String;
    :goto_15a
    const/16 v26, 0x1a

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a2

    const/4 v12, -0x1

    .restart local v12    # "index":I
    add-int/lit8 v19, v19, -0x15

    .line 3012
    :goto_165
    const-string v26, "ilfdabcs"

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3013
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v12, v0, :cond_185

    const/16 v26, 0x61

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    .line 3014
    :cond_185
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3015
    if-ltz v12, :cond_1b5

    const/16 v26, 0x5f

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :cond_19a
    :goto_19a
    move v11, v10

    .line 3024
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3007
    .end local v11    # "i":I
    .end local v12    # "index":I
    .end local v14    # "load_or_store":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_19d
    const-string v14, "store"

    .restart local v14    # "load_or_store":Ljava/lang/String;
    add-int/lit8 v19, v19, -0x21

    goto :goto_15a

    .line 3010
    :cond_1a2
    const/16 v26, 0x2e

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b1

    add-int/lit8 v19, v19, -0x1a

    rem-int/lit8 v12, v19, 0x4

    .restart local v12    # "index":I
    shr-int/lit8 v19, v19, 0x2

    goto :goto_165

    .line 3011
    .end local v12    # "index":I
    :cond_1b1
    const/4 v12, -0x2

    .restart local v12    # "index":I
    add-int/lit8 v19, v19, -0x2e

    goto :goto_165

    .line 3016
    :cond_1b5
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_19a

    .line 3018
    if-eqz v25, :cond_1d6

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v10, v10, 0x2

    .line 3020
    :goto_1c5
    const/16 v25, 0x0

    .line 3021
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3022
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_19a

    .line 3019
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v10

    move/from16 v0, v26

    and-int/lit16 v12, v0, 0xff

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c5

    .line 3028
    .end local v12    # "index":I
    .end local v14    # "load_or_store":Ljava/lang/String;
    :cond_1e5
    const/16 v26, 0x60

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1ff

    .line 3029
    const-string v26, "pop;pop2;dup;dup_x1;dup_x2;dup2;dup2_x1;dup2_x2;swap;"

    add-int/lit8 v27, v19, -0x57

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3033
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_1ff
    const-string v26, "ilfda"

    add-int/lit8 v27, v19, -0x60

    rem-int/lit8 v27, v27, 0x4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3034
    const-string v26, "add;sub;mul;div;rem;neg;"

    add-int/lit8 v27, v19, -0x60

    shr-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3040
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_224
    const/16 v26, 0xaa

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_3db

    .line 3042
    const/16 v26, 0x84

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_258

    .line 3044
    and-int/lit8 v26, v19, 0x1

    if-nez v26, :cond_255

    const/16 v26, 0x69

    :goto_23a
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3045
    const-string v26, "shl;shr;ushr;and;or;xor;"

    add-int/lit8 v27, v19, -0x78

    shr-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3044
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_255
    const/16 v26, 0x6c

    goto :goto_23a

    .line 3047
    :cond_258
    const/16 v26, 0x84

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_2bc

    .line 3051
    const-string v26, "iinc"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3052
    if-nez v25, :cond_2a6

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-byte v26, v26, v10

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 3055
    .local v24, "var_index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    aget-byte v6, v26, v11

    .line 3065
    .restart local v6    # "constant":I
    :goto_285
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3066
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 3067
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3059
    .end local v6    # "constant":I
    .end local v11    # "i":I
    .end local v24    # "var_index":I
    .restart local v10    # "i":I
    :cond_2a6
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v24

    .line 3060
    .restart local v24    # "var_index":I
    add-int/lit8 v10, v10, 0x2

    .line 3061
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v26

    move/from16 v0, v26

    int-to-short v6, v0

    .line 3062
    .restart local v6    # "constant":I
    add-int/lit8 v10, v10, 0x2

    .line 3063
    const/16 v25, 0x0

    goto :goto_285

    .line 3068
    .end local v6    # "constant":I
    .end local v24    # "var_index":I
    :cond_2bc
    const/16 v26, 0x94

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_2f8

    .line 3070
    const-string v26, "ilfdi"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x85

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x3

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3071
    const/16 v26, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3072
    const-string v26, "lfdifdildilfbcs"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x85

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3074
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_2f8
    const/16 v26, 0x99

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_316

    .line 3075
    const-string v26, "lcmp;fcmpl;fcmpg;dcmpl;dcmpg;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x94

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3076
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_316
    const/16 v26, 0xa9

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_3af

    .line 3078
    const/16 v26, 0x9f

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_362

    .line 3080
    const-string v26, "if"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3081
    const-string v26, "eq;ne;lt;ge;gt;le;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x99

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3091
    :goto_342
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v26

    move/from16 v0, v26

    int-to-short v7, v0

    .line 3092
    .local v7, "delta":I
    add-int/lit8 v10, v10, 0x2

    .line 3093
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v26, v18, v7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 3094
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3083
    .end local v7    # "delta":I
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_362
    const/16 v26, 0xa7

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_39b

    .line 3085
    const/16 v26, 0xa5

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_38f

    const-string v26, "if_icmp"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3087
    :goto_37b
    const-string v26, "eq;ne;lt;ge;gt;le;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x9f

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_342

    .line 3086
    :cond_38f
    const-string v26, "if_acmp"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v19, v19, -0x6

    goto :goto_37b

    .line 3090
    :cond_39b
    const-string v26, "goto;jsr;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xa7

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_342

    .line 3098
    :cond_3af
    const-string v26, "ret "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3099
    if-eqz v25, :cond_3cc

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v12

    .restart local v12    # "index":I
    add-int/lit8 v12, v12, 0x2

    .line 3101
    :goto_3c2
    const/16 v25, 0x0

    .line 3102
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 3103
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3100
    .end local v11    # "i":I
    .end local v12    # "index":I
    .restart local v10    # "i":I
    :cond_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v10

    move/from16 v0, v26

    and-int/lit16 v12, v0, 0xff

    .restart local v12    # "index":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c2

    .line 3107
    .end local v12    # "index":I
    :cond_3db
    const/16 v26, 0xac

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_4e6

    .line 3109
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v26, v0

    if-gtz v26, :cond_3ef

    .line 3110
    add-int/lit8 v26, v10, 0x3

    and-int/lit8 v10, v26, -0x4

    .line 3111
    :cond_3ef
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v5

    .local v5, "code_offset":I
    add-int/lit8 v10, v10, 0x4

    .line 3112
    const/16 v26, 0xaa

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_476

    .line 3114
    const-string v26, "tableswitch"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3115
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    .local v15, "low":I
    add-int/lit8 v10, v10, 0x4

    .line 3116
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v9

    .local v9, "high":I
    add-int/lit8 v10, v10, 0x4

    .line 3117
    const-string v26, " low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3118
    const-string v26, " high: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3119
    const-string v26, " default: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v26, v18, v5

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    :goto_446
    if-gt v15, v9, :cond_4e3

    .line 3122
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v5

    add-int/lit8 v10, v10, 0x4

    .line 3123
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3124
    const-string v26, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3125
    const-string v26, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v26, v18, v5

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    add-int/lit8 v15, v15, 0x1

    goto :goto_446

    .line 3130
    .end local v9    # "high":I
    .end local v15    # "low":I
    :cond_476
    const-string v26, "lookupswitch"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3131
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v17

    .local v17, "npairs":I
    add-int/lit8 v10, v10, 0x4

    .line 3132
    const-string v26, " npairs: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3133
    const-string v26, " default: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v26, v18, v5

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3134
    :goto_4a9
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_4e3

    .line 3136
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v16

    .local v16, "match":I
    add-int/lit8 v10, v10, 0x4

    .line 3137
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v5

    add-int/lit8 v10, v10, 0x4

    .line 3138
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3139
    const-string v26, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3140
    const-string v26, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v26, v18, v5

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_4a9

    .end local v16    # "match":I
    .end local v17    # "npairs":I
    :cond_4e3
    move v11, v10

    .line 3143
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3144
    .end local v5    # "code_offset":I
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_4e6
    const/16 v26, 0xb2

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_515

    .line 3146
    const/16 v26, 0xb1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_509

    const-string v26, "ilfda"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xac

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3147
    :cond_509
    const-string v26, "return"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3149
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_515
    const/16 v26, 0xb6

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_535

    .line 3151
    const-string v26, "getstatic;putstatic;getfield;putfield;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xb2

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3152
    const/16 v20, 0x2

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3154
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_535
    const/16 v26, 0xb9

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_55e

    .line 3156
    const-string v26, "invoke"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3157
    const-string v26, "virtual;special;static;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xb6

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3158
    const/16 v20, 0x2

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3160
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_55e
    const/16 v26, 0xb9

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_5a9

    .line 3162
    const-string v26, "invokeinterface ("

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3163
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v12

    .line 3164
    .restart local v12    # "index":I
    add-int/lit8 v10, v10, 0x2

    .line 3165
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    aget-byte v26, v26, v10

    move/from16 v0, v26

    and-int/lit16 v4, v0, 0xff

    .line 3166
    .local v4, "args":I
    add-int/lit8 v10, v10, 0x2

    .line 3167
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " args)"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3168
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    move v11, v10

    .line 3169
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3170
    .end local v4    # "args":I
    .end local v11    # "i":I
    .end local v12    # "index":I
    .restart local v10    # "i":I
    :cond_5a9
    const/16 v26, 0xc4

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_62e

    .line 3172
    const-string v26, "186;new;newarray;anewarray;arraylength;athrow;checkcast;instanceof;monitorenter;monitorexit;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xba

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3173
    const/16 v26, 0xbb

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_5e4

    const/16 v26, 0xbd

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_5e4

    const/16 v26, 0xc0

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_5e4

    const/16 v26, 0xc1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_5e9

    .line 3174
    :cond_5e4
    const/16 v20, 0x2

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3175
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_5e9
    const/16 v26, 0xbc

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_6fa

    .line 3177
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-byte v23, v26, v10

    .line 3178
    .local v23, "type":I
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3179
    const/16 v26, 0x4

    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_625

    const/16 v26, 0xb

    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_625

    .line 3180
    const-string v26, "boolean;char;float;double;byte;short;int;long;"

    add-int/lit8 v27, v23, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_6d

    .line 3183
    :cond_625
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_6d

    .line 3187
    .end local v11    # "i":I
    .end local v23    # "type":I
    .restart local v10    # "i":I
    :cond_62e
    const/16 v26, 0xc4

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_644

    .line 3189
    const-string v26, "wide"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3190
    const/16 v25, 0x1

    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3192
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_644
    const/16 v26, 0xc5

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_680

    .line 3194
    const-string v26, "multianewarray"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3195
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v12

    .line 3196
    .restart local v12    # "index":I
    add-int/lit8 v10, v10, 0x2

    .line 3197
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v26, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .restart local v11    # "i":I
    aget-byte v26, v26, v10

    move/from16 v0, v26

    and-int/lit16 v8, v0, 0xff

    .line 3199
    .local v8, "dims":I
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3200
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_6d

    .line 3202
    .end local v8    # "dims":I
    .end local v11    # "i":I
    .end local v12    # "index":I
    .restart local v10    # "i":I
    :cond_680
    const/16 v26, 0xc8

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_6bb

    .line 3204
    const-string v26, "ifnull;ifnonnull;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xc6

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3205
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v26

    move/from16 v0, v26

    int-to-short v7, v0

    .line 3206
    .restart local v7    # "delta":I
    add-int/lit8 v10, v10, 0x2

    .line 3207
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v26, v18, v7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 3208
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3209
    .end local v7    # "delta":I
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_6bb
    const/16 v26, 0xca

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_6f3

    .line 3211
    const-string v26, "goto_w;jsr_w;"

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0xc8

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3212
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v7

    .line 3213
    .restart local v7    # "delta":I
    add-int/lit8 v10, v10, 0x4

    .line 3214
    const/16 v26, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v26, v18, v7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    move v11, v10

    .line 3215
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3217
    .end local v7    # "delta":I
    .end local v11    # "i":I
    .restart local v10    # "i":I
    :cond_6f3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :cond_6fa
    move v11, v10

    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_6d

    .line 3224
    :cond_6fd
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v12

    .restart local v12    # "index":I
    add-int/lit8 v10, v11, 0x2

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_85

    .line 3229
    .end local v10    # "i":I
    .end local v12    # "index":I
    .end local v13    # "j":I
    .end local v18    # "oldpc":I
    .end local v19    # "op":I
    .end local v20    # "printConstant":I
    .end local v21    # "str":Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_707
    return-void

    .restart local v13    # "j":I
    .restart local v18    # "oldpc":I
    .restart local v19    # "op":I
    .restart local v20    # "printConstant":I
    .restart local v21    # "str":Ljava/lang/String;
    :cond_708
    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_8a
.end method

.method public final emitAdd()V
    .registers 2

    .prologue
    .line 1274
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitAdd(C)V
    .registers 3
    .param p1, "sig"    # C

    .prologue
    .line 1271
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitAdd(Lgnu/bytecode/PrimType;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .prologue
    .line 1272
    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitAnd()V
    .registers 2

    .prologue
    .line 1284
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitArrayLength()V
    .registers 3

    .prologue
    .line 1070
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    if-nez v0, :cond_10

    .line 1071
    new-instance v0, Ljava/lang/Error;

    const-string v1, "non-array type in emitArrayLength"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1074
    const/16 v0, 0xbe

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1075
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1076
    return-void
.end method

.method public emitArrayLoad()V
    .registers 4

    .prologue
    .line 1161
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1162
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1163
    .local v0, "arrayType":Lgnu/bytecode/Type;
    check-cast v0, Lgnu/bytecode/ArrayType;

    .end local v0    # "arrayType":Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1164
    .local v1, "elementType":Lgnu/bytecode/Type;
    const/16 v2, 0x2e

    invoke-direct {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1165
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1166
    return-void
.end method

.method public emitArrayLoad(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1148
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1149
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1150
    const/16 v0, 0x2e

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1151
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1152
    return-void
.end method

.method public emitArrayStore()V
    .registers 4

    .prologue
    .line 1135
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1136
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1137
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1138
    .local v0, "arrayType":Lgnu/bytecode/Type;
    check-cast v0, Lgnu/bytecode/ArrayType;

    .end local v0    # "arrayType":Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1139
    .local v1, "elementType":Lgnu/bytecode/Type;
    const/16 v2, 0x4f

    invoke-direct {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1140
    return-void
.end method

.method public emitArrayStore(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1122
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1123
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1124
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1125
    const/16 v0, 0x4f

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1126
    return-void
.end method

.method public emitBinop(ILgnu/bytecode/Type;)V
    .registers 3
    .param p1, "base_code"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1261
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1262
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1263
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1264
    return-void
.end method

.method public emitCatchEnd()V
    .registers 3

    .prologue
    .line 2270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2271
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2272
    return-void
.end method

.method public emitCatchStart(Lgnu/bytecode/Variable;)V
    .registers 5
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    .line 2257
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2258
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v1, v1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2259
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_18

    .line 2260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2261
    :cond_18
    if-nez p1, :cond_30

    const/4 v0, 0x0

    .line 2262
    .local v0, "type":Lgnu/bytecode/ClassType;
    :goto_1b
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, v1, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2263
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, v2, v0}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2264
    if-eqz p1, :cond_2f

    .line 2265
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2266
    :cond_2f
    return-void

    .line 2261
    .end local v0    # "type":Lgnu/bytecode/ClassType;
    :cond_30
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_1b
.end method

.method public emitCheckcast(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 2027
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2029
    const/16 v0, 0xc0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2030
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2032
    :cond_12
    return-void
.end method

.method public final emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .registers 12
    .param p1, "from"    # Lgnu/bytecode/Type;
    .param p2, "to"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1923
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 1924
    .local v3, "to_sig":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "from_sig":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1926
    .local v2, "op":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v6, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_39

    .line 1928
    :cond_18
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1929
    .local v4, "to_sig0":C
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1930
    .local v1, "from_sig0":C
    if-ne v1, v4, :cond_23

    .line 1986
    .end local v1    # "from_sig0":C
    .end local v4    # "to_sig0":C
    :cond_22
    :goto_22
    return-void

    .line 1932
    .restart local v1    # "from_sig0":C
    .restart local v4    # "to_sig0":C
    :cond_23
    iget v5, p1, Lgnu/bytecode/Type;->size:I

    if-ge v5, v8, :cond_29

    .line 1933
    const/16 v1, 0x49

    .line 1934
    :cond_29
    iget v5, p2, Lgnu/bytecode/Type;->size:I

    if-ge v5, v8, :cond_34

    .line 1936
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v5}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 1937
    const/16 v1, 0x49

    .line 1939
    :cond_34
    if-eq v1, v4, :cond_22

    .line 1941
    packed-switch v1, :pswitch_data_8e

    .line 1980
    .end local v1    # "from_sig0":C
    .end local v4    # "to_sig0":C
    :cond_39
    :goto_39
    :pswitch_39
    if-gez v2, :cond_80

    .line 1981
    new-instance v5, Ljava/lang/Error;

    const-string v6, "unsupported CodeAttr.emitConvert"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1944
    .restart local v1    # "from_sig0":C
    .restart local v4    # "to_sig0":C
    :pswitch_43
    sparse-switch v4, :sswitch_data_a0

    goto :goto_39

    .line 1946
    :sswitch_47
    const/16 v2, 0x91

    goto :goto_39

    .line 1947
    :sswitch_4a
    const/16 v2, 0x92

    goto :goto_39

    .line 1948
    :sswitch_4d
    const/16 v2, 0x93

    goto :goto_39

    .line 1949
    :sswitch_50
    const/16 v2, 0x85

    goto :goto_39

    .line 1950
    :sswitch_53
    const/16 v2, 0x86

    goto :goto_39

    .line 1951
    :sswitch_56
    const/16 v2, 0x87

    goto :goto_39

    .line 1955
    :pswitch_59
    packed-switch v4, :pswitch_data_ba

    :pswitch_5c
    goto :goto_39

    .line 1959
    :pswitch_5d
    const/16 v2, 0x8a

    goto :goto_39

    .line 1957
    :pswitch_60
    const/16 v2, 0x88

    goto :goto_39

    .line 1958
    :pswitch_63
    const/16 v2, 0x89

    goto :goto_39

    .line 1963
    :pswitch_66
    sparse-switch v4, :sswitch_data_ca

    goto :goto_39

    .line 1967
    :sswitch_6a
    const/16 v2, 0x8d

    goto :goto_39

    .line 1965
    :sswitch_6d
    const/16 v2, 0x8b

    goto :goto_39

    .line 1966
    :sswitch_70
    const/16 v2, 0x8c

    goto :goto_39

    .line 1971
    :pswitch_73
    packed-switch v4, :pswitch_data_d8

    :pswitch_76
    goto :goto_39

    .line 1975
    :pswitch_77
    const/16 v2, 0x90

    goto :goto_39

    .line 1973
    :pswitch_7a
    const/16 v2, 0x8e

    goto :goto_39

    .line 1974
    :pswitch_7d
    const/16 v2, 0x8f

    goto :goto_39

    .line 1982
    .end local v1    # "from_sig0":C
    .end local v4    # "to_sig0":C
    :cond_80
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1983
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1984
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1985
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_22

    .line 1941
    nop

    :pswitch_data_8e
    .packed-switch 0x44
        :pswitch_73
        :pswitch_39
        :pswitch_66
        :pswitch_39
        :pswitch_39
        :pswitch_43
        :pswitch_59
    .end packed-switch

    .line 1944
    :sswitch_data_a0
    .sparse-switch
        0x42 -> :sswitch_47
        0x43 -> :sswitch_4a
        0x44 -> :sswitch_56
        0x46 -> :sswitch_53
        0x4a -> :sswitch_50
        0x53 -> :sswitch_4d
    .end sparse-switch

    .line 1955
    :pswitch_data_ba
    .packed-switch 0x44
        :pswitch_5d
        :pswitch_5c
        :pswitch_63
        :pswitch_5c
        :pswitch_5c
        :pswitch_60
    .end packed-switch

    .line 1963
    :sswitch_data_ca
    .sparse-switch
        0x44 -> :sswitch_6a
        0x49 -> :sswitch_6d
        0x4a -> :sswitch_70
    .end sparse-switch

    .line 1971
    :pswitch_data_d8
    .packed-switch 0x46
        :pswitch_77
        :pswitch_76
        :pswitch_76
        :pswitch_7a
        :pswitch_7d
    .end packed-switch
.end method

.method public final emitDiv()V
    .registers 2

    .prologue
    .line 1282
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitDup()V
    .registers 4

    .prologue
    .line 518
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 520
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 521
    .local v0, "type":Lgnu/bytecode/Type;
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_16

    const/16 v1, 0x59

    :goto_f
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 522
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 523
    return-void

    .line 521
    :cond_16
    const/16 v1, 0x5c

    goto :goto_f
.end method

.method public emitDup(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 620
    return-void
.end method

.method public emitDup(II)V
    .registers 12
    .param p1, "size"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 551
    if-nez p1, :cond_6

    .line 611
    :goto_5
    return-void

    .line 553
    :cond_6
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 555
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 556
    .local v0, "copied1":Lgnu/bytecode/Type;
    const/4 v1, 0x0

    .line 557
    .local v1, "copied2":Lgnu/bytecode/Type;
    if-ne p1, v6, :cond_1c

    .line 559
    iget v5, v0, Lgnu/bytecode/Type;->size:I

    if-le v5, v7, :cond_3a

    .line 560
    new-instance v5, Ljava/lang/Error;

    const-string v6, "using dup for 2-word type"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 562
    :cond_1c
    if-eq p1, v8, :cond_26

    .line 563
    new-instance v5, Ljava/lang/Error;

    const-string v6, "invalid size to emitDup"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    :cond_26
    iget v5, v0, Lgnu/bytecode/Type;->size:I

    if-gt v5, v7, :cond_3a

    .line 566
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 567
    iget v5, v1, Lgnu/bytecode/Type;->size:I

    if-le v5, v7, :cond_3a

    .line 568
    new-instance v5, Ljava/lang/Error;

    const-string v6, "dup will cause invalid types on stack"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 573
    :cond_3a
    const/4 v3, 0x0

    .line 574
    .local v3, "skipped1":Lgnu/bytecode/Type;
    const/4 v4, 0x0

    .line 575
    .local v4, "skipped2":Lgnu/bytecode/Type;
    if-nez p2, :cond_63

    .line 577
    if-ne p1, v6, :cond_60

    const/16 v2, 0x59

    .line 600
    .local v2, "kind":I
    :cond_42
    :goto_42
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 601
    if-eqz v1, :cond_4a

    .line 602
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 603
    :cond_4a
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 604
    if-eqz v4, :cond_52

    .line 605
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 606
    :cond_52
    if-eqz v3, :cond_57

    .line 607
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 608
    :cond_57
    if-eqz v1, :cond_5c

    .line 609
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 610
    :cond_5c
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_5

    .line 577
    .end local v2    # "kind":I
    :cond_60
    const/16 v2, 0x5c

    goto :goto_42

    .line 579
    :cond_63
    if-ne p2, v6, :cond_7c

    .line 581
    if-ne p1, v6, :cond_79

    const/16 v2, 0x5a

    .line 582
    .restart local v2    # "kind":I
    :goto_69
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 583
    iget v5, v3, Lgnu/bytecode/Type;->size:I

    if-le v5, v7, :cond_42

    .line 584
    new-instance v5, Ljava/lang/Error;

    const-string v6, "dup will cause invalid types on stack"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 581
    .end local v2    # "kind":I
    :cond_79
    const/16 v2, 0x5d

    goto :goto_69

    .line 586
    :cond_7c
    if-ne p2, v8, :cond_9d

    .line 588
    if-ne p1, v6, :cond_9a

    const/16 v2, 0x5b

    .line 589
    .restart local v2    # "kind":I
    :goto_82
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 590
    iget v5, v3, Lgnu/bytecode/Type;->size:I

    if-gt v5, v7, :cond_42

    .line 592
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 593
    iget v5, v4, Lgnu/bytecode/Type;->size:I

    if-le v5, v7, :cond_42

    .line 594
    new-instance v5, Ljava/lang/Error;

    const-string v6, "dup will cause invalid types on stack"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 588
    .end local v2    # "kind":I
    :cond_9a
    const/16 v2, 0x5e

    goto :goto_82

    .line 598
    :cond_9d
    new-instance v5, Ljava/lang/Error;

    const-string v6, "emitDup:  invalid offset"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public emitDup(Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 624
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    const/4 v0, 0x2

    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 625
    return-void

    .line 624
    :cond_b
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public emitDupX()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 529
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 531
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 532
    .local v1, "type":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 534
    .local v0, "skipedType":Lgnu/bytecode/Type;
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_27

    .line 535
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_24

    const/16 v2, 0x5a

    :goto_17
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 539
    :goto_1a
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 541
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 542
    return-void

    .line 535
    :cond_24
    const/16 v2, 0x5d

    goto :goto_17

    .line 537
    :cond_27
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_31

    const/16 v2, 0x5b

    :goto_2d
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1a

    :cond_31
    const/16 v2, 0x5e

    goto :goto_2d
.end method

.method public final emitElse()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1856
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1857
    .local v0, "else_label":Lgnu/bytecode/Label;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1859
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1860
    .local v1, "end_label":Lgnu/bytecode/Label;
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput-object v1, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1861
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    sub-int v2, v3, v4

    .line 1862
    .local v2, "growth":I
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput v2, v3, Lgnu/bytecode/IfState;->stack_growth:I

    .line 1863
    if-lez v2, :cond_44

    .line 1865
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v4, v2, [Lgnu/bytecode/Type;

    iput-object v4, v3, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1866
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v5, v5, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1871
    :goto_35
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1875
    .end local v1    # "end_label":Lgnu/bytecode/Label;
    .end local v2    # "growth":I
    :goto_38
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    if-le v3, v4, :cond_51

    .line 1876
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_38

    .line 1870
    .restart local v1    # "end_label":Lgnu/bytecode/Label;
    .restart local v2    # "growth":I
    :cond_44
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v4, v6, [Lgnu/bytecode/Type;

    iput-object v4, v3, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    goto :goto_35

    .line 1874
    .end local v1    # "end_label":Lgnu/bytecode/Label;
    .end local v2    # "growth":I
    :cond_4b
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    goto :goto_38

    .line 1877
    :cond_51
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 1878
    if-eqz v0, :cond_5c

    .line 1879
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1880
    :cond_5c
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/bytecode/IfState;->doing_else:Z

    .line 1881
    return-void
.end method

.method public final emitFi()V
    .registers 8

    .prologue
    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "make_unreachable":Z
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-boolean v2, v2, Lgnu/bytecode/IfState;->doing_else:Z

    if-nez v2, :cond_36

    .line 1889
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-eqz v2, :cond_66

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    if-eq v2, v3, :cond_66

    .line 1891
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "at PC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " then clause grows stack with no else clause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1893
    :cond_36
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_b4

    .line 1895
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v2, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->stack_growth:I

    add-int v1, v2, v3

    .line 1897
    .local v1, "then_clause_stack_size":I
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1899
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v2, v2, Lgnu/bytecode/IfState;->stack_growth:I

    if-lez v2, :cond_64

    .line 1900
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    const/4 v3, 0x0

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v6, v6, Lgnu/bytecode/IfState;->stack_growth:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1903
    :cond_64
    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 1913
    .end local v1    # "then_clause_stack_size":I
    :cond_66
    :goto_66
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    if-eqz v2, :cond_73

    .line 1914
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v2, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1915
    :cond_73
    if-eqz v0, :cond_78

    .line 1916
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1918
    :cond_78
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    .line 1919
    return-void

    .line 1905
    .restart local v1    # "then_clause_stack_size":I
    :cond_7f
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-eq v2, v1, :cond_66

    .line 1906
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "at PC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": SP at end of \'then\' was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while SP at end of \'else\' was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1910
    .end local v1    # "then_clause_stack_size":I
    :cond_b4
    iget-boolean v2, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-eqz v2, :cond_66

    .line 1911
    const/4 v0, 0x1

    goto :goto_66
.end method

.method public emitFinallyEnd()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2351
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2352
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitRet(Lgnu/bytecode/Variable;)V

    .line 2399
    :goto_e
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2400
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v6, v4, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2401
    return-void

    .line 2353
    :cond_16
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v4, :cond_26

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-nez v4, :cond_26

    .line 2355
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_e

    .line 2359
    :cond_26
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2360
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2361
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 2362
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2363
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2364
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 2366
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v4, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2368
    .local v0, "exit":Lgnu/bytecode/ExitableBlock;
    if-eqz v0, :cond_80

    .line 2370
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v3

    .line 2372
    .local v3, "sw":Lgnu/bytecode/SwitchState;
    :goto_4e
    if-eqz v0, :cond_76

    .line 2374
    iget-object v1, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2375
    .local v1, "next":Lgnu/bytecode/ExitableBlock;
    iput-object v6, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2376
    iput-object v6, v0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 2377
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v4, v5}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v2

    .line 2379
    .local v2, "nextTry":Lgnu/bytecode/TryState;
    iget-object v4, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v2, v4, :cond_6d

    .line 2381
    iget v4, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v3, v4, p0, v5}, Lgnu/bytecode/SwitchState;->addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z

    .line 2388
    :goto_6b
    move-object v0, v1

    .line 2389
    goto :goto_4e

    .line 2385
    :cond_6d
    iget v4, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v3, v4, p0}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2386
    invoke-virtual {v0, v2}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    goto :goto_6b

    .line 2390
    .end local v1    # "next":Lgnu/bytecode/ExitableBlock;
    .end local v2    # "nextTry":Lgnu/bytecode/TryState;
    :cond_76
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v6, v4, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2392
    invoke-virtual {v3, p0}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 2393
    invoke-virtual {v3, p0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2395
    .end local v3    # "sw":Lgnu/bytecode/SwitchState;
    :cond_80
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 2397
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_e
.end method

.method public emitFinallyStart()V
    .registers 7

    .prologue
    .line 2301
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2302
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_d

    .line 2303
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2304
    :cond_d
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2306
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2309
    const/4 v3, 0x0

    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2310
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2311
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2312
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2313
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2332
    :goto_3d
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v3, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2334
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2336
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 2337
    .local v2, "ret_addr_type":Lgnu/bytecode/Type;
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    .line 2338
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2339
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2347
    .end local v2    # "ret_addr_type":Lgnu/bytecode/Type;
    :cond_5e
    return-void

    .line 2318
    :cond_5f
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2319
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2320
    .local v0, "endLabel":Lgnu/bytecode/Label;
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v1

    .line 2321
    .local v1, "fragment_cookie":I
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    sget-object v5, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3, v4, v5}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2322
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_85

    .line 2323
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 2324
    :cond_85
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v3, :cond_92

    .line 2326
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2327
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 2329
    :cond_92
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2330
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto :goto_3d
.end method

.method public final emitGetField(Lgnu/bytecode/Field;)V
    .registers 3
    .param p1, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 1432
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1433
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1434
    const/16 v0, 0xb4

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1435
    return-void
.end method

.method public final emitGetStatic(Lgnu/bytecode/Field;)V
    .registers 3
    .param p1, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 1423
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1424
    const/16 v0, 0xb2

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1425
    return-void
.end method

.method public final emitGoto(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1573
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1574
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1575
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1576
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1577
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1578
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1579
    return-void
.end method

.method public final emitGotoIfCompare1(Lgnu/bytecode/Label;I)V
    .registers 4
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "opcode"    # I

    .prologue
    .line 1615
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1616
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1617
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1618
    return-void
.end method

.method public final emitGotoIfCompare2(Lgnu/bytecode/Label;I)V
    .registers 13
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "logop"    # I

    .prologue
    const/16 v9, 0x4a

    const/16 v8, 0x49

    const/16 v7, 0x46

    const/16 v6, 0x44

    const/4 v0, 0x0

    .line 1635
    const/16 v5, 0x99

    if-lt p2, v5, :cond_11

    const/16 v5, 0x9e

    if-le p2, v5, :cond_19

    .line 1636
    :cond_11
    new-instance v5, Ljava/lang/Error;

    const-string v6, "emitGotoIfCompare2: logop must be one of ifeq...ifle"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1638
    :cond_19
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1639
    .local v4, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1640
    .local v3, "type1":Lgnu/bytecode/Type;
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1641
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1642
    .local v1, "sig1":C
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1644
    .local v2, "sig2":C
    const/16 v5, 0x9b

    if-eq p2, v5, :cond_45

    const/16 v5, 0x9e

    if-ne p2, v5, :cond_46

    :cond_45
    const/4 v0, 0x1

    .line 1646
    .local v0, "cmpg":Z
    :cond_46
    if-ne v1, v8, :cond_50

    if-ne v2, v8, :cond_50

    .line 1647
    add-int/lit8 p2, p2, 0x6

    .line 1661
    :goto_4c
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1662
    return-void

    .line 1648
    :cond_50
    if-ne v1, v9, :cond_5a

    if-ne v2, v9, :cond_5a

    .line 1649
    const/16 v5, 0x94

    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_4c

    .line 1650
    :cond_5a
    if-ne v1, v7, :cond_69

    if-ne v2, v7, :cond_69

    .line 1651
    if-eqz v0, :cond_66

    const/16 v5, 0x95

    :goto_62
    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_4c

    :cond_66
    const/16 v5, 0x96

    goto :goto_62

    .line 1652
    :cond_69
    if-ne v1, v6, :cond_78

    if-ne v2, v6, :cond_78

    .line 1653
    if-eqz v0, :cond_75

    const/16 v5, 0x97

    :goto_71
    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_4c

    :cond_75
    const/16 v5, 0x98

    goto :goto_71

    .line 1654
    :cond_78
    const/16 v5, 0x4c

    if-eq v1, v5, :cond_80

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_8f

    :cond_80
    const/16 v5, 0x4c

    if-eq v2, v5, :cond_88

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_8f

    :cond_88
    const/16 v5, 0x9a

    if-gt p2, v5, :cond_8f

    .line 1657
    add-int/lit8 p2, p2, 0xc

    goto :goto_4c

    .line 1659
    :cond_8f
    new-instance v5, Ljava/lang/Error;

    const-string v6, "invalid types to emitGotoIfCompare2"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1674
    const/16 v0, 0x99

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1675
    return-void
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;Z)V
    .registers 4
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "invert"    # Z

    .prologue
    .line 1668
    if-eqz p2, :cond_8

    const/16 v0, 0x9a

    :goto_4
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1669
    return-void

    .line 1668
    :cond_8
    const/16 v0, 0x99

    goto :goto_4
.end method

.method public final emitGotoIfGe(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1686
    const/16 v0, 0x9c

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfGt(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1688
    const/16 v0, 0x9d

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1621
    const/16 v0, 0x99

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1627
    const/16 v0, 0x9c

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGtZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1629
    const/16 v0, 0x9d

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLeZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1631
    const/16 v0, 0x9e

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1625
    const/16 v0, 0x9b

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1623
    const/16 v0, 0x9a

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLe(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1690
    const/16 v0, 0x9e

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLt(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1684
    const/16 v0, 0x9b

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfNE(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1680
    const/16 v0, 0x9a

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1681
    return-void
.end method

.method public final emitIOr()V
    .registers 2

    .prologue
    .line 1285
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitIfCompare1(I)V
    .registers 5
    .param p1, "opcode"    # I

    .prologue
    .line 1698
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1699
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v1, v2, :cond_19

    .line 1700
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-int type to emitIfCompare1"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1701
    :cond_19
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1702
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1703
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1704
    return-void
.end method

.method public final emitIfEq()V
    .registers 3

    .prologue
    .line 1782
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1783
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 1784
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1785
    return-void
.end method

.method public final emitIfGe()V
    .registers 3

    .prologue
    .line 1800
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1801
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLt(Lgnu/bytecode/Label;)V

    .line 1802
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1803
    return-void
.end method

.method public final emitIfGt()V
    .registers 3

    .prologue
    .line 1809
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1810
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLe(Lgnu/bytecode/Label;)V

    .line 1811
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1812
    return-void
.end method

.method public final emitIfIntCompare(I)V
    .registers 4
    .param p1, "opcode"    # I

    .prologue
    .line 1755
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1756
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1757
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1758
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1759
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1760
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1761
    return-void
.end method

.method public final emitIfIntEqZero()V
    .registers 2

    .prologue
    .line 1717
    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1718
    return-void
.end method

.method public final emitIfIntLEqZero()V
    .registers 2

    .prologue
    .line 1723
    const/16 v0, 0x9d

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1724
    return-void
.end method

.method public final emitIfIntLt()V
    .registers 2

    .prologue
    .line 1766
    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfIntCompare(I)V

    .line 1767
    return-void
.end method

.method public final emitIfIntNotZero()V
    .registers 2

    .prologue
    .line 1710
    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1711
    return-void
.end method

.method public final emitIfLe()V
    .registers 3

    .prologue
    .line 1818
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1819
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGt(Lgnu/bytecode/Label;)V

    .line 1820
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1821
    return-void
.end method

.method public final emitIfLt()V
    .registers 3

    .prologue
    .line 1791
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1792
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGe(Lgnu/bytecode/Label;)V

    .line 1793
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1794
    return-void
.end method

.method public final emitIfNEq()V
    .registers 3

    .prologue
    .line 1773
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1774
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 1775
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1776
    return-void
.end method

.method public final emitIfNotNull()V
    .registers 2

    .prologue
    .line 1742
    const/16 v0, 0xc6

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1743
    return-void
.end method

.method public final emitIfNull()V
    .registers 2

    .prologue
    .line 1748
    const/16 v0, 0xc7

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1749
    return-void
.end method

.method public final emitIfRefCompare1(I)V
    .registers 5
    .param p1, "opcode"    # I

    .prologue
    .line 1731
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1732
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ObjectType;

    if-nez v1, :cond_15

    .line 1733
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-ref type to emitIfRefCompare1"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1734
    :cond_15
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1735
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1736
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1737
    return-void
.end method

.method public final emitIfThen()V
    .registers 3

    .prologue
    .line 1850
    new-instance v0, Lgnu/bytecode/IfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    .line 1851
    return-void
.end method

.method public emitInc(Lgnu/bytecode/Variable;S)V
    .registers 9
    .param p1, "var"    # Lgnu/bytecode/Variable;
    .param p2, "inc"    # S

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x84

    .line 1383
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1384
    new-instance v2, Ljava/lang/Error;

    const-string v3, "attempting to increment dead variable"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1385
    :cond_12
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1386
    .local v0, "offset":I
    if-ltz v0, :cond_1c

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-nez v2, :cond_51

    .line 1387
    :cond_1c
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to increment unassigned variable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simple:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1389
    :cond_51
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1390
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v2, v3, :cond_6d

    .line 1391
    new-instance v2, Ljava/lang/Error;

    const-string v3, "attempting to increment non-int variable"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1393
    :cond_6d
    if-gt v0, v5, :cond_75

    if-gt p2, v5, :cond_75

    const/16 v2, -0x100

    if-ge p2, v2, :cond_87

    :cond_75
    const/4 v1, 0x1

    .line 1395
    .local v1, "wide":Z
    :goto_76
    if-eqz v1, :cond_89

    .line 1397
    const/16 v2, 0xc4

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1398
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1399
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1400
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1408
    :goto_86
    return-void

    .line 1393
    .end local v1    # "wide":Z
    :cond_87
    const/4 v1, 0x0

    goto :goto_76

    .line 1404
    .restart local v1    # "wide":Z
    :cond_89
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1405
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1406
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_86
.end method

.method public emitInstanceof(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 2036
    const/16 v0, 0xc1

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2037
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2038
    return-void
.end method

.method public emitInvoke(Lgnu/bytecode/Method;)V
    .registers 5
    .param p1, "method"    # Lgnu/bytecode/Method;

    .prologue
    .line 1521
    iget v1, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    .line 1522
    const/16 v0, 0xb8

    .line 1529
    .local v0, "opcode":I
    :goto_8
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1530
    return-void

    .line 1523
    .end local v0    # "opcode":I
    :cond_c
    iget-object v1, p1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1524
    const/16 v0, 0xb9

    .restart local v0    # "opcode":I
    goto :goto_8

    .line 1525
    .end local v0    # "opcode":I
    :cond_17
    const-string v1, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1526
    const/16 v0, 0xb7

    .restart local v0    # "opcode":I
    goto :goto_8

    .line 1528
    .end local v0    # "opcode":I
    :cond_26
    const/16 v0, 0xb6

    .restart local v0    # "opcode":I
    goto :goto_8
.end method

.method public emitInvokeInterface(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "method"    # Lgnu/bytecode/Method;

    .prologue
    .line 1557
    const/16 v0, 0xb9

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1558
    return-void
.end method

.method public emitInvokeMethod(Lgnu/bytecode/Method;I)V
    .registers 16
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "opcode"    # I

    .prologue
    const/16 v12, 0xb9

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1470
    if-ne p2, v12, :cond_46

    const/4 v8, 0x5

    :goto_7
    invoke-virtual {p0, v8}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1471
    iget-object v8, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v0, v8

    .line 1472
    .local v0, "arg_count":I
    const/16 v8, 0xb8

    if-ne p2, v8, :cond_48

    move v4, v9

    .line 1473
    .local v4, "is_invokestatic":Z
    :goto_12
    const/16 v8, 0xb7

    if-ne p2, v8, :cond_4a

    const-string v8, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    move v3, v9

    .line 1475
    .local v3, "is_init":Z
    :goto_23
    iget v8, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4c

    :goto_29
    if-eq v4, v9, :cond_4e

    .line 1476
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "emitInvokeXxx static flag mis-match method.flags="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1470
    .end local v0    # "arg_count":I
    .end local v3    # "is_init":Z
    .end local v4    # "is_invokestatic":Z
    :cond_46
    const/4 v8, 0x3

    goto :goto_7

    .restart local v0    # "arg_count":I
    :cond_48
    move v4, v10

    .line 1472
    goto :goto_12

    .restart local v4    # "is_invokestatic":Z
    :cond_4a
    move v3, v10

    .line 1473
    goto :goto_23

    .restart local v3    # "is_init":Z
    :cond_4c
    move v9, v10

    .line 1475
    goto :goto_29

    .line 1478
    :cond_4e
    if-nez v4, :cond_54

    if-nez v3, :cond_54

    .line 1479
    add-int/lit8 v0, v0, 0x1

    .line 1480
    :cond_54
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1481
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgnu/bytecode/ConstantPool;->addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1482
    if-ne p2, v12, :cond_72

    .line 1484
    iget-object v8, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    invoke-direct {p0, v8}, Lgnu/bytecode/CodeAttr;->words([Lgnu/bytecode/Type;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1485
    invoke-virtual {p0, v10}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1487
    :cond_72
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_9d

    .line 1489
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 1490
    .local v5, "t":Lgnu/bytecode/Type;
    instance-of v8, v5, Lgnu/bytecode/UninitializedType;

    if-eqz v8, :cond_72

    .line 1491
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as parameter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1493
    .end local v5    # "t":Lgnu/bytecode/Type;
    :cond_9d
    if-eqz v3, :cond_f6

    .line 1495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 1497
    .restart local v5    # "t":Lgnu/bytecode/Type;
    instance-of v8, v5, Lgnu/bytecode/UninitializedType;

    if-nez v8, :cond_af

    .line 1498
    new-instance v8, Ljava/lang/Error;

    const-string v9, "calling <init> on already-initialized object"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_af
    move-object v8, v5

    .line 1499
    check-cast v8, Lgnu/bytecode/UninitializedType;

    iget-object v1, v8, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    .line 1500
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b5
    iget v8, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-ge v2, v8, :cond_c6

    .line 1501
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aget-object v8, v8, v2

    if-ne v8, v5, :cond_c3

    .line 1502
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aput-object v1, v8, v2

    .line 1500
    :cond_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 1503
    :cond_c6
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v6, v8, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    .line 1504
    .local v6, "used":[Lgnu/bytecode/Variable;
    if-nez v6, :cond_dc

    move v2, v10

    :cond_cd
    :goto_cd
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_de

    .line 1506
    aget-object v7, v6, v2

    .line 1507
    .local v7, "var":Lgnu/bytecode/Variable;
    if-eqz v7, :cond_cd

    iget-object v8, v7, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    if-ne v8, v5, :cond_cd

    .line 1508
    iput-object v1, v7, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    goto :goto_cd

    .line 1504
    .end local v7    # "var":Lgnu/bytecode/Variable;
    :cond_dc
    array-length v2, v6

    goto :goto_cd

    .line 1510
    :cond_de
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v8, :cond_f2

    move v2, v10

    :cond_e3
    :goto_e3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_f6

    .line 1511
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v8, v8, v2

    if-ne v8, v5, :cond_e3

    .line 1512
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object v1, v8, v2

    goto :goto_e3

    .line 1510
    :cond_f2
    iget-object v8, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v2, v8

    goto :goto_e3

    .line 1514
    .end local v1    # "ctype":Lgnu/bytecode/ClassType;
    .end local v2    # "i":I
    .end local v5    # "t":Lgnu/bytecode/Type;
    .end local v6    # "used":[Lgnu/bytecode/Variable;
    :cond_f6
    iget-object v8, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iget v8, v8, Lgnu/bytecode/Type;->size:I

    if-eqz v8, :cond_101

    .line 1515
    iget-object v8, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v8}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1516
    :cond_101
    return-void
.end method

.method public emitInvokeSpecial(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "method"    # Lgnu/bytecode/Method;

    .prologue
    .line 1543
    const/16 v0, 0xb7

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1544
    return-void
.end method

.method public emitInvokeStatic(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "method"    # Lgnu/bytecode/Method;

    .prologue
    .line 1552
    const/16 v0, 0xb8

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1553
    return-void
.end method

.method public emitInvokeVirtual(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "method"    # Lgnu/bytecode/Method;

    .prologue
    .line 1538
    const/16 v0, 0xb6

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1539
    return-void
.end method

.method public final emitJsr(Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 1583
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1584
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1585
    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1586
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1587
    return-void
.end method

.method public final emitLoad(Lgnu/bytecode/Variable;)V
    .registers 8
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    .line 1347
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1348
    new-instance v3, Ljava/lang/Error;

    const-string v4, "attempting to push dead variable"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1349
    :cond_e
    iget v1, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1350
    .local v1, "offset":I
    if-ltz v1, :cond_18

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    if-nez v3, :cond_49

    .line 1351
    :cond_18
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempting to load from unassigned variable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simple:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1353
    :cond_49
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1354
    .local v2, "type":Lgnu/bytecode/Type;
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1355
    invoke-direct {p0, v2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v0

    .line 1356
    .local v0, "kind":I
    const/4 v3, 0x3

    if-gt v1, v3, :cond_6c

    .line 1357
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1a

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1360
    :goto_64
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1361
    return-void

    .line 1359
    :cond_6c
    add-int/lit8 v3, v0, 0x15

    invoke-virtual {p0, v3, v1}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    goto :goto_64
.end method

.method emitMaybeWide(II)V
    .registers 4
    .param p1, "opcode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1328
    const/16 v0, 0x100

    if-lt p2, v0, :cond_10

    .line 1330
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1331
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1332
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1339
    :goto_f
    return-void

    .line 1336
    :cond_10
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1337
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_f
.end method

.method public final emitMonitorEnter()V
    .registers 2

    .prologue
    .line 2050
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2051
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2052
    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2053
    return-void
.end method

.method public final emitMonitorExit()V
    .registers 2

    .prologue
    .line 2057
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2059
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2060
    return-void
.end method

.method public final emitMul()V
    .registers 2

    .prologue
    .line 1281
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitNew(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 1175
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1176
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1177
    .local v0, "label":Lgnu/bytecode/Label;
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 1178
    const/16 v1, 0xbb

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1180
    new-instance v1, Lgnu/bytecode/UninitializedType;

    invoke-direct {v1, p1, v0}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1181
    return-void
.end method

.method emitNewArray(I)V
    .registers 3
    .param p1, "type_code"    # I

    .prologue
    .line 1063
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1064
    const/16 v0, 0xbc

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1065
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1066
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .prologue
    .line 1235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;I)V

    .line 1236
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;I)V
    .registers 6
    .param p1, "element_type"    # Lgnu/bytecode/Type;
    .param p2, "dims"    # I

    .prologue
    .line 1189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v1, v2, :cond_14

    .line 1190
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-int dim. spec. in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1192
    :cond_14
    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_4b

    .line 1195
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_b6

    .line 1205
    new-instance v1, Ljava/lang/Error;

    const-string v2, "bad PrimType in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1197
    :sswitch_2c
    const/16 v0, 0x8

    .line 1207
    .local v0, "code":I
    :goto_2e
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(I)V

    .line 1230
    .end local v0    # "code":I
    :cond_31
    :goto_31
    new-instance v1, Lgnu/bytecode/ArrayType;

    invoke-direct {v1, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1231
    return-void

    .line 1198
    :sswitch_3a
    const/16 v0, 0x9

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1199
    .end local v0    # "code":I
    :sswitch_3d
    const/16 v0, 0xa

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1200
    .end local v0    # "code":I
    :sswitch_40
    const/16 v0, 0xb

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1201
    .end local v0    # "code":I
    :sswitch_43
    const/4 v0, 0x6

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1202
    .end local v0    # "code":I
    :sswitch_45
    const/4 v0, 0x7

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1203
    .end local v0    # "code":I
    :sswitch_47
    const/4 v0, 0x4

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1204
    .end local v0    # "code":I
    :sswitch_49
    const/4 v0, 0x5

    .restart local v0    # "code":I
    goto :goto_2e

    .line 1209
    .end local v0    # "code":I
    :cond_4b
    instance-of v1, p1, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_67

    .line 1211
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1212
    const/16 v1, 0xbd

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1213
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v2, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_31

    .line 1215
    :cond_67
    instance-of v1, p1, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_ae

    .line 1217
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1218
    const/16 v1, 0xc5

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1219
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    new-instance v2, Lgnu/bytecode/ArrayType;

    invoke-direct {v2, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v1, v2}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1220
    const/4 v1, 0x1

    if-lt p2, v1, :cond_8b

    const/16 v1, 0xff

    if-le p2, v1, :cond_93

    .line 1221
    :cond_8b
    new-instance v1, Ljava/lang/Error;

    const-string v2, "dims out of range in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1222
    :cond_93
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1223
    :cond_96
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_31

    .line 1224
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v1, v2, :cond_96

    .line 1225
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-int dim. spec. in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1228
    :cond_ae
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unimplemented type in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1195
    :sswitch_data_b6
    .sparse-switch
        0x42 -> :sswitch_2c
        0x43 -> :sswitch_49
        0x44 -> :sswitch_45
        0x46 -> :sswitch_43
        0x49 -> :sswitch_3d
        0x4a -> :sswitch_40
        0x53 -> :sswitch_3a
        0x5a -> :sswitch_47
    .end sparse-switch
.end method

.method public final emitNot(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v0, 0x1

    .line 1311
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1312
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAdd()V

    .line 1313
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 1315
    return-void
.end method

.method public emitPop(I)V
    .registers 9
    .param p1, "nvalues"    # I

    .prologue
    const/16 v6, 0x58

    const/16 v5, 0x57

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 460
    :goto_6
    if-lez p1, :cond_33

    .line 462
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 463
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 464
    .local v0, "type":Lgnu/bytecode/Type;
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-le v2, v4, :cond_19

    .line 465
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 460
    :goto_16
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 466
    :cond_19
    if-le p1, v3, :cond_2f

    .line 468
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 469
    .local v1, "type2":Lgnu/bytecode/Type;
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    if-le v2, v4, :cond_29

    .line 471
    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 472
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 474
    :cond_29
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 475
    add-int/lit8 p1, p1, -0x1

    .line 476
    goto :goto_16

    .line 478
    .end local v1    # "type2":Lgnu/bytecode/Type;
    :cond_2f
    invoke-virtual {p0, v5}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_16

    .line 480
    .end local v0    # "type":Lgnu/bytecode/Type;
    :cond_33
    return-void
.end method

.method public emitPrimop(IILgnu/bytecode/Type;)V
    .registers 5
    .param p1, "opcode"    # I
    .param p2, "arg_count"    # I
    .param p3, "retType"    # Lgnu/bytecode/Type;

    .prologue
    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1320
    :goto_4
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_c

    .line 1321
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_4

    .line 1322
    :cond_c
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1323
    invoke-virtual {p0, p3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1324
    return-void
.end method

.method public final emitPushClass(Lgnu/bytecode/ObjectType;)V
    .registers 3
    .param p1, "ctype"    # Lgnu/bytecode/ObjectType;

    .prologue
    .line 944
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 945
    sget-object v0, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 946
    return-void
.end method

.method public final emitPushConstant(ILgnu/bytecode/Type;)V
    .registers 5
    .param p1, "val"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 710
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 721
    new-instance v0, Ljava/lang/Error;

    const-string v1, "bad type to emitPushConstant"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :sswitch_14
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 723
    :goto_17
    return-void

    .line 715
    :sswitch_18
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_17

    .line 717
    :sswitch_1d
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto :goto_17

    .line 719
    :sswitch_22
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_17

    .line 710
    nop

    :sswitch_data_28
    .sparse-switch
        0x42 -> :sswitch_14
        0x43 -> :sswitch_14
        0x44 -> :sswitch_22
        0x46 -> :sswitch_1d
        0x49 -> :sswitch_14
        0x4a -> :sswitch_18
        0x53 -> :sswitch_14
        0x5a -> :sswitch_14
    .end sparse-switch
.end method

.method public final emitPushConstant(Lgnu/bytecode/CpoolEntry;)V
    .registers 4
    .param p1, "cnst"    # Lgnu/bytecode/CpoolEntry;

    .prologue
    .line 729
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 730
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    .line 731
    .local v0, "index":I
    instance-of v1, p1, Lgnu/bytecode/CpoolValue2;

    if-eqz v1, :cond_13

    .line 733
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 734
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 746
    :goto_12
    return-void

    .line 736
    :cond_13
    const/16 v1, 0x100

    if-ge v0, v1, :cond_20

    .line 738
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 739
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_12

    .line 743
    :cond_20
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 744
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_12
.end method

.method public emitPushDefaultValue(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 958
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 959
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_d

    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 963
    :goto_c
    return-void

    .line 962
    :cond_d
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_c
.end method

.method public emitPushDouble(D)V
    .registers 10
    .param p1, "x"    # D

    .prologue
    const/4 v6, 0x1

    .line 825
    double-to-int v0, p1

    .line 826
    .local v0, "xi":I
    int-to-double v2, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_44

    const/16 v1, -0x80

    if-lt v0, v1, :cond_44

    const/16 v1, 0x80

    if-ge v0, v1, :cond_44

    .line 828
    if-eqz v0, :cond_13

    if-ne v0, v6, :cond_35

    .line 830
    :cond_13
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 831
    add-int/lit8 v1, v0, 0xe

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 832
    if-nez v0, :cond_2f

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2f

    .line 834
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 835
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 852
    :cond_2f
    :goto_2f
    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 853
    return-void

    .line 842
    :cond_35
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 843
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 845
    const/16 v1, 0x87

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2f

    .line 850
    :cond_44
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_2f
.end method

.method public emitPushFloat(F)V
    .registers 5
    .param p1, "x"    # F

    .prologue
    const/4 v2, 0x1

    .line 793
    float-to-int v0, p1

    .line 794
    .local v0, "xi":I
    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_41

    const/16 v1, -0x80

    if-lt v0, v1, :cond_41

    const/16 v1, 0x80

    if-ge v0, v1, :cond_41

    .line 796
    if-ltz v0, :cond_32

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    .line 798
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 799
    add-int/lit8 v1, v0, 0xb

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 800
    if-nez v0, :cond_2c

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eqz v1, :cond_2c

    .line 802
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 803
    const/16 v1, 0x76

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 820
    :cond_2c
    :goto_2c
    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 821
    return-void

    .line 810
    :cond_32
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 811
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 812
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 813
    const/16 v1, 0x86

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2c

    .line 818
    :cond_41
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_2c
.end method

.method public final emitPushInt(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 750
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 751
    const/4 v0, -0x1

    if-lt p1, v0, :cond_15

    const/4 v0, 0x5

    if-gt p1, v0, :cond_15

    .line 752
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 767
    :goto_f
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 768
    return-void

    .line 753
    :cond_15
    const/16 v0, -0x80

    if-lt p1, v0, :cond_26

    const/16 v0, 0x80

    if-ge p1, v0, :cond_26

    .line 755
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 756
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_f

    .line 758
    :cond_26
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_38

    const v0, 0x8000

    if-ge p1, v0, :cond_38

    .line 760
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 761
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_f

    .line 765
    :cond_38
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_f
.end method

.method public emitPushLong(J)V
    .registers 6
    .param p1, "i"    # J

    .prologue
    const/4 v2, 0x1

    .line 772
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1c

    .line 774
    :cond_d
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 775
    long-to-int v0, p1

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 788
    :goto_16
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 789
    return-void

    .line 777
    :cond_1c
    long-to-int v0, p1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_32

    .line 779
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 780
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 781
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 782
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_16

    .line 786
    :cond_32
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_16
.end method

.method public emitPushNull()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 950
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 951
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 952
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 953
    return-void
.end method

.method public final emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V
    .registers 19
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "arrayType"    # Lgnu/bytecode/ArrayType;

    .prologue
    .line 983
    invoke-virtual/range {p2 .. p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 984
    .local v4, "elementType":Lgnu/bytecode/Type;
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 985
    .local v7, "len":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 986
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 987
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 988
    .local v10, "sig":C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    if-ge v6, v7, :cond_df

    .line 990
    const-wide/16 v8, 0x0

    .local v8, "ival":J
    const/4 v5, 0x0

    .local v5, "fval":F
    const-wide/16 v2, 0x0

    .line 991
    .local v2, "dval":D
    sparse-switch v10, :sswitch_data_e0

    .line 1034
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1035
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1036
    sparse-switch v10, :sswitch_data_102

    .line 1055
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 988
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :sswitch_3d
    move-object/from16 v11, p1

    .line 994
    check-cast v11, [J

    check-cast v11, [J

    aget-wide v8, v11, v6

    .line 995
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_4c
    move-object/from16 v11, p1

    .line 999
    check-cast v11, [I

    check-cast v11, [I

    aget v11, v11, v6

    int-to-long v8, v11

    .line 1000
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_5c
    move-object/from16 v11, p1

    .line 1004
    check-cast v11, [S

    check-cast v11, [S

    aget-short v11, v11, v6

    int-to-long v8, v11

    .line 1005
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_6c
    move-object/from16 v11, p1

    .line 1009
    check-cast v11, [C

    check-cast v11, [C

    aget-char v11, v11, v6

    int-to-long v8, v11

    .line 1010
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_7c
    move-object/from16 v11, p1

    .line 1014
    check-cast v11, [B

    check-cast v11, [B

    aget-byte v11, v11, v6

    int-to-long v8, v11

    .line 1015
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_8c
    move-object/from16 v11, p1

    .line 1019
    check-cast v11, [Z

    check-cast v11, [Z

    aget-boolean v11, v11, v6

    if-eqz v11, :cond_9f

    const-wide/16 v8, 0x1

    .line 1020
    :goto_98
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_26

    goto :goto_3a

    .line 1019
    :cond_9f
    const-wide/16 v8, 0x0

    goto :goto_98

    :sswitch_a2
    move-object/from16 v11, p1

    .line 1024
    check-cast v11, [F

    check-cast v11, [F

    aget v5, v11, v6

    .line 1025
    float-to-double v12, v5

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-nez v11, :cond_26

    goto :goto_3a

    :sswitch_b2
    move-object/from16 v11, p1

    .line 1029
    check-cast v11, [D

    check-cast v11, [D

    aget-wide v2, v11, v6

    .line 1030
    const-wide/16 v12, 0x0

    cmpl-double v11, v2, v12

    if-nez v11, :cond_26

    goto/16 :goto_3a

    .line 1043
    :sswitch_c2
    long-to-int v11, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_35

    .line 1046
    :sswitch_ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto/16 :goto_35

    .line 1049
    :sswitch_d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto/16 :goto_35

    .line 1052
    :sswitch_d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto/16 :goto_35

    .line 1057
    .end local v2    # "dval":D
    .end local v5    # "fval":F
    .end local v8    # "ival":J
    :cond_df
    return-void

    .line 991
    :sswitch_data_e0
    .sparse-switch
        0x42 -> :sswitch_7c
        0x43 -> :sswitch_6c
        0x44 -> :sswitch_b2
        0x46 -> :sswitch_a2
        0x49 -> :sswitch_4c
        0x4a -> :sswitch_3d
        0x53 -> :sswitch_5c
        0x5a -> :sswitch_8c
    .end sparse-switch

    .line 1036
    :sswitch_data_102
    .sparse-switch
        0x42 -> :sswitch_c2
        0x43 -> :sswitch_c2
        0x44 -> :sswitch_d8
        0x46 -> :sswitch_d1
        0x49 -> :sswitch_c2
        0x4a -> :sswitch_ca
        0x53 -> :sswitch_c2
        0x5a -> :sswitch_c2
    .end sparse-switch
.end method

.method public final emitPushString(Ljava/lang/String;)V
    .registers 18
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 890
    if-nez p1, :cond_6

    .line 891
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 938
    :cond_5
    :goto_5
    return-void

    .line 894
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 895
    .local v6, "length":I
    invoke-static/range {p1 .. p1}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 896
    .local v12, "segments":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 897
    .local v7, "numSegments":I
    const/4 v13, 0x1

    if-gt v7, v13, :cond_2c

    .line 898
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 936
    sget-object v13, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_5

    .line 901
    :cond_2c
    const/4 v13, 0x2

    if-ne v7, v13, :cond_70

    .line 903
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 904
    .local v5, "firstSegment":I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 906
    sget-object v13, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v14, "concat"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    .line 908
    .local v4, "concatMethod":Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 932
    .end local v4    # "concatMethod":Lgnu/bytecode/Method;
    .end local v5    # "firstSegment":I
    :goto_59
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 933
    sget-object v13, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v14, "intern"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_5

    .line 912
    :cond_70
    const-string v13, "java.lang.StringBuffer"

    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    .line 913
    .local v8, "sbufType":Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 914
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 915
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 916
    const/4 v13, 0x1

    new-array v2, v13, [Lgnu/bytecode/Type;

    const/4 v13, 0x0

    sget-object v14, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v14, v2, v13

    .line 917
    .local v2, "args1":[Lgnu/bytecode/Type;
    const-string v13, "<init>"

    invoke-virtual {v8, v13, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 918
    const/4 v13, 0x1

    new-array v3, v13, [Lgnu/bytecode/Type;

    const/4 v13, 0x0

    sget-object v14, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v14, v3, v13

    .line 919
    .local v3, "args2":[Lgnu/bytecode/Type;
    const-string v13, "append"

    invoke-virtual {v8, v13, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 921
    .local v1, "appendMethod":Lgnu/bytecode/Method;
    const/4 v11, 0x0

    .line 922
    .local v11, "segStart":I
    const/4 v9, 0x0

    .local v9, "seg":I
    :goto_a8
    if-ge v9, v7, :cond_c9

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 925
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int v10, v11, v13

    .line 926
    .local v10, "segEnd":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 928
    move v11, v10

    .line 922
    add-int/lit8 v9, v9, 0x1

    goto :goto_a8

    .line 930
    .end local v10    # "segEnd":I
    :cond_c9
    sget-object v13, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_59
.end method

.method public final emitPushThis()V
    .registers 3

    .prologue
    .line 974
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 975
    return-void
.end method

.method public final emitPutField(Lgnu/bytecode/Field;)V
    .registers 3
    .param p1, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 1451
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1452
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1453
    const/16 v0, 0xb5

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1454
    return-void
.end method

.method public final emitPutStatic(Lgnu/bytecode/Field;)V
    .registers 3
    .param p1, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 1442
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1443
    const/16 v0, 0xb3

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1444
    return-void
.end method

.method final emitRawReturn()V
    .registers 3

    .prologue
    .line 2077
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/Type;->size:I

    if-nez v0, :cond_19

    .line 2079
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2080
    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2084
    :goto_15
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2085
    return-void

    .line 2083
    :cond_19
    const/16 v0, 0xac

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    goto :goto_15
.end method

.method public final emitRem()V
    .registers 2

    .prologue
    .line 1283
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitRet(Lgnu/bytecode/Variable;)V
    .registers 5
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    const/16 v2, 0xa9

    .line 1827
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1828
    .local v0, "offset":I
    const/16 v1, 0x100

    if-ge v0, v1, :cond_13

    .line 1830
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1831
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1832
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1841
    :goto_12
    return-void

    .line 1836
    :cond_13
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1837
    const/16 v1, 0xc4

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1838
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1839
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_12
.end method

.method public final emitReturn()V
    .registers 2

    .prologue
    .line 2070
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_9

    .line 2071
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 2072
    :cond_9
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitRawReturn()V

    .line 2073
    return-void
.end method

.method public final emitShl()V
    .registers 2

    .prologue
    .line 1288
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public final emitShr()V
    .registers 2

    .prologue
    .line 1289
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitStore(Lgnu/bytecode/Variable;)V
    .registers 8
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    .line 1365
    iget v1, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1366
    .local v1, "offset":I
    if-ltz v1, :cond_a

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1367
    :cond_a
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempting to store in unassigned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simple:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1369
    :cond_3b
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1370
    .local v2, "type":Lgnu/bytecode/Type;
    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 1371
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1372
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1373
    invoke-direct {p0, v2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v0

    .line 1374
    .local v0, "kind":I
    const/4 v3, 0x3

    if-gt v1, v3, :cond_5d

    .line 1375
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3b

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1378
    :goto_5c
    return-void

    .line 1377
    :cond_5d
    add-int/lit8 v3, v0, 0x36

    invoke-virtual {p0, v3, v1}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    goto :goto_5c
.end method

.method public emitStoreDefaultValue(Lgnu/bytecode/Variable;)V
    .registers 3
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    .line 968
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushDefaultValue(Lgnu/bytecode/Type;)V

    .line 969
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 970
    return-void
.end method

.method public final emitSub()V
    .registers 2

    .prologue
    .line 1279
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitSub(C)V
    .registers 3
    .param p1, "sig"    # C

    .prologue
    .line 1276
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitSub(Lgnu/bytecode/PrimType;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .prologue
    .line 1277
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitSwap()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 494
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 496
    .local v0, "type1":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 498
    .local v1, "type2":Lgnu/bytecode/Type;
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v4, :cond_15

    iget v2, v1, Lgnu/bytecode/Type;->size:I

    if-le v2, v4, :cond_22

    .line 502
    :cond_15
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 503
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 504
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 505
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 513
    :goto_21
    return-void

    .line 509
    :cond_22
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 510
    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 511
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_21
.end method

.method public emitTailCall(ZLgnu/bytecode/Scope;)V
    .registers 10
    .param p1, "pop_args"    # Z
    .param p2, "scope"    # Lgnu/bytecode/Scope;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 2459
    if-eqz p1, :cond_43

    .line 2461
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    .line 2462
    .local v2, "meth":Lgnu/bytecode/Method;
    iget v4, v2, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_22

    const/4 v0, 0x0

    .line 2463
    .local v0, "arg_slots":I
    :goto_10
    iget-object v4, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v4

    .local v1, "i":I
    :goto_13
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_26

    .line 2464
    iget-object v4, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v4, v4, v1

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    if-le v4, v6, :cond_24

    move v4, v5

    :goto_20
    add-int/2addr v0, v4

    goto :goto_13

    .end local v0    # "arg_slots":I
    .end local v1    # "i":I
    :cond_22
    move v0, v3

    .line 2462
    goto :goto_10

    .restart local v0    # "arg_slots":I
    .restart local v1    # "i":I
    :cond_24
    move v4, v3

    .line 2464
    goto :goto_20

    .line 2465
    :cond_26
    iget-object v4, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v4

    :goto_29
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_43

    .line 2467
    iget-object v4, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v4, v4, v1

    iget v4, v4, Lgnu/bytecode/Type;->size:I

    if-le v4, v6, :cond_41

    move v4, v5

    :goto_36
    sub-int/2addr v0, v4

    .line 2468
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_29

    :cond_41
    move v4, v3

    .line 2467
    goto :goto_36

    .line 2471
    .end local v0    # "arg_slots":I
    .end local v1    # "i":I
    .end local v2    # "meth":Lgnu/bytecode/Method;
    :cond_43
    iget-object v3, p2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2472
    return-void
.end method

.method public final emitThen()V
    .registers 3

    .prologue
    .line 1845
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1846
    return-void
.end method

.method public final emitThrow()V
    .registers 2

    .prologue
    .line 2042
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2044
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2045
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2046
    return-void
.end method

.method final emitTransfer(Lgnu/bytecode/Label;I)V
    .registers 4
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "opcode"    # I

    .prologue
    .line 1562
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1563
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1564
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1565
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1566
    return-void
.end method

.method public emitTryCatchEnd()V
    .registers 6

    .prologue
    .line 2405
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v3, :cond_9

    .line 2406
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 2407
    :cond_9
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v3, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2408
    .local v2, "vars":[Lgnu/bytecode/Variable;
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v3, :cond_28

    .line 2409
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2427
    :cond_16
    :goto_16
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-nez v3, :cond_1e

    if-eqz v2, :cond_21

    .line 2428
    :cond_1e
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2429
    :cond_21
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 2430
    return-void

    .line 2412
    :cond_28
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v3, v3, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2413
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v3, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2414
    if-eqz v2, :cond_49

    .line 2416
    array-length v0, v2

    .local v0, "i":I
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_49

    .line 2418
    aget-object v1, v2, v0

    .line 2419
    .local v1, "v":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_3d

    .line 2420
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_3d

    .line 2424
    .end local v0    # "i":I
    .end local v1    # "v":Lgnu/bytecode/Variable;
    :cond_49
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_16

    .line 2425
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_16
.end method

.method public emitTryEnd()V
    .registers 2

    .prologue
    .line 2242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2243
    return-void
.end method

.method public emitTryStart(ZLgnu/bytecode/Type;)V
    .registers 14
    .param p1, "has_finally"    # Z
    .param p2, "result_type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v8, 0x0

    .line 2197
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2198
    const/4 p2, 0x0

    .line 2199
    :cond_a
    const/4 v3, 0x0

    .line 2200
    .local v3, "savedStack":[Lgnu/bytecode/Variable;
    if-nez p2, :cond_11

    iget v9, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v9, :cond_14

    .line 2201
    :cond_11
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2202
    :cond_14
    iget v9, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v9, :cond_32

    .line 2204
    iget v9, p0, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v3, v9, [Lgnu/bytecode/Variable;

    .line 2205
    const/4 v0, 0x0

    .line 2206
    .local v0, "i":I
    :goto_1d
    iget v9, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v9, :cond_32

    .line 2208
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 2209
    .local v7, "var":Lgnu/bytecode/Variable;
    invoke-virtual {p0, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2210
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v7, v3, v0

    move v0, v1

    .line 2211
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1d

    .line 2213
    .end local v0    # "i":I
    .end local v7    # "var":Lgnu/bytecode/Variable;
    :cond_32
    new-instance v5, Lgnu/bytecode/TryState;

    invoke-direct {v5, p0}, Lgnu/bytecode/TryState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2214
    .local v5, "try_state":Lgnu/bytecode/TryState;
    iput-object v3, v5, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2216
    iget-object v9, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v9, :cond_62

    move v6, v8

    .line 2217
    .local v6, "usedLocals":I
    :goto_3e
    if-lez v6, :cond_48

    .line 2219
    iget-object v9, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v10, v6, -0x1

    aget-object v2, v9, v10

    .line 2220
    .local v2, "last":Lgnu/bytecode/Type;
    if-eqz v2, :cond_66

    .line 2225
    .end local v2    # "last":Lgnu/bytecode/Type;
    :cond_48
    if-nez v6, :cond_69

    .line 2226
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    .line 2232
    .local v4, "startLocals":[Lgnu/bytecode/Type;
    :goto_4c
    iget-object v8, v5, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iput-object v4, v8, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2234
    if-eqz p2, :cond_58

    .line 2235
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    iput-object v8, v5, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2236
    :cond_58
    if-eqz p1, :cond_61

    .line 2237
    new-instance v8, Lgnu/bytecode/Label;

    invoke-direct {v8}, Lgnu/bytecode/Label;-><init>()V

    iput-object v8, v5, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2238
    :cond_61
    return-void

    .line 2216
    .end local v4    # "startLocals":[Lgnu/bytecode/Type;
    .end local v6    # "usedLocals":I
    :cond_62
    iget-object v9, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v6, v9

    goto :goto_3e

    .line 2217
    .restart local v2    # "last":Lgnu/bytecode/Type;
    .restart local v6    # "usedLocals":I
    :cond_66
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 2229
    .end local v2    # "last":Lgnu/bytecode/Type;
    :cond_69
    new-array v4, v6, [Lgnu/bytecode/Type;

    .line 2230
    .restart local v4    # "startLocals":[Lgnu/bytecode/Type;
    iget-object v9, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    invoke-static {v9, v8, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c
.end method

.method public final emitUshr()V
    .registers 2

    .prologue
    .line 1290
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitWithCleanupCatch(Lgnu/bytecode/Variable;)V
    .registers 7
    .param p1, "catchVar"    # Lgnu/bytecode/Variable;

    .prologue
    const/4 v4, 0x0

    .line 2153
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2155
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v2, :cond_23

    .line 2157
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v1, v2, [Lgnu/bytecode/Type;

    .line 2158
    .local v1, "savedTypes":[Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    iput v4, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2163
    :goto_15
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v2, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2165
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object p1, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2166
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2167
    .local v0, "save_SP":I
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2168
    return-void

    .line 2162
    .end local v0    # "save_SP":I
    .end local v1    # "savedTypes":[Lgnu/bytecode/Type;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "savedTypes":[Lgnu/bytecode/Type;
    goto :goto_15
.end method

.method public emitWithCleanupDone()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2174
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2175
    .local v0, "catchVar":Lgnu/bytecode/Variable;
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2176
    if-eqz v0, :cond_f

    .line 2177
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2178
    :cond_f
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2180
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v2, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2181
    .local v1, "savedTypes":[Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2182
    if-eqz v1, :cond_33

    .line 2184
    array-length v2, v1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2185
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-lt v2, v3, :cond_2b

    .line 2186
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 2192
    :goto_2a
    return-void

    .line 2188
    :cond_2b
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    .line 2191
    :cond_33
    iput v4, p0, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_2a
.end method

.method public emitWithCleanupStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2142
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2143
    .local v0, "savedSP":I
    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2144
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2145
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2146
    return-void
.end method

.method public final emitXOr()V
    .registers 2

    .prologue
    .line 1286
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public endExitableBlock()V
    .registers 3

    .prologue
    .line 1608
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1609
    .local v0, "bl":Lgnu/bytecode/ExitableBlock;
    invoke-virtual {v0}, Lgnu/bytecode/ExitableBlock;->finish()V

    .line 1610
    iget-object v1, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1611
    return-void
.end method

.method public endFragment(I)V
    .registers 6
    .param p1, "cookie"    # I

    .prologue
    .line 3285
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v2, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    shl-int/lit8 v2, v2, 0x4

    or-int/lit8 v2, v2, 0xa

    aput v2, v1, p1

    .line 3286
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v0, v1, p1

    .line 3287
    .local v0, "after":Lgnu/bytecode/Label;
    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 3288
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3289
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .registers 3
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .prologue
    .line 629
    invoke-virtual {p1, p0}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 630
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 631
    return-void
.end method

.method final fixupAdd(IILgnu/bytecode/Label;)V
    .registers 12
    .param p1, "kind"    # I
    .param p2, "offset"    # I
    .param p3, "label"    # Lgnu/bytecode/Label;

    .prologue
    const/16 v7, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 144
    if-eqz p3, :cond_13

    if-eq p1, v5, :cond_13

    if-eqz p1, :cond_13

    const/4 v4, 0x2

    if-eq p1, v4, :cond_13

    const/16 v4, 0xb

    if-eq p1, v4, :cond_13

    .line 146
    iput-boolean v5, p3, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    .line 147
    :cond_13
    iget v0, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 148
    .local v0, "count":I
    if-nez v0, :cond_2f

    .line 150
    new-array v4, v7, [I

    iput-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 151
    new-array v4, v7, [Lgnu/bytecode/Label;

    iput-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 163
    :cond_1f
    :goto_1f
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v5, p2, 0x4

    or-int/2addr v5, p1

    aput v5, v4, v0

    .line 164
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aput-object p3, v4, v0

    .line 165
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 166
    return-void

    .line 153
    :cond_2f
    iget v4, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    array-length v5, v5

    if-ne v4, v5, :cond_1f

    .line 155
    mul-int/lit8 v2, v0, 0x2

    .line 156
    .local v2, "new_length":I
    new-array v1, v2, [Lgnu/bytecode/Label;

    .line 157
    .local v1, "new_labels":[Lgnu/bytecode/Label;
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    invoke-static {v4, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 159
    new-array v3, v2, [I

    .line 160
    .local v3, "new_offsets":[I
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    goto :goto_1f
.end method

.method public final fixupAdd(ILgnu/bytecode/Label;)V
    .registers 4
    .param p1, "kind"    # I
    .param p2, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 139
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 140
    return-void
.end method

.method public final fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .registers 5
    .param p1, "here"    # Lgnu/bytecode/Label;
    .param p2, "target"    # Lgnu/bytecode/Label;

    .prologue
    .line 130
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 131
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 132
    return-void
.end method

.method public getArg(I)Lgnu/bytecode/Variable;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getCode()[B
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    return-object v0
.end method

.method public getCodeLength()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getCurrentScope()Lgnu/bytecode/Scope;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    return-object v0
.end method

.method public final getCurrentTry()Lgnu/bytecode/TryState;
    .registers 2

    .prologue
    .line 2434
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    return-object v0
.end method

.method public getLabel()Lgnu/bytecode/Label;
    .registers 2

    .prologue
    .line 487
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    .line 488
    .local v0, "label":Lgnu/bytecode/Label;
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 489
    return-object v0
.end method

.method public final getLength()I
    .registers 3

    .prologue
    .line 2809
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-static {p0}, Lgnu/bytecode/Attribute;->getLengthAll(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxLocals()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return v0
.end method

.method public getMaxStack()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final getPC()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getSP()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    return v0
.end method

.method invert_opcode(B)B
    .registers 5
    .param p1, "opcode"    # B

    .prologue
    .line 257
    and-int/lit16 v0, p1, 0xff

    .line 258
    .local v0, "iopcode":I
    const/16 v1, 0x99

    if-lt v0, v1, :cond_a

    const/16 v1, 0xa6

    if-le v0, v1, :cond_12

    :cond_a
    const/16 v1, 0xc6

    if-lt v0, v1, :cond_16

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_16

    .line 260
    :cond_12
    xor-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    return v1

    .line 261
    :cond_16
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unknown opcode to invert_opcode"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isInTry()Z
    .registers 2

    .prologue
    .line 2441
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 670
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v2, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 671
    .local v0, "scope":Lgnu/bytecode/Scope;
    :goto_4
    if-eqz v0, :cond_10

    .line 673
    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 674
    .local v1, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_d

    .line 677
    .end local v1    # "var":Lgnu/bytecode/Variable;
    :goto_c
    return-object v1

    .line 671
    .restart local v1    # "var":Lgnu/bytecode/Variable;
    :cond_d
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_4

    .line 677
    .end local v1    # "var":Lgnu/bytecode/Variable;
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method noteParamTypes()V
    .registers 15

    .prologue
    .line 322
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v6

    .line 323
    .local v6, "method":Lgnu/bytecode/Method;
    const/4 v7, 0x0

    .line 324
    .local v7, "offset":I
    iget v12, v6, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_31

    .line 326
    iget-object v11, v6, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 327
    .local v11, "type":Lgnu/bytecode/Type;
    const-string v12, "<init>"

    invoke-virtual {v6}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    const-string v12, "java.lang.Object"

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2b

    .line 329
    check-cast v11, Lgnu/bytecode/ClassType;

    .end local v11    # "type":Lgnu/bytecode/Type;
    invoke-static {v11}, Lgnu/bytecode/UninitializedType;->uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;

    move-result-object v11

    .line 330
    .restart local v11    # "type":Lgnu/bytecode/Type;
    :cond_2b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    invoke-virtual {p0, v7, v11}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    move v7, v8

    .line 332
    .end local v8    # "offset":I
    .end local v11    # "type":Lgnu/bytecode/Type;
    .restart local v7    # "offset":I
    :cond_31
    iget-object v12, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v0, v12

    .line 333
    .local v0, "arg_count":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :goto_36
    if-ge v5, v0, :cond_50

    .line 335
    iget-object v12, v6, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v11, v12, v5

    .line 336
    .restart local v11    # "type":Lgnu/bytecode/Type;
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {p0, v8, v11}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 337
    invoke-virtual {v11}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v9

    .local v9, "size":I
    :goto_45
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_4c

    .line 338
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 333
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_36

    .line 340
    .end local v9    # "size":I
    .end local v11    # "type":Lgnu/bytecode/Type;
    :cond_50
    iget v12, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_97

    .line 342
    new-instance v12, Lgnu/bytecode/StackMapTableAttr;

    invoke-direct {v12}, Lgnu/bytecode/StackMapTableAttr;-><init>()V

    iput-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    .line 344
    add-int/lit8 v12, v8, 0x14

    new-array v4, v12, [I

    .line 345
    .local v4, "encodedLocals":[I
    const/4 v1, 0x0

    .line 346
    .local v1, "count":I
    const/4 v5, 0x0

    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_64
    if-ge v5, v8, :cond_82

    .line 348
    iget-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget-object v13, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13, p0}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v3

    .line 349
    .local v3, "encoded":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput v3, v4, v2

    .line 350
    and-int/lit16 v10, v3, 0xff

    .line 351
    .local v10, "tag":I
    const/4 v12, 0x3

    if-eq v10, v12, :cond_7c

    const/4 v12, 0x4

    if-ne v10, v12, :cond_7e

    .line 352
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    .line 346
    :cond_7e
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_64

    .line 354
    .end local v3    # "encoded":I
    .end local v10    # "tag":I
    :cond_82
    iget-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput-object v4, v12, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 355
    iget-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput v2, v12, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 356
    iget-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/16 v13, 0xa

    new-array v13, v13, [I

    iput-object v13, v12, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 357
    iget-object v12, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/4 v13, 0x0

    iput v13, v12, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 359
    .end local v2    # "count":I
    .end local v4    # "encodedLocals":[I
    :cond_97
    return-void
.end method

.method public noteVarType(ILgnu/bytecode/Type;)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 363
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v2

    .line 365
    .local v2, "size":I
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v4, :cond_48

    .line 366
    add-int v4, p1, v2

    add-int/lit8 v4, v4, 0x14

    new-array v4, v4, [Lgnu/bytecode/Type;

    iput-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 372
    :cond_12
    :goto_12
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object p2, v4, p1

    .line 373
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-nez v4, :cond_60

    .line 374
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 381
    :cond_21
    :goto_21
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, p1

    .line 382
    if-lez p1, :cond_3d

    .line 384
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v5, p1, -0x1

    aget-object v1, v4, v5

    .line 385
    .local v1, "prev":Lgnu/bytecode/Type;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3d

    .line 386
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v5, p1, -0x1

    aput-object v7, v4, v5

    .line 388
    .end local v1    # "prev":Lgnu/bytecode/Type;
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_75

    .line 389
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 p1, p1, 0x1

    aput-object v7, v4, p1

    goto :goto_3d

    .line 367
    :cond_48
    add-int v4, p1, v2

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-le v4, v5, :cond_12

    .line 368
    add-int v4, p1, v2

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [Lgnu/bytecode/Type;

    .line 369
    .local v0, "new_array":[Lgnu/bytecode/Type;
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    goto :goto_12

    .line 375
    .end local v0    # "new_array":[Lgnu/bytecode/Type;
    :cond_60
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v4, v4

    if-gt v4, p1, :cond_21

    .line 377
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    new-array v3, v4, [Z

    .line 378
    .local v3, "tmp":[Z
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    goto :goto_21

    .line 390
    .end local v3    # "tmp":[Z
    :cond_75
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .registers 4

    .prologue
    .line 650
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 651
    .local v0, "scope":Lgnu/bytecode/Scope;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 652
    invoke-virtual {v0, p0}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 653
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 654
    return-object v0
.end method

.method public final popType()Lgnu/bytecode/Type;
    .registers 5

    .prologue
    .line 441
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-gtz v1, :cond_21

    .line 442
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popType called with empty stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_21
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aget-object v0, v1, v2

    .line 444
    .local v0, "type":Lgnu/bytecode/Type;
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    .line 445
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-nez v1, :cond_43

    .line 446
    new-instance v1, Ljava/lang/Error;

    const-string v2, "missing void type on stack"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_43
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 9
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .prologue
    const v6, 0xffff

    .line 2835
    const-string v4, "Attribute \""

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2837
    const-string v4, "\", length:"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLength()I

    move-result v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2839
    const-string v4, ", max_stack:"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2840
    iget v4, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2841
    const-string v4, ", max_locals:"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2842
    iget v4, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2843
    const-string v4, ", code_length:"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v3

    .line 2845
    .local v3, "length":I
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 2846
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Lgnu/bytecode/CodeAttr;->disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V

    .line 2847
    iget v4, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    if-lez v4, :cond_a6

    .line 2849
    const-string v4, "Exceptions (count: "

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2850
    iget v4, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2851
    const-string v4, "):"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 2852
    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2853
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_55
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_a6

    .line 2855
    const-string v4, "  start: "

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2856
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v4, v4, v2

    and-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2857
    const-string v4, ", end: "

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2858
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x1

    aget-short v4, v4, v5

    and-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2859
    const-string v4, ", handler: "

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2860
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x2

    aget-short v4, v4, v5

    and-int/2addr v4, v6

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2861
    const-string v4, ", type: "

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x3

    aget-short v4, v4, v5

    and-int v0, v4, v6

    .line 2863
    .local v0, "catch_type_index":I
    if-nez v0, :cond_9e

    .line 2864
    const-string v4, "0 /* finally */"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2870
    :goto_98
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 2853
    add-int/lit8 v2, v2, 0x4

    goto :goto_55

    .line 2867
    :cond_9e
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 2868
    const/4 v4, 0x7

    invoke-virtual {p1, v0, v4}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_98

    .line 2873
    .end local v0    # "catch_type_index":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_a6
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 2874
    return-void
.end method

.method public processFixups()V
    .registers 33

    .prologue
    .line 2476
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v29, v0

    if-gtz v29, :cond_9

    .line 2776
    :goto_8
    return-void

    .line 2484
    :cond_9
    const/4 v5, 0x0

    .line 2485
    .local v5, "delta":I
    move-object/from16 v0, p0

    iget v8, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 2486
    .local v8, "instruction_tail":I
    const/16 v29, 0x9

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2489
    const/4 v7, 0x0

    .line 2491
    .local v7, "i":I
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    aget v19, v29, v7

    .line 2492
    .local v19, "offset":I
    and-int/lit8 v9, v19, 0xf

    .line 2493
    .local v9, "kind":I
    shr-int/lit8 v19, v19, 0x4

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v10, v29, v7

    .line 2495
    .local v10, "label":Lgnu/bytecode/Label;
    packed-switch v9, :pswitch_data_52c

    .line 2550
    :pswitch_37
    new-instance v29, Ljava/lang/Error;

    const-string v30, "unexpected fixup"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2498
    :pswitch_3f
    add-int/lit8 v7, v7, 0x2

    .line 2552
    :cond_41
    :goto_41
    :pswitch_41
    add-int/lit8 v7, v7, 0x1

    .line 2553
    goto :goto_20

    .line 2501
    :pswitch_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 2507
    :pswitch_47
    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    add-int v29, v29, v5

    move/from16 v0, v29

    iput v0, v10, Lgnu/bytecode/Label;->position:I

    goto :goto_41

    .line 2510
    :pswitch_52
    add-int/lit8 v5, v5, 0x3

    .line 2511
    goto :goto_41

    .line 2514
    :pswitch_55
    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v29, v0

    add-int/lit8 v30, v7, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8c

    add-int/lit8 v29, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v29

    add-int/lit8 v30, v19, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8c

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    shl-int/lit8 v30, v19, 0x4

    or-int/lit8 v30, v30, 0x8

    aput v30, v29, v7

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v30, v29, v7

    .line 2520
    add-int/lit8 v5, v5, -0x3

    .line 2521
    goto :goto_41

    .line 2525
    :cond_8c
    :pswitch_8c
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v29, v0

    const v30, 0x8000

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_41

    .line 2526
    add-int/lit8 v5, v5, 0x2

    goto :goto_41

    .line 2529
    :pswitch_9e
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v29, v0

    const v30, 0x8000

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_41

    .line 2530
    add-int/lit8 v5, v5, 0x5

    goto :goto_41

    .line 2533
    :pswitch_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    aget-object v30, v30, v31

    aput-object v30, v29, v8

    .line 2534
    move/from16 v8, v19

    .line 2537
    :pswitch_c4
    add-int/lit8 v29, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_129

    move-object/from16 v0, p0

    iget v4, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2539
    .local v4, "cur_pc":I
    :goto_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    shl-int/lit8 v30, v4, 0x4

    or-int/lit8 v30, v30, 0x9

    aput v30, v29, v7

    .line 2540
    if-nez v10, :cond_142

    .line 2558
    move-object/from16 v0, p0

    iget v15, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2560
    .local v15, "new_size":I
    const/4 v5, 0x0

    .line 2562
    const/4 v7, 0x0

    :goto_ea
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v7, v0, :cond_225

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    aget v19, v29, v7

    .line 2565
    and-int/lit8 v9, v19, 0xf

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v10, v29, v7

    .line 2567
    if-eqz v10, :cond_150

    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    if-gez v29, :cond_150

    .line 2568
    new-instance v29, Ljava/lang/Error;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "undefined label "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2537
    .end local v4    # "cur_pc":I
    .end local v15    # "new_size":I
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    add-int/lit8 v30, v7, 0x1

    aget-object v29, v29, v30

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v4

    goto :goto_d6

    .line 2544
    .restart local v4    # "cur_pc":I
    :cond_142
    iget v7, v10, Lgnu/bytecode/Label;->first_fixup:I

    .line 2545
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v18

    .line 2546
    .local v18, "next_pc":I
    add-int v29, v4, v5

    sub-int v5, v29, v18

    .line 2547
    goto/16 :goto_20

    .line 2572
    .end local v18    # "next_pc":I
    .restart local v15    # "new_size":I
    :cond_150
    :goto_150
    if-eqz v10, :cond_1ab

    const/16 v29, 0x4

    move/from16 v0, v29

    if-lt v9, v0, :cond_1ab

    const/16 v29, 0x7

    move/from16 v0, v29

    if-gt v9, v0, :cond_1ab

    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    aget v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v30, v0

    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v31, v0

    aget v30, v30, v31

    and-int/lit8 v30, v30, 0xf

    or-int/lit8 v30, v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1ab

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    aget-object v10, v29, v30

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aput-object v10, v29, v7

    goto :goto_150

    .line 2581
    :cond_1ab
    shr-int/lit8 v19, v19, 0x4

    .line 2582
    packed-switch v9, :pswitch_data_54e

    .line 2630
    :pswitch_1b0
    new-instance v29, Ljava/lang/Error;

    const-string v30, "unexpected fixup"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2585
    :pswitch_1b8
    add-int/lit8 v7, v7, 0x2

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v29, v29, v7

    add-int v30, v19, v5

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lgnu/bytecode/Label;->position:I

    .line 2632
    :goto_1ca
    :pswitch_1ca
    add-int/lit8 v7, v7, 0x1

    .line 2633
    goto/16 :goto_ea

    .line 2589
    :pswitch_1ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ca

    .line 2594
    :pswitch_1d1
    add-int/lit8 v5, v5, -0x3

    .line 2595
    add-int/lit8 v15, v15, -0x3

    .line 2596
    goto :goto_1ca

    .line 2598
    :pswitch_1d6
    add-int v29, v19, v5

    move/from16 v0, v29

    iput v0, v10, Lgnu/bytecode/Label;->position:I

    goto :goto_1ca

    .line 2601
    :pswitch_1dd
    add-int v29, v19, v5

    rsub-int/lit8 v29, v29, 0x3

    and-int/lit8 v24, v29, 0x3

    .line 2602
    .local v24, "padding":I
    add-int v5, v5, v24

    .line 2603
    add-int v15, v15, v24

    .line 2604
    goto :goto_1ca

    .line 2608
    .end local v24    # "padding":I
    :pswitch_1e8
    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    add-int v30, v19, v5

    sub-int v27, v29, v30

    .line 2609
    .local v27, "rel":I
    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v27

    if-ne v0, v1, :cond_208

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    shl-int/lit8 v30, v19, 0x4

    or-int/lit8 v30, v30, 0x7

    aput v30, v29, v7

    goto :goto_1ca

    .line 2615
    :cond_208
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v9, v0, :cond_21d

    const/16 v29, 0x5

    :goto_210
    add-int v5, v5, v29

    .line 2616
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v9, v0, :cond_220

    const/16 v29, 0x5

    :goto_21a
    add-int v15, v15, v29

    .line 2618
    goto :goto_1ca

    .line 2615
    :cond_21d
    const/16 v29, 0x2

    goto :goto_210

    .line 2616
    :cond_220
    const/16 v29, 0x2

    goto :goto_21a

    .line 2620
    .end local v27    # "rel":I
    :pswitch_223
    if-nez v10, :cond_257

    .line 2635
    :cond_225
    new-array v12, v15, [B

    .line 2636
    .local v12, "new_code":[B
    const/16 v26, -0x1

    .line 2637
    .local v26, "prev_linenumber":I
    const/4 v13, 0x0

    .line 2638
    .local v13, "new_pc":I
    const/16 v16, 0x0

    .line 2639
    .local v16, "next_fixup_index":I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v17

    .line 2640
    .local v17, "next_fixup_offset":I
    const/16 v20, -0x1

    .line 2641
    .local v20, "oldPC":I
    const/16 v25, 0x0

    .line 2643
    .local v25, "pendingStackMapLabel":Lgnu/bytecode/Label;
    const/16 v21, 0x0

    .local v21, "old_pc":I
    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .local v22, "old_pc":I
    move v14, v13

    .line 2645
    .end local v13    # "new_pc":I
    .local v14, "new_pc":I
    :goto_23f
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_265

    .line 2646
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v29, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    aget-byte v29, v29, v22

    aput-byte v29, v12, v14

    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    move v14, v13

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    goto :goto_23f

    .line 2624
    .end local v12    # "new_code":[B
    .end local v14    # "new_pc":I
    .end local v16    # "next_fixup_index":I
    .end local v17    # "next_fixup_offset":I
    .end local v20    # "oldPC":I
    .end local v22    # "old_pc":I
    .end local v25    # "pendingStackMapLabel":Lgnu/bytecode/Label;
    .end local v26    # "prev_linenumber":I
    :cond_257
    iget v7, v10, Lgnu/bytecode/Label;->first_fixup:I

    .line 2625
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v18

    .line 2626
    .restart local v18    # "next_pc":I
    add-int v29, v19, v5

    sub-int v5, v29, v18

    .line 2627
    goto/16 :goto_ea

    .line 2649
    .end local v18    # "next_pc":I
    .restart local v12    # "new_code":[B
    .restart local v14    # "new_pc":I
    .restart local v16    # "next_fixup_index":I
    .restart local v17    # "next_fixup_offset":I
    .restart local v20    # "oldPC":I
    .restart local v22    # "old_pc":I
    .restart local v25    # "pendingStackMapLabel":Lgnu/bytecode/Label;
    .restart local v26    # "prev_linenumber":I
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    move-object/from16 v29, v0

    aget v29, v29, v16

    and-int/lit8 v9, v29, 0xf

    .line 2650
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v10, v29, v16

    .line 2651
    if-eqz v25, :cond_294

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v14, :cond_294

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V

    .line 2655
    const/16 v25, 0x0

    .line 2657
    :cond_294
    if-eqz v25, :cond_2a8

    move-object/from16 v0, v25

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v0, v14, :cond_2a8

    .line 2659
    new-instance v29, Ljava/lang/Error;

    const-string v30, "labels out of order"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2660
    :cond_2a8
    packed-switch v9, :pswitch_data_570

    .line 2763
    :pswitch_2ab
    new-instance v29, Ljava/lang/Error;

    const-string v30, "unexpected fixup"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    :pswitch_2b3
    move/from16 v21, v22

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2765
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    :cond_2b6
    :goto_2b6
    add-int/lit8 v16, v16, 0x1

    .line 2766
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v17

    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    move v14, v13

    .line 2767
    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    goto/16 :goto_23f

    .line 2665
    :pswitch_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v29, v0

    if-eqz v29, :cond_526

    if-eqz v10, :cond_526

    iget-object v0, v10, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v29, v0

    if-eqz v29, :cond_526

    iget-boolean v0, v10, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    move/from16 v29, v0

    if-eqz v29, :cond_526

    .line 2667
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v25

    move/from16 v21, v22

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto :goto_2b6

    .line 2672
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :pswitch_2e7
    add-int/lit8 v21, v22, 0x3

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2673
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto :goto_2b6

    .line 2675
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :pswitch_2eb
    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    sub-int v5, v29, v14

    .line 2676
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v29, v0

    aget-byte v29, v29, v22

    aput-byte v29, v12, v14

    .line 2677
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    shr-int/lit8 v29, v5, 0x8

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v13

    .line 2678
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v14

    .line 2679
    add-int/lit8 v21, v22, 0x3

    .line 2680
    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    goto :goto_2b6

    .line 2684
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :pswitch_318
    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    sub-int v5, v29, v14

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v29, v0

    aget-byte v23, v29, v22

    .line 2686
    .local v23, "opcode":B
    const/16 v29, 0x6

    move/from16 v0, v29

    if-ne v9, v0, :cond_37d

    .line 2689
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->invert_opcode(B)B

    move-result v23

    .line 2690
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    aput-byte v23, v12, v14

    .line 2691
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    const/16 v29, 0x0

    aput-byte v29, v12, v13

    .line 2692
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    const/16 v29, 0x8

    aput-byte v29, v12, v14

    .line 2693
    const/16 v23, -0x38

    .line 2700
    :goto_346
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    aput-byte v23, v12, v13

    .line 2701
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    shr-int/lit8 v29, v5, 0x18

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v14

    .line 2702
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    shr-int/lit8 v29, v5, 0x10

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v13

    .line 2703
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    shr-int/lit8 v29, v5, 0x8

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v14

    .line 2704
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v13

    .line 2705
    add-int/lit8 v21, v22, 0x3

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2706
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto/16 :goto_2b6

    .line 2698
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :cond_37d
    add-int/lit8 v29, v23, 0x21

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v23, v0

    move v13, v14

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto :goto_346

    .line 2708
    .end local v13    # "new_pc":I
    .end local v23    # "opcode":B
    .restart local v14    # "new_pc":I
    :pswitch_386
    rsub-int/lit8 v29, v14, 0x3

    and-int/lit8 v24, v29, 0x3

    .line 2709
    .restart local v24    # "padding":I
    move/from16 v28, v14

    .line 2710
    .local v28, "switch_start":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v29, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    aget-byte v29, v29, v22

    aput-byte v29, v12, v14

    move v14, v13

    .line 2711
    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    :goto_39b
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_523

    .line 2712
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    const/16 v29, 0x0

    aput-byte v29, v12, v14

    move v14, v13

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    goto :goto_39b

    .line 2720
    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    :cond_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v29, v29, v16

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    sub-int v5, v29, v28

    .line 2722
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    shr-int/lit8 v29, v5, 0x18

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v14

    .line 2723
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    shr-int/lit8 v29, v5, 0x10

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v13

    .line 2724
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    shr-int/lit8 v29, v5, 0x8

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v14

    .line 2725
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v12, v13

    .line 2726
    add-int/lit8 v21, v22, 0x4

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2714
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    :goto_3e8
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_2b6

    add-int/lit8 v29, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupKind(I)I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2b6

    .line 2716
    add-int/lit8 v16, v16, 0x1

    .line 2717
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v19

    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    move v14, v13

    .line 2718
    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    :goto_413
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_3a7

    .line 2719
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->code:[B

    move-object/from16 v29, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    aget-byte v29, v29, v22

    aput-byte v29, v12, v14

    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    move v14, v13

    .end local v13    # "new_pc":I
    .restart local v14    # "new_pc":I
    goto :goto_413

    .line 2730
    .end local v24    # "padding":I
    .end local v28    # "switch_start":I
    :pswitch_42b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    add-int/lit8 v30, v16, 0x2

    aget-object v10, v29, v30

    .line 2731
    add-int/lit8 v29, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v6

    .line 2732
    .local v6, "handler_type_index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    move-object/from16 v29, v0

    if-eqz v29, :cond_44f

    .line 2733
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v25

    .line 2735
    :cond_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    aget-object v29, v29, v16

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    move-object/from16 v30, v0

    add-int/lit8 v31, v16, 0x1

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v14, v6}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 2739
    add-int/lit8 v16, v16, 0x2

    move/from16 v21, v22

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2740
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto/16 :goto_2b6

    .line 2742
    .end local v6    # "handler_type_index":I
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :pswitch_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v29, v0

    if-nez v29, :cond_494

    .line 2743
    new-instance v29, Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2744
    :cond_494
    add-int/lit8 v16, v16, 0x1

    .line 2745
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v11

    .line 2746
    .local v11, "linenumber":I
    move/from16 v0, v26

    if-eq v11, v0, :cond_4ad

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v14}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2748
    :cond_4ad
    move/from16 v26, v11

    move/from16 v21, v22

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .line 2749
    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto/16 :goto_2b6

    .line 2751
    .end local v11    # "linenumber":I
    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :pswitch_4b4
    if-nez v10, :cond_4df

    .line 2769
    if-eq v15, v14, :cond_4fd

    .line 2770
    new-instance v29, Ljava/lang/Error;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "PC confusion new_pc:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " new_size:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2755
    :cond_4df
    iget v0, v10, Lgnu/bytecode/Label;->first_fixup:I

    move/from16 v16, v0

    .line 2756
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v21

    .line 2757
    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move/from16 v17, v21

    .line 2758
    iget v0, v10, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v14, :cond_51f

    .line 2759
    new-instance v29, Ljava/lang/Error;

    const-string v30, "bad pc"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2771
    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    :cond_4fd
    move-object/from16 v0, p0

    iput v15, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2772
    move-object/from16 v0, p0

    iput-object v12, v0, Lgnu/bytecode/CodeAttr;->code:[B

    .line 2773
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 2774
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 2775
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    goto/16 :goto_8

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    :cond_51f
    move/from16 v22, v21

    .end local v21    # "old_pc":I
    .restart local v22    # "old_pc":I
    goto/16 :goto_23f

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    .restart local v24    # "padding":I
    .restart local v28    # "switch_start":I
    :cond_523
    move v13, v14

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto/16 :goto_3e8

    .end local v13    # "new_pc":I
    .end local v21    # "old_pc":I
    .end local v24    # "padding":I
    .end local v28    # "switch_start":I
    .restart local v14    # "new_pc":I
    .restart local v22    # "old_pc":I
    :cond_526
    move/from16 v21, v22

    .end local v22    # "old_pc":I
    .restart local v21    # "old_pc":I
    move v13, v14

    .end local v14    # "new_pc":I
    .restart local v13    # "new_pc":I
    goto/16 :goto_2b6

    .line 2495
    nop

    :pswitch_data_52c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_47
        :pswitch_52
        :pswitch_41
        :pswitch_55
        :pswitch_8c
        :pswitch_9e
        :pswitch_37
        :pswitch_41
        :pswitch_c4
        :pswitch_b0
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_44
    .end packed-switch

    .line 2582
    :pswitch_data_54e
    .packed-switch 0x0
        :pswitch_1ca
        :pswitch_1d6
        :pswitch_1dd
        :pswitch_1ca
        :pswitch_1e8
        :pswitch_1e8
        :pswitch_1e8
        :pswitch_1b0
        :pswitch_1d1
        :pswitch_223
        :pswitch_1b0
        :pswitch_1b8
        :pswitch_1b0
        :pswitch_1b0
        :pswitch_1ce
    .end packed-switch

    .line 2660
    :pswitch_data_570
    .packed-switch 0x0
        :pswitch_2b3
        :pswitch_2c5
        :pswitch_386
        :pswitch_2ab
        :pswitch_318
        :pswitch_318
        :pswitch_318
        :pswitch_2eb
        :pswitch_2e7
        :pswitch_4b4
        :pswitch_2ab
        :pswitch_42b
        :pswitch_2ab
        :pswitch_2ab
        :pswitch_47d
    .end packed-switch
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .registers 4

    .prologue
    .line 635
    new-instance v0, Lgnu/bytecode/Scope;

    invoke-direct {v0}, Lgnu/bytecode/Scope;-><init>()V

    .line 636
    .local v0, "scope":Lgnu/bytecode/Scope;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-nez v1, :cond_14

    .line 637
    new-instance v1, Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 638
    :cond_14
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 639
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v1, :cond_21

    .line 640
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iput-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 641
    :cond_21
    return-object v0
.end method

.method public final pushType(Lgnu/bytecode/Type;)V
    .registers 6
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v3, 0x0

    .line 423
    iget v1, p1, Lgnu/bytecode/Type;->size:I

    if-nez v1, :cond_d

    .line 424
    new-instance v1, Ljava/lang/Error;

    const-string v2, "pushing void type onto stack"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_d
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-nez v1, :cond_43

    .line 426
    :cond_16
    const/16 v1, 0x14

    new-array v1, v1, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 432
    :cond_1c
    :goto_1c
    iget v1, p1, Lgnu/bytecode/Type;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 433
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    aput-object v3, v1, v2

    .line 434
    :cond_2e
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aput-object p1, v1, v2

    .line 435
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget v2, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    if-le v1, v2, :cond_42

    .line 436
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    .line 437
    :cond_42
    return-void

    .line 427
    :cond_43
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-lt v1, v2, :cond_1c

    .line 428
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 429
    .local v0, "new_array":[Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_1c
.end method

.method public final put1(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 272
    return-void
.end method

.method public final put2(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 281
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 283
    return-void
.end method

.method public final put4(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 292
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 295
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 297
    return-void
.end method

.method public final putIndex2(Lgnu/bytecode/CpoolEntry;)V
    .registers 3
    .param p1, "cnst"    # Lgnu/bytecode/CpoolEntry;

    .prologue
    .line 301
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 302
    return-void
.end method

.method public final putLineNumber(I)V
    .registers 4
    .param p1, "linenumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(I)I

    move-result p1

    .line 315
    :cond_b
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 316
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 317
    return-void
.end method

.method public final putLineNumber(Ljava/lang/String;I)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "linenumber"    # I

    .prologue
    .line 306
    if-eqz p1, :cond_b

    .line 307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 308
    :cond_b
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 309
    return-void
.end method

.method public final reachableHere()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final reserve(I)V
    .registers 6
    .param p1, "bytes"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    if-nez v1, :cond_c

    .line 245
    add-int/lit8 v1, p1, 0x64

    new-array v1, v1, [B

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    .line 252
    :cond_b
    :goto_b
    return-void

    .line 246
    :cond_c
    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v2, v2

    if-le v1, v2, :cond_b

    .line 248
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    new-array v0, v1, [B

    .line 249
    .local v0, "new_code":[B
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    goto :goto_b
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .registers 2
    .param p1, "attributes"    # Lgnu/bytecode/Attribute;

    .prologue
    .line 26
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setCode([B)V
    .registers 3
    .param p1, "code"    # [B

    .prologue
    .line 225
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v0, p1

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setCodeLength(I)V
    .registers 2
    .param p1, "len"    # I

    .prologue
    .line 229
    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setMaxLocals(I)V
    .registers 2
    .param p1, "n"    # I

    .prologue
    .line 216
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return-void
.end method

.method public setMaxStack(I)V
    .registers 2
    .param p1, "n"    # I

    .prologue
    .line 214
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return-void
.end method

.method public final setReachable(Z)V
    .registers 3
    .param p1, "val"    # Z

    .prologue
    .line 205
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setTypes(Lgnu/bytecode/Label;)V
    .registers 4
    .param p1, "label"    # Lgnu/bytecode/Label;

    .prologue
    .line 395
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 396
    return-void
.end method

.method public final setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .registers 9
    .param p1, "labelLocals"    # [Lgnu/bytecode/Type;
    .param p2, "labelStack"    # [Lgnu/bytecode/Type;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 401
    array-length v2, p2

    .line 402
    .local v2, "usedStack":I
    array-length v1, p1

    .line 403
    .local v1, "usedLocals":I
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_1c

    .line 405
    if-lez v1, :cond_f

    .line 406
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_f
    move v0, v1

    .local v0, "i":I
    :goto_10
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-ge v0, v3, :cond_1c

    .line 408
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object v5, v3, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 410
    .end local v0    # "i":I
    :cond_1c
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-le v2, v3, :cond_31

    .line 411
    :cond_25
    new-array v3, v2, [Lgnu/bytecode/Type;

    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 417
    :cond_29
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    invoke-static {p2, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 419
    return-void

    .line 414
    :cond_31
    move v0, v2

    .restart local v0    # "i":I
    :goto_32
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    if-ge v0, v3, :cond_29

    .line 415
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aput-object v5, v3, v0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public final setUnreachable()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;
    .registers 5
    .param p1, "resultType"    # Lgnu/bytecode/Type;
    .param p2, "runFinallyBlocks"    # Z

    .prologue
    .line 1598
    new-instance v0, Lgnu/bytecode/ExitableBlock;

    invoke-direct {v0, p1, p0, p2}, Lgnu/bytecode/ExitableBlock;-><init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V

    .line 1599
    .local v0, "bl":Lgnu/bytecode/ExitableBlock;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    .line 1600
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1601
    return-object v0
.end method

.method public startSwitch()Lgnu/bytecode/SwitchState;
    .registers 2

    .prologue
    .line 2449
    new-instance v0, Lgnu/bytecode/SwitchState;

    invoke-direct {v0, p0}, Lgnu/bytecode/SwitchState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2450
    .local v0, "sw":Lgnu/bytecode/SwitchState;
    invoke-virtual {v0, p0}, Lgnu/bytecode/SwitchState;->switchValuePushed(Lgnu/bytecode/CodeAttr;)V

    .line 2451
    return-object v0
.end method

.method public final topType()Lgnu/bytecode/Type;
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method useJsr()Z
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 7
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2815
    iget v2, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2816
    iget v2, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2817
    iget v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2818
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->code:[B

    const/4 v3, 0x0

    iget v4, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2820
    iget v2, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2821
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2822
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_48

    .line 2824
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2825
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x1

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2826
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x2

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2827
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x3

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2822
    add-int/lit8 v1, v1, 0x4

    goto :goto_1f

    .line 2830
    :cond_48
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 2831
    return-void
.end method
