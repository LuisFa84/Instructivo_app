.class public Lkawa/standard/prim_method;
.super Lkawa/lang/Syntax;
.source "prim_method.java"


# static fields
.field public static final interface_method:Lkawa/standard/prim_method;

.field public static final op1:Lkawa/standard/prim_method;

.field private static pattern3:Lkawa/lang/Pattern;

.field private static pattern4:Lkawa/lang/Pattern;

.field public static final static_method:Lkawa/standard/prim_method;

.field public static final virtual_method:Lkawa/standard/prim_method;


# instance fields
.field op_code:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb6

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    .line 11
    sget-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-virtual-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb8

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    .line 14
    sget-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-static-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb9

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    .line 17
    sget-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-interface-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkawa/standard/prim_method;

    invoke-direct {v0}, Lkawa/standard/prim_method;-><init>()V

    sput-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    .line 20
    sget-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    const-string v1, "primitive-op1"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    .line 23
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "opcode"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 31
    iput p1, p0, Lkawa/standard/prim_method;->op_code:I

    .line 32
    return-void
.end method


# virtual methods
.method opcode()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lkawa/standard/prim_method;->op_code:I

    return v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 21
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 40
    const/4 v3, 0x4

    new-array v13, v3, [Ljava/lang/Object;

    .line 41
    .local v13, "match":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v3, v0, Lkawa/standard/prim_method;->op_code:I

    if-nez v3, :cond_39

    sget-object v3, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13, v5}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 46
    :cond_14
    const/4 v3, 0x3

    aget-object v3, v13, v3

    instance-of v3, v3, Lgnu/lists/LList;

    if-nez v3, :cond_76

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing/invalid parameter list in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 95
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_38
    return-object v3

    .line 41
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_39
    sget-object v3, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13, v5}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 43
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong number of arguments to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(opcode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lkawa/standard/prim_method;->op_code:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_38

    .line 48
    :cond_76
    const/4 v3, 0x3

    aget-object v8, v13, v3

    check-cast v8, Lgnu/lists/LList;

    .line 50
    .local v8, "argp":Lgnu/lists/LList;
    invoke-virtual {v8}, Lgnu/lists/LList;->size()I

    move-result v14

    .line 51
    .local v14, "narg":I
    new-array v7, v14, [Lgnu/bytecode/Type;

    .line 52
    .local v7, "args":[Lgnu/bytecode/Type;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_82
    if-ge v12, v14, :cond_9b

    move-object/from16 v16, v8

    .line 54
    check-cast v16, Lgnu/lists/Pair;

    .line 55
    .local v16, "p":Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v7, v12

    .line 56
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "argp":Lgnu/lists/LList;
    check-cast v8, Lgnu/lists/LList;

    .line 52
    .restart local v8    # "argp":Lgnu/lists/LList;
    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    .line 58
    .end local v16    # "p":Lgnu/lists/Pair;
    :cond_9b
    new-instance v3, Lgnu/lists/Pair;

    const/4 v5, 0x2

    aget-object v5, v13, v5

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v3, v5, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v6

    .line 60
    .local v6, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget v3, v0, Lkawa/standard/prim_method;->op_code:I

    if-nez v3, :cond_ca

    .line 62
    const/4 v3, 0x1

    aget-object v3, v13, v3

    check-cast v3, Ljava/lang/Number;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 63
    .local v15, "opcode":I
    new-instance v2, Lgnu/expr/PrimProcedure;

    invoke-direct {v2, v15, v6, v7}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 95
    .end local v15    # "opcode":I
    .end local p1    # "obj":Ljava/lang/Object;
    .local v2, "proc":Lgnu/expr/PrimProcedure;
    :goto_c3
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_38

    .line 67
    .end local v2    # "proc":Lgnu/expr/PrimProcedure;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_ca
    const/4 v4, 0x0

    .line 68
    .local v4, "cl":Lgnu/bytecode/ClassType;
    check-cast p1, Lgnu/lists/Pair;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v10

    .line 69
    .local v10, "ctype":Lgnu/bytecode/Type;
    if-eqz v10, :cond_db

    .line 70
    invoke-virtual {v10}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 73
    :cond_db
    :try_start_db
    move-object v0, v10

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v4, v0

    .line 74
    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e2} :catch_114

    .line 89
    :goto_e2
    const/4 v3, 0x1

    aget-object v3, v13, v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_103

    const/4 v3, 0x1

    aget-object v16, v13, v3

    check-cast v16, Lgnu/lists/Pair;

    .restart local v16    # "p":Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "quote"

    if-ne v3, v5, :cond_103

    .line 91
    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v13, v5

    .line 92
    .end local v16    # "p":Lgnu/lists/Pair;
    :cond_103
    new-instance v2, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, p0

    iget v3, v0, Lkawa/standard/prim_method;->op_code:I

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .restart local v2    # "proc":Lgnu/expr/PrimProcedure;
    goto :goto_c3

    .line 76
    .end local v2    # "proc":Lgnu/expr/PrimProcedure;
    :catch_114
    move-exception v11

    .line 79
    .local v11, "ex":Ljava/lang/Exception;
    if-nez v4, :cond_135

    .line 80
    const/16 v9, 0x65

    .line 86
    .local v9, "code":C
    :goto_119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown class: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_e2

    .line 83
    .end local v9    # "code":C
    :cond_135
    const/16 v9, 0x77

    .line 84
    .restart local v9    # "code":C
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    goto :goto_119
.end method
