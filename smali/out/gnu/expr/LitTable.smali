.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lgnu/mapping/Table2D;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    const/16 v2, 0x14

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 82
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 83
    new-array v0, v2, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 47
    iput-object p1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 48
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    .line 49
    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "ignore"    # Z
    .param p3, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 528
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_10

    .line 530
    if-nez p2, :cond_b

    .line 531
    iget-object v0, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 532
    :cond_b
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 534
    :cond_10
    iget v0, p1, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lgnu/expr/Literal;->flags:I

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public emit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v0, "init":Lgnu/expr/Literal;
    :goto_2
    if-eqz v0, :cond_c

    .line 67
    iget-object v1, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_2

    .line 71
    :cond_c
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_e
    if-eqz v0, :cond_17

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 72
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_e

    .line 78
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lgnu/expr/LitTable;->literalsCount:I

    .line 80
    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .registers 26
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "ignore"    # Z

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 540
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_18

    .line 542
    if-nez p2, :cond_17

    .line 543
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 685
    :cond_17
    :goto_17
    return-void

    .line 545
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_38

    .line 547
    if-nez p2, :cond_17

    .line 548
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_17

    .line 550
    :cond_38
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_50

    .line 552
    if-nez p2, :cond_17

    .line 553
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_17

    .line 555
    :cond_50
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v20, v0

    if-eqz v20, :cond_ab

    .line 557
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v12, v0

    .line 558
    .local v12, "len":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    check-cast v20, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 559
    .local v9, "elementType":Lgnu/bytecode/Type;
    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 560
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 562
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_83
    if-ge v10, v12, :cond_17

    .line 564
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v20, v0

    aget-object v8, v20, v10

    check-cast v8, Lgnu/expr/Literal;

    .line 565
    .local v8, "el":Lgnu/expr/Literal;
    iget-object v0, v8, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_98

    .line 562
    :goto_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 567
    :cond_98
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 568
    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 569
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 570
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    goto :goto_95

    .line 573
    .end local v8    # "el":Lgnu/expr/Literal;
    .end local v9    # "elementType":Lgnu/bytecode/Type;
    .end local v10    # "i":I
    .end local v12    # "len":I
    :cond_ab
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v20, v0

    if-eqz v20, :cond_d9

    .line 575
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    check-cast v20, Lgnu/bytecode/ArrayType;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_17

    .line 578
    :cond_d9
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_15c

    .line 580
    move-object/from16 v0, p1

    iget-object v5, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    .line 581
    .local v5, "clas":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_148

    .line 583
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, "cname":Ljava/lang/String;
    const-string v20, "int"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_103

    .line 585
    const-string v6, "integer"

    .line 586
    :cond_103
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "java.lang."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    const-string v21, "TYPE"

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 593
    .end local v6    # "cname":Ljava/lang/String;
    :goto_13d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_17

    .line 592
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v21, v0

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v20

    check-cast v20, Lgnu/bytecode/ObjectType;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_13d

    .line 595
    .end local v5    # "clas":Ljava/lang/Class;
    :cond_15c
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v20, v0

    if-eqz v20, :cond_1b8

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lgnu/bytecode/ClassType;

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v20

    if-nez v20, :cond_1b8

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lgnu/bytecode/ClassType;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 602
    sget-object v20, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v21, "valueOf"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 603
    .local v14, "meth":Lgnu/bytecode/Method;
    if-nez v14, :cond_1a3

    .line 604
    sget-object v20, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v21, "make"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 605
    :cond_1a3
    invoke-virtual {v7, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 606
    sget-object v20, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_17

    .line 611
    .end local v14    # "meth":Lgnu/bytecode/Method;
    :cond_1b8
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v18, v0

    check-cast v18, Lgnu/bytecode/ClassType;

    .line 612
    .local v18, "type":Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x4

    if-eqz v20, :cond_2be

    const/16 v19, 0x1

    .line 613
    .local v19, "useDefaultInit":Z
    :goto_1cc
    const/4 v15, 0x0

    .line 614
    .local v15, "method":Lgnu/bytecode/Method;
    const/4 v13, 0x0

    .line 615
    .local v13, "makeStatic":Z
    if-nez v19, :cond_229

    .line 620
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v20, v0

    if-nez v20, :cond_1f0

    .line 621
    const-string v20, "valueOf"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 622
    :cond_1f0
    if-nez v15, :cond_222

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v20, v0

    if-nez v20, :cond_222

    .line 626
    const-string v16, "make"

    .line 628
    .local v16, "mname":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/util/regex/Pattern;

    move/from16 v20, v0

    if-eqz v20, :cond_212

    .line 629
    const-string v16, "compile"

    .line 631
    :cond_212
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 634
    .end local v16    # "mname":Ljava/lang/String;
    :cond_222
    if-eqz v15, :cond_2c2

    .line 635
    const/4 v13, 0x1

    .line 639
    :cond_225
    :goto_225
    if-nez v15, :cond_229

    .line 640
    const/16 v19, 0x1

    .line 642
    :cond_229
    if-eqz v19, :cond_23d

    .line 644
    const-string v20, "set"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 647
    :cond_23d
    if-nez v15, :cond_26c

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_26c

    .line 648
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "no method to construct "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 649
    :cond_26c
    if-eqz v13, :cond_2e3

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 652
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 668
    :goto_278
    if-nez v13, :cond_288

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v20, v0

    if-eqz v20, :cond_318

    :cond_288
    const/16 v17, 0x0

    .line 671
    .local v17, "resolveMethod":Lgnu/bytecode/Method;
    :goto_28a
    if-eqz v17, :cond_296

    .line 673
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 674
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 676
    :cond_296
    if-eqz p2, :cond_328

    if-eqz v19, :cond_29c

    if-nez v15, :cond_328

    :cond_29c
    const/16 v20, 0x1

    :goto_29e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 677
    if-eqz v19, :cond_17

    if-eqz v15, :cond_17

    .line 679
    if-nez p2, :cond_2b2

    .line 680
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 681
    :cond_2b2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 682
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_17

    .line 612
    .end local v13    # "makeStatic":Z
    .end local v15    # "method":Lgnu/bytecode/Method;
    .end local v17    # "resolveMethod":Lgnu/bytecode/Method;
    .end local v19    # "useDefaultInit":Z
    :cond_2be
    const/16 v19, 0x0

    goto/16 :goto_1cc

    .line 636
    .restart local v13    # "makeStatic":Z
    .restart local v15    # "method":Lgnu/bytecode/Method;
    .restart local v19    # "useDefaultInit":Z
    :cond_2c2
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_225

    .line 637
    const-string v20, "<init>"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    goto/16 :goto_225

    .line 654
    :cond_2e3
    if-eqz v19, :cond_302

    .line 656
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 657
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 658
    const-string v20, "<init>"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    .line 659
    .local v11, "init0":Lgnu/bytecode/Method;
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_278

    .line 663
    .end local v11    # "init0":Lgnu/bytecode/Method;
    :cond_302
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 664
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 666
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_278

    .line 668
    :cond_318
    const-string v20, "readResolve"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v17

    goto/16 :goto_28a

    .line 676
    .restart local v17    # "resolveMethod":Lgnu/bytecode/Method;
    :cond_328
    const/16 v20, 0x0

    goto/16 :goto_29e
.end method

.method error(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .registers 19
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 294
    if-nez p1, :cond_5

    .line 295
    sget-object v8, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    .line 353
    :cond_4
    :goto_4
    return-object v8

    .line 296
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/Literal;

    .line 297
    .local v8, "literal":Lgnu/expr/Literal;
    if-nez v8, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v13, v13, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v13, :cond_25

    .line 300
    new-instance v8, Lgnu/expr/Literal;

    .end local v8    # "literal":Lgnu/expr/Literal;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v8, v0, v1}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    goto :goto_4

    .line 301
    .restart local v8    # "literal":Lgnu/expr/Literal;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 302
    .local v11, "valueClass":Ljava/lang/Class;
    invoke-static {v11}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v12

    .line 304
    .local v12, "valueType":Lgnu/bytecode/Type;
    sget-object v14, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    monitor-enter v14

    .line 306
    :try_start_30
    sget-object v13, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v15, v1}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lgnu/expr/Literal;

    move-object v8, v0

    .line 307
    if-eqz v8, :cond_49

    iget-object v13, v8, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_cc

    :cond_49
    instance-of v13, v12, Lgnu/bytecode/ClassType;

    if-eqz v13, :cond_cc

    .line 311
    const/16 v9, 0x19

    .line 312
    .local v9, "needed_mod":I
    move-object v4, v11

    .line 313
    .local v4, "fldClass":Ljava/lang/Class;
    move-object v0, v12

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v5, v0

    .line 314
    .local v5, "fldType":Lgnu/bytecode/ClassType;
    :goto_54
    sget-object v13, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v15, v0}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_cc

    .line 317
    sget-object v13, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v15, v4}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v3

    .line 319
    .local v3, "fld":Lgnu/bytecode/Field;
    :goto_6d
    if-eqz v3, :cond_c6

    .line 321
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_72
    .catchall {:try_start_30 .. :try_end_72} :catchall_c3

    move-result v13

    and-int/2addr v13, v9

    if-ne v13, v9, :cond_87

    .line 325
    :try_start_76
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v10

    .line 326
    .local v10, "rfld":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 327
    .local v7, "litValue":Ljava/lang/Object;
    if-eqz v7, :cond_87

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_84} :catch_9f
    .catchall {:try_start_76 .. :try_end_84} :catchall_c3

    move-result v13

    if-nez v13, :cond_8c

    .line 319
    .end local v7    # "litValue":Ljava/lang/Object;
    .end local v10    # "rfld":Ljava/lang/reflect/Field;
    :cond_87
    :goto_87
    :try_start_87
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_c3

    move-result-object v3

    goto :goto_6d

    .line 330
    .restart local v7    # "litValue":Ljava/lang/Object;
    .restart local v10    # "rfld":Ljava/lang/reflect/Field;
    :cond_8c
    :try_start_8c
    new-instance v6, Lgnu/expr/Literal;

    move-object/from16 v0, p0

    invoke-direct {v6, v7, v3, v0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 331
    .local v6, "lit":Lgnu/expr/Literal;
    sget-object v13, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15, v6}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_99} :catch_9f
    .catchall {:try_start_8c .. :try_end_99} :catchall_c3

    .line 332
    move-object/from16 v0, p1

    if-ne v0, v7, :cond_87

    .line 333
    move-object v8, v6

    goto :goto_87

    .line 335
    .end local v6    # "lit":Lgnu/expr/Literal;
    .end local v7    # "litValue":Ljava/lang/Object;
    .end local v10    # "rfld":Ljava/lang/reflect/Field;
    :catch_9f
    move-exception v2

    .line 337
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_a0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "caught "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " getting static field "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto :goto_87

    .line 347
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "fld":Lgnu/bytecode/Field;
    .end local v4    # "fldClass":Ljava/lang/Class;
    .end local v5    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "needed_mod":I
    :catchall_c3
    move-exception v13

    monitor-exit v14
    :try_end_c5
    .catchall {:try_start_a0 .. :try_end_c5} :catchall_c3

    throw v13

    .line 341
    .restart local v3    # "fld":Lgnu/bytecode/Field;
    .restart local v4    # "fldClass":Ljava/lang/Class;
    .restart local v5    # "fldType":Lgnu/bytecode/ClassType;
    .restart local v9    # "needed_mod":I
    :cond_c6
    :try_start_c6
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 342
    if-nez v4, :cond_da

    .line 347
    .end local v3    # "fld":Lgnu/bytecode/Field;
    .end local v4    # "fldClass":Ljava/lang/Class;
    .end local v5    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "needed_mod":I
    :cond_cc
    monitor-exit v14
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_c3

    .line 349
    if-eqz v8, :cond_e2

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 344
    .restart local v3    # "fld":Lgnu/bytecode/Field;
    .restart local v4    # "fldClass":Ljava/lang/Class;
    .restart local v5    # "fldType":Lgnu/bytecode/ClassType;
    .restart local v9    # "needed_mod":I
    :cond_da
    :try_start_da
    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    .end local v5    # "fldType":Lgnu/bytecode/ClassType;
    check-cast v5, Lgnu/bytecode/ClassType;
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_c3

    .restart local v5    # "fldType":Lgnu/bytecode/ClassType;
    goto/16 :goto_54

    .line 352
    .end local v3    # "fld":Lgnu/bytecode/Field;
    .end local v4    # "fldClass":Ljava/lang/Class;
    .end local v5    # "fldType":Lgnu/bytecode/ClassType;
    .end local v9    # "needed_mod":I
    :cond_e2
    new-instance v8, Lgnu/expr/Literal;

    .end local v8    # "literal":Lgnu/expr/Literal;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v8, v0, v12, v1}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    .restart local v8    # "literal":Lgnu/expr/Literal;
    goto/16 :goto_4
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .registers 43
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "literal"    # Lgnu/expr/Literal;
    .param p4, "isStatic"    # Z

    .prologue
    .line 359
    move-object/from16 v0, p3

    iget-object v7, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 360
    .local v7, "argTypes":[Lgnu/bytecode/Type;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v26

    .line 361
    .local v26, "method":Lgnu/bytecode/Method;
    array-length v6, v7

    .line 362
    .local v6, "argLength":I
    const/4 v15, 0x0

    .line 363
    .local v15, "best":Lgnu/bytecode/Method;
    const-wide/16 v16, 0x0

    .line 364
    .local v16, "bestArrayArgs":J
    const/4 v5, 0x0

    .line 365
    .local v5, "ambiguous":Z
    const/4 v14, 0x0

    .line 367
    .local v14, "bParameters":[Lgnu/bytecode/Type;
    :goto_e
    if-eqz v26, :cond_144

    .line 369
    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_23

    .line 367
    :cond_1e
    :goto_1e
    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v26

    goto :goto_e

    .line 371
    :cond_23
    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v27

    .line 372
    .local v27, "mstatic":Z
    move/from16 v0, p4

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 375
    const-wide/16 v12, 0x0

    .line 376
    .local v12, "arrayArgs":J
    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v25

    .line 377
    .local v25, "mParameters":[Lgnu/bytecode/Type;
    const/16 v21, 0x0

    .local v21, "iarg":I
    const/16 v22, 0x0

    .line 380
    .local v22, "iparam":I
    :goto_37
    move/from16 v0, v21

    if-ne v0, v6, :cond_9a

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v22

    move/from16 v1, v33

    if-ne v0, v1, :cond_9a

    .line 382
    if-eqz v15, :cond_54

    const-wide/16 v34, 0x0

    cmp-long v33, v16, v34

    if-eqz v33, :cond_5b

    const-wide/16 v34, 0x0

    cmp-long v33, v12, v34

    if-nez v33, :cond_5b

    .line 384
    :cond_54
    move-object/from16 v15, v26

    .line 385
    move-object/from16 v14, v25

    .line 386
    move-wide/from16 v16, v12

    goto :goto_1e

    .line 388
    :cond_5b
    const-wide/16 v34, 0x0

    cmp-long v33, v12, v34

    if-nez v33, :cond_1e

    .line 393
    const/16 v28, 0x0

    .line 395
    .local v28, "not1":Z
    const/16 v29, 0x0

    .line 396
    .local v29, "not2":Z
    move/from16 v24, v6

    .local v24, "j":I
    :cond_67
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_7f

    .line 398
    aget-object v33, v14, v24

    aget-object v34, v25, v24

    invoke-virtual/range {v33 .. v34}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v18

    .line 399
    .local v18, "c":I
    const/16 v33, 0x1

    move/from16 v0, v18

    move/from16 v1, v33

    if-eq v0, v1, :cond_8b

    .line 401
    const/16 v29, 0x1

    .line 402
    if-eqz v28, :cond_8b

    .line 412
    .end local v18    # "c":I
    :cond_7f
    :goto_7f
    if-eqz v28, :cond_85

    .line 414
    move-object/from16 v15, v26

    .line 415
    move-object/from16 v14, v25

    .line 417
    :cond_85
    if-eqz v28, :cond_98

    if-eqz v29, :cond_98

    const/4 v5, 0x1

    .line 418
    :goto_8a
    goto :goto_1e

    .line 405
    .restart local v18    # "c":I
    :cond_8b
    const/16 v33, -0x1

    move/from16 v0, v18

    move/from16 v1, v33

    if-eq v0, v1, :cond_67

    .line 407
    const/16 v28, 0x1

    .line 408
    if-eqz v29, :cond_67

    goto :goto_7f

    .line 417
    .end local v18    # "c":I
    :cond_98
    const/4 v5, 0x0

    goto :goto_8a

    .line 421
    .end local v24    # "j":I
    .end local v28    # "not1":Z
    .end local v29    # "not2":Z
    :cond_9a
    move/from16 v0, v21

    if-eq v0, v6, :cond_1e

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v22

    move/from16 v1, v33

    if-eq v0, v1, :cond_1e

    .line 423
    aget-object v4, v7, v21

    .line 424
    .local v4, "aType":Lgnu/bytecode/Type;
    aget-object v30, v25, v22

    .line 425
    .local v30, "pType":Lgnu/bytecode/Type;
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v33

    if-eqz v33, :cond_bb

    .line 378
    .end local v30    # "pType":Lgnu/bytecode/Type;
    :goto_b5
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_37

    .line 427
    .restart local v30    # "pType":Lgnu/bytecode/Type;
    :cond_bb
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v33, v0

    if-eqz v33, :cond_1e

    const/16 v33, 0x40

    move/from16 v0, v22

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    sget-object v33, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v33

    if-eq v4, v0, :cond_d7

    sget-object v33, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v33

    if-ne v4, v0, :cond_1e

    .line 430
    :cond_d7
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v33, v0

    aget-object v33, v33, v21

    check-cast v33, Ljava/lang/Number;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 431
    .local v19, "count":I
    if-gez v19, :cond_f7

    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v34, "gnu.math.IntNum"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f7

    .line 432
    const/high16 v33, -0x80000000

    sub-int v19, v19, v33

    .line 433
    :cond_f7
    check-cast v30, Lgnu/bytecode/ArrayType;

    .end local v30    # "pType":Lgnu/bytecode/Type;
    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v20

    .line 434
    .local v20, "elementType":Lgnu/bytecode/Type;
    if-ltz v19, :cond_1e

    add-int v33, v21, v19

    move/from16 v0, v33

    if-ge v0, v6, :cond_1e

    .line 438
    move/from16 v24, v19

    .restart local v24    # "j":I
    :cond_107
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_135

    .line 440
    add-int v33, v21, v24

    add-int/lit8 v33, v33, 0x1

    aget-object v31, v7, v33

    .line 441
    .local v31, "t":Lgnu/bytecode/Type;
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v33, v0

    if-eqz v33, :cond_129

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_107

    goto/16 :goto_1e

    :cond_129
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v33

    if-nez v33, :cond_107

    goto/16 :goto_1e

    .line 446
    .end local v31    # "t":Lgnu/bytecode/Type;
    :cond_135
    add-int v21, v21, v19

    .line 447
    const/16 v33, 0x1

    shl-int v33, v33, v22

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v12, v12, v34

    goto/16 :goto_b5

    .line 456
    .end local v4    # "aType":Lgnu/bytecode/Type;
    .end local v12    # "arrayArgs":J
    .end local v19    # "count":I
    .end local v20    # "elementType":Lgnu/bytecode/Type;
    .end local v21    # "iarg":I
    .end local v22    # "iparam":I
    .end local v24    # "j":I
    .end local v25    # "mParameters":[Lgnu/bytecode/Type;
    .end local v27    # "mstatic":Z
    :cond_144
    if-eqz v5, :cond_148

    .line 457
    const/4 v15, 0x0

    .line 509
    .end local v15    # "best":Lgnu/bytecode/Method;
    :cond_147
    :goto_147
    return-object v15

    .line 458
    .restart local v15    # "best":Lgnu/bytecode/Method;
    :cond_148
    const-wide/16 v34, 0x0

    cmp-long v33, v16, v34

    if-eqz v33, :cond_147

    .line 460
    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v9, v0, [Ljava/lang/Object;

    .line 461
    .local v9, "args":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v32, v0

    .line 462
    .local v32, "types":[Lgnu/bytecode/Type;
    const/16 v21, 0x0

    .restart local v21    # "iarg":I
    const/16 v22, 0x0

    .line 465
    .restart local v22    # "iparam":I
    :goto_162
    move/from16 v0, v21

    if-ne v0, v6, :cond_171

    .line 506
    move-object/from16 v0, p3

    iput-object v9, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 507
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    goto :goto_147

    .line 467
    :cond_171
    aget-object v30, v14, v22

    .line 468
    .restart local v30    # "pType":Lgnu/bytecode/Type;
    const/16 v33, 0x1

    shl-int v33, v33, v22

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v34, v34, v16

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_19d

    .line 470
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v33, v0

    aget-object v33, v33, v21

    aput-object v33, v9, v22

    .line 471
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v33, v0

    aget-object v33, v33, v21

    aput-object v33, v32, v22

    .line 463
    :goto_198
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v22, v22, 0x1

    goto :goto_162

    .line 475
    :cond_19d
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v33, v0

    aget-object v33, v33, v21

    check-cast v33, Ljava/lang/Number;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 476
    .restart local v19    # "count":I
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v34, "gnu.math.IntNum"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 477
    .local v23, "isIntNum":Z
    if-eqz v23, :cond_1bb

    .line 478
    const/high16 v33, -0x80000000

    sub-int v19, v19, v33

    :cond_1bb
    move-object/from16 v33, v30

    .line 479
    check-cast v33, Lgnu/bytecode/ArrayType;

    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v20

    .line 480
    .restart local v20    # "elementType":Lgnu/bytecode/Type;
    aput-object v30, v32, v22

    .line 481
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v33

    aput-object v33, v9, v22

    .line 483
    move-object/from16 v0, p3

    iget-object v8, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 484
    .local v8, "argValues":[Ljava/lang/Object;
    if-eqz v23, :cond_1f6

    .line 489
    aget-object v33, v9, v22

    check-cast v33, [I

    move-object/from16 v10, v33

    check-cast v10, [I

    .line 490
    .local v10, "arr":[I
    move/from16 v24, v19

    .restart local v24    # "j":I
    :goto_1e3
    if-lez v24, :cond_20e

    .line 491
    sub-int v34, v19, v24

    add-int v33, v21, v24

    aget-object v33, v8, v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    aput v33, v10, v34

    .line 490
    add-int/lit8 v24, v24, -0x1

    goto :goto_1e3

    .line 496
    .end local v10    # "arr":[I
    .end local v24    # "j":I
    :cond_1f6
    move/from16 v24, v19

    .restart local v24    # "j":I
    :goto_1f8
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_20e

    .line 497
    aget-object v33, v9, v22

    add-int/lit8 v34, v21, 0x1

    add-int v34, v34, v24

    aget-object v34, v8, v34

    move-object/from16 v0, v33

    move/from16 v1, v24

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1f8

    .line 499
    :cond_20e
    new-instance v11, Lgnu/expr/Literal;

    aget-object v33, v9, v22

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-direct {v11, v0, v1}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 500
    .local v11, "arrayLiteral":Lgnu/expr/Literal;
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v33, v0

    if-eqz v33, :cond_22b

    .line 501
    aget-object v33, v9, v22

    check-cast v33, [Ljava/lang/Object;

    check-cast v33, [Ljava/lang/Object;

    move-object/from16 v0, v33

    iput-object v0, v11, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 502
    :cond_22b
    aput-object v11, v9, v22

    .line 503
    add-int v21, v21, v19

    goto/16 :goto_198
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v4, 0x0

    .line 88
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    iget-object v3, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_28

    .line 90
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 91
    .local v1, "newValues":[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 92
    .local v0, "newTypes":[Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 97
    .end local v0    # "newTypes":[Lgnu/bytecode/Type;
    .end local v1    # "newValues":[Ljava/lang/Object;
    :cond_28
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p1, v2, v3

    .line 98
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p2, v2, v3

    .line 99
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 100
    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .registers 10
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 514
    iget-object v0, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 515
    .local v0, "argTypes":[Lgnu/bytecode/Type;
    array-length v2, v0

    .line 516
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_24

    .line 518
    iget-object v4, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 519
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Literal;

    if-eqz v4, :cond_17

    .line 520
    check-cast v3, Lgnu/expr/Literal;

    .end local v3    # "value":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 516
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 522
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_17
    iget-object v4, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    new-instance v5, Lgnu/expr/StackTarget;

    aget-object v6, v0, v1

    invoke-direct {v5, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_14

    .line 524
    .end local v3    # "value":Ljava/lang/Object;
    :cond_24
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "cannot handle call to write(int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "cannot handle call to write(byte[]) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "cannot handle call to write(byte[],int,int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    .line 137
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 138
    return-void
.end method

.method public writeByte(I)V
    .registers 4
    .param p1, "v"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "cannot handle call to writeBytes(String) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeChar(I)V
    .registers 4
    .param p1, "v"    # I

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Character;

    int-to-char v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 143
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 183
    return-void
.end method

.method public writeDouble(D)V
    .registers 6
    .param p1, "v"    # D

    .prologue
    .line 172
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 173
    return-void
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "v"    # F

    .prologue
    .line 167
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 168
    return-void
.end method

.method public writeInt(I)V
    .registers 4
    .param p1, "v"    # I

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 158
    return-void
.end method

.method public writeLong(J)V
    .registers 6
    .param p1, "v"    # J

    .prologue
    .line 162
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 163
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v3

    .line 197
    .local v3, "lit":Lgnu/expr/Literal;
    iget v7, v3, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_2a

    .line 201
    iget-object v7, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v7, :cond_18

    if-eqz p1, :cond_18

    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_18

    .line 203
    invoke-virtual {v3, p0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 204
    :cond_18
    iget v7, v3, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_24

    .line 205
    iget v7, v3, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v3, Lgnu/expr/Literal;->flags:I

    .line 289
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_24
    :goto_24
    iget-object v7, v3, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v3, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 290
    return-void

    .line 209
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2a
    iget v7, v3, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v3, Lgnu/expr/Literal;->flags:I

    .line 210
    iget v5, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 211
    .local v5, "oldStack":I
    instance-of v7, p1, Lgnu/lists/FString;

    if-eqz v7, :cond_60

    move-object v7, p1

    check-cast v7, Lgnu/lists/FString;

    invoke-virtual {v7}, Lgnu/lists/FString;->size()I

    move-result v7

    const v8, 0xffff

    if-ge v7, v8, :cond_60

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 273
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4b
    :goto_4b
    iget v7, p0, Lgnu/expr/LitTable;->stackPointer:I

    sub-int v4, v7, v5

    .line 274
    .local v4, "nargs":I
    if-nez v4, :cond_141

    .line 276
    sget-object v7, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v7, v3, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 277
    sget-object v7, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v7, v3, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 287
    :goto_59
    iget v7, v3, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Lgnu/expr/Literal;->flags:I

    goto :goto_24

    .line 216
    .end local v4    # "nargs":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_60
    instance-of v7, p1, Ljava/io/Externalizable;

    if-eqz v7, :cond_6a

    .line 218
    check-cast p1, Ljava/io/Externalizable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_4b

    .line 220
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6a
    instance-of v7, p1, [Ljava/lang/Object;

    if-eqz v7, :cond_7f

    .line 222
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 223
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    array-length v7, v0

    if-ge v2, v7, :cond_4b

    .line 225
    aget-object v7, v0, v2

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 228
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7f
    if-eqz p1, :cond_4b

    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_4b

    iget-object v7, v3, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v7, v7, Lgnu/bytecode/ArrayType;

    if-nez v7, :cond_4b

    .line 233
    instance-of v7, p1, Ljava/math/BigInteger;

    if-eqz v7, :cond_97

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto :goto_4b

    .line 237
    :cond_97
    instance-of v7, p1, Ljava/math/BigDecimal;

    if-eqz v7, :cond_ad

    move-object v1, p1

    .line 239
    check-cast v1, Ljava/math/BigDecimal;

    .line 241
    .local v1, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeInt(I)V

    goto :goto_4b

    .line 247
    .end local v1    # "dec":Ljava/math/BigDecimal;
    :cond_ad
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_b7

    .line 248
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_4b

    .line 249
    :cond_b7
    instance-of v7, p1, Ljava/lang/Short;

    if-eqz v7, :cond_c1

    .line 250
    sget-object v7, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_4b

    .line 251
    :cond_c1
    instance-of v7, p1, Ljava/lang/Byte;

    if-eqz v7, :cond_cb

    .line 252
    sget-object v7, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_4b

    .line 253
    :cond_cb
    instance-of v7, p1, Ljava/lang/Long;

    if-eqz v7, :cond_d6

    .line 254
    sget-object v7, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 255
    :cond_d6
    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_e1

    .line 256
    sget-object v7, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 257
    :cond_e1
    instance-of v7, p1, Ljava/lang/Float;

    if-eqz v7, :cond_ec

    .line 258
    sget-object v7, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 259
    :cond_ec
    instance-of v7, p1, Ljava/lang/Character;

    if-eqz v7, :cond_f7

    .line 260
    sget-object v7, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 261
    :cond_f7
    instance-of v7, p1, Ljava/lang/Class;

    if-eqz v7, :cond_102

    .line 262
    sget-object v7, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 264
    :cond_102
    instance-of v7, p1, Ljava/util/regex/Pattern;

    if-eqz v7, :cond_121

    move-object v6, p1

    .line 266
    check-cast v6, Ljava/util/regex/Pattern;

    .line 267
    .local v6, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 268
    invoke-virtual {v6}, Ljava/util/regex/Pattern;->flags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_4b

    .line 272
    .end local v6    # "pat":Ljava/util/regex/Pattern;
    :cond_121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement Externalizable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 281
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v4    # "nargs":I
    :cond_141
    new-array v7, v4, [Ljava/lang/Object;

    iput-object v7, v3, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 282
    new-array v7, v4, [Lgnu/bytecode/Type;

    iput-object v7, v3, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 283
    iget-object v7, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget-object v8, v3, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    invoke-static {v7, v5, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v7, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget-object v8, v3, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v7, v5, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iput v5, p0, Lgnu/expr/LitTable;->stackPointer:I

    goto/16 :goto_59
.end method

.method public writeShort(I)V
    .registers 4
    .param p1, "v"    # I

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Short;

    int-to-short v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 153
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 178
    return-void
.end method
