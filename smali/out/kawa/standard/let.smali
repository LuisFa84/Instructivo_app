.class public Lkawa/standard/let;
.super Lkawa/lang/Syntax;
.source "let.java"


# static fields
.field public static final let:Lkawa/standard/let;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lkawa/standard/let;

    invoke-direct {v0}, Lkawa/standard/let;-><init>()V

    sput-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    .line 18
    sget-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    const-string v1, "let"

    invoke-virtual {v0, v1}, Lkawa/standard/let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 31
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 22
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_13

    .line 23
    const-string v25, "missing let arguments"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    .line 136
    :goto_12
    return-object v16

    :cond_13
    move-object/from16 v18, p1

    .line 24
    check-cast v18, Lgnu/lists/Pair;

    .line 25
    .local v18, "pair":Lgnu/lists/Pair;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 26
    .local v9, "bindings":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 27
    .local v10, "body":Ljava/lang/Object;
    invoke-static {v9}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v12

    .line 28
    .local v12, "decl_count":I
    if-gez v12, :cond_30

    .line 29
    const-string v25, "bindings not a proper list"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto :goto_12

    .line 31
    :cond_30
    new-array v15, v12, [Lgnu/expr/Expression;

    .line 32
    .local v15, "inits":[Lgnu/expr/Expression;
    new-instance v16, Lgnu/expr/LetExp;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 33
    .local v16, "let":Lgnu/expr/LetExp;
    const/16 v19, 0x0

    .line 34
    .local v19, "renamedAliases":Ljava/util/Stack;
    const/16 v20, 0x0

    .line 35
    .local v20, "renamedAliasesCount":I
    const/16 v23, 0x0

    .line 36
    .local v23, "syntaxRest":Lkawa/lang/SyntaxForm;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_40
    if-ge v13, v12, :cond_240

    .line 38
    :goto_42
    instance-of v0, v9, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_51

    move-object/from16 v23, v9

    .line 40
    check-cast v23, Lkawa/lang/SyntaxForm;

    .line 41
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_42

    :cond_51
    move-object v5, v9

    .line 45
    check-cast v5, Lgnu/lists/Pair;

    .line 46
    .local v5, "bind_pair":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 47
    .local v6, "bind_pair_car":Ljava/lang/Object;
    move-object/from16 v22, v23

    .line 48
    .local v22, "syntax":Lkawa/lang/SyntaxForm;
    instance-of v0, v6, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_68

    move-object/from16 v22, v6

    .line 50
    check-cast v22, Lkawa/lang/SyntaxForm;

    .line 51
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    .line 53
    :cond_68
    instance-of v0, v6, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_8c

    .line 54
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "let binding is not a pair:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto :goto_12

    :cond_8c
    move-object v7, v6

    .line 55
    check-cast v7, Lgnu/lists/Pair;

    .line 56
    .local v7, "binding":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 58
    .local v17, "name":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_e6

    move-object/from16 v21, v17

    .line 60
    check-cast v21, Lkawa/lang/SyntaxForm;

    .line 61
    .local v21, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 62
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v24

    .line 66
    .end local v21    # "sf":Lkawa/lang/SyntaxForm;
    .local v24, "templateScope":Lkawa/lang/TemplateScope;
    :goto_a7
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 67
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v25, v0

    if-nez v25, :cond_f0

    .line 68
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "variable "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " in let binding is not a symbol: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto/16 :goto_12

    .line 65
    .end local v24    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_e6
    if-nez v22, :cond_eb

    const/16 v24, 0x0

    .restart local v24    # "templateScope":Lkawa/lang/TemplateScope;
    :goto_ea
    goto :goto_a7

    .end local v24    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_eb
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v24

    goto :goto_ea

    .line 70
    .restart local v24    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_f0
    invoke-virtual/range {v16 .. v17}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    .line 71
    .local v11, "decl":Lgnu/expr/Declaration;
    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 72
    if-eqz v24, :cond_114

    .line 74
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 75
    .local v4, "alias":Lgnu/expr/Declaration;
    if-nez v19, :cond_10d

    .line 76
    new-instance v19, Ljava/util/Stack;

    .end local v19    # "renamedAliases":Ljava/util/Stack;
    invoke-direct/range {v19 .. v19}, Ljava/util/Stack;-><init>()V

    .line 77
    .restart local v19    # "renamedAliases":Ljava/util/Stack;
    :cond_10d
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v20, v20, 0x1

    .line 81
    .end local v4    # "alias":Lgnu/expr/Declaration;
    :cond_114
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 82
    .local v8, "binding_cdr":Ljava/lang/Object;
    :goto_118
    instance-of v0, v8, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_127

    move-object/from16 v22, v8

    .line 84
    check-cast v22, Lkawa/lang/SyntaxForm;

    .line 85
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_118

    .line 87
    :cond_127
    instance-of v0, v8, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-nez v25, :cond_154

    .line 88
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "let has no value for \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto/16 :goto_12

    :cond_154
    move-object v7, v8

    .line 89
    check-cast v7, Lgnu/lists/Pair;

    .line 90
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 92
    :goto_15b
    instance-of v0, v8, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_16a

    move-object/from16 v22, v8

    .line 94
    check-cast v22, Lkawa/lang/SyntaxForm;

    .line 95
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_15b

    .line 97
    :cond_16a
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v25

    const-string v26, "::"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b0

    .line 99
    instance-of v0, v8, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_191

    move-object v7, v8

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_19d

    .line 101
    :cond_191
    const-string v25, "missing type after \'::\' in let"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto/16 :goto_12

    .line 102
    :cond_19d
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 103
    :goto_1a1
    instance-of v0, v8, Lkawa/lang/SyntaxForm;

    move/from16 v25, v0

    if-eqz v25, :cond_1b0

    move-object/from16 v22, v8

    .line 105
    check-cast v22, Lkawa/lang/SyntaxForm;

    .line 106
    invoke-interface/range {v22 .. v22}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1a1

    .line 109
    :cond_1b0
    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    if-ne v8, v0, :cond_1ee

    .line 111
    move-object v14, v7

    .line 121
    .local v14, "init":Lgnu/lists/Pair;
    :goto_1b7
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v25

    aput-object v25, v15, v13

    .line 122
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    sget-object v26, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_231

    .line 123
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "junk after declaration of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto/16 :goto_12

    .line 113
    .end local v14    # "init":Lgnu/lists/Pair;
    :cond_1ee
    instance-of v0, v8, Lgnu/lists/Pair;

    move/from16 v25, v0

    if-eqz v25, :cond_20a

    .line 115
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 116
    const-wide/16 v26, 0x2000

    move-wide/from16 v0, v26

    invoke-virtual {v11, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    move-object v14, v8

    .line 117
    check-cast v14, Lgnu/lists/Pair;

    .restart local v14    # "init":Lgnu/lists/Pair;
    goto :goto_1b7

    .line 120
    .end local v14    # "init":Lgnu/lists/Pair;
    :cond_20a
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "let binding for \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' is improper list"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    goto/16 :goto_12

    .line 124
    .restart local v14    # "init":Lgnu/lists/Pair;
    :cond_231
    aget-object v25, v15, v13

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 36
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_40

    .line 128
    .end local v5    # "bind_pair":Lgnu/lists/Pair;
    .end local v6    # "bind_pair_car":Ljava/lang/Object;
    .end local v7    # "binding":Lgnu/lists/Pair;
    .end local v8    # "binding_cdr":Ljava/lang/Object;
    .end local v11    # "decl":Lgnu/expr/Declaration;
    .end local v14    # "init":Lgnu/lists/Pair;
    .end local v17    # "name":Ljava/lang/Object;
    .end local v22    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v24    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_240
    move/from16 v13, v20

    :goto_242
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_254

    .line 129
    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lgnu/expr/Declaration;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_242

    .line 131
    :cond_254
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 132
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 133
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    goto/16 :goto_12
.end method
