.class public Lgnu/kawa/functions/CompileNamedPart;
.super Ljava/lang/Object;
.source "CompileNamedPart.java"


# static fields
.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 309
    const-string v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .registers 6
    .param p0, "part1"    # Lgnu/expr/Expression;
    .param p1, "part2"    # Lgnu/expr/Expression;

    .prologue
    .line 228
    invoke-virtual {p1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    .local v1, "name2":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_3b

    instance-of v2, p0, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_15

    move-object v2, p0

    check-cast v2, Lgnu/expr/ReferenceExp;

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name1":Ljava/lang/String;
    if-nez v0, :cond_1f

    .end local v0    # "name1":Ljava/lang/String;
    :cond_15
    instance-of v2, p0, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v2, :cond_3b

    check-cast p0, Lgnu/kawa/functions/GetNamedExp;

    .end local p0    # "part1":Lgnu/expr/Expression;
    iget-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    .restart local v0    # "name1":Ljava/lang/String;
    if-eqz v0, :cond_3b

    .line 233
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 234
    .end local v0    # "name1":Ljava/lang/String;
    :goto_3a
    return-object v2

    :cond_3b
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 4
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "member"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 17
    .param p0, "clas"    # Lgnu/expr/Expression;
    .param p1, "member"    # Lgnu/expr/Expression;

    .prologue
    .line 185
    invoke-static/range {p0 .. p1}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "combinedName":Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 187
    .local v4, "env":Lgnu/mapping/Environment;
    if-eqz v2, :cond_38

    .line 189
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v12

    check-cast v12, Lkawa/lang/Translator;

    .line 190
    .local v12, "tr":Lkawa/lang/Translator;
    sget-object v13, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v13, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 191
    .local v11, "symbol":Lgnu/mapping/Symbol;
    iget-object v13, v12, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v3

    .line 192
    .local v3, "decl":Lgnu/expr/Declaration;
    invoke-static {v3}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 193
    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 221
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v11    # "symbol":Lgnu/mapping/Symbol;
    .end local v12    # "tr":Lkawa/lang/Translator;
    :goto_28
    return-object v5

    .line 195
    .restart local v3    # "decl":Lgnu/expr/Declaration;
    .restart local v11    # "symbol":Lgnu/mapping/Symbol;
    .restart local v12    # "tr":Lkawa/lang/Translator;
    :cond_29
    const/4 v7, 0x0

    .line 196
    .local v7, "property":Ljava/lang/Object;
    if-eqz v11, :cond_38

    invoke-virtual {v4, v11, v7}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 197
    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    goto :goto_28

    .line 199
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v7    # "property":Ljava/lang/Object;
    .end local v11    # "symbol":Lgnu/mapping/Symbol;
    .end local v12    # "tr":Lkawa/lang/Translator;
    :cond_38
    instance-of v13, p0, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_67

    move-object v8, p0

    check-cast v8, Lgnu/expr/ReferenceExp;

    .local v8, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v13

    if-eqz v13, :cond_67

    .line 202
    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    .line 203
    .local v9, "rsym":Ljava/lang/Object;
    instance-of v13, v9, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_78

    check-cast v9, Lgnu/mapping/Symbol;

    .end local v9    # "rsym":Ljava/lang/Object;
    move-object v10, v9

    .line 205
    .local v10, "sym":Lgnu/mapping/Symbol;
    :goto_50
    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_67

    .line 207
    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "name":Ljava/lang/String;
    :try_start_5b
    invoke-static {v6}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 211
    .local v1, "cl":Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v13

    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_66} :catch_81

    move-result-object p0

    .line 218
    .end local v1    # "cl":Ljava/lang/Class;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v10    # "sym":Lgnu/mapping/Symbol;
    :cond_67
    :goto_67
    const/4 v13, 0x2

    new-array v0, v13, [Lgnu/expr/Expression;

    const/4 v13, 0x0

    aput-object p0, v0, v13

    const/4 v13, 0x1

    aput-object p1, v0, v13

    .line 219
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v5, Lgnu/kawa/functions/GetNamedExp;

    invoke-direct {v5, v0}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    .line 220
    .local v5, "exp":Lgnu/kawa/functions/GetNamedExp;
    iput-object v2, v5, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    goto :goto_28

    .line 203
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v5    # "exp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v8    # "rexp":Lgnu/expr/ReferenceExp;
    .restart local v9    # "rsym":Ljava/lang/Object;
    :cond_78
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    goto :goto_50

    .line 213
    .end local v9    # "rsym":Ljava/lang/Object;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v10    # "sym":Lgnu/mapping/Symbol;
    :catch_81
    move-exception v13

    goto :goto_67
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 3
    .param p0, "clas"    # Lgnu/expr/Expression;
    .param p1, "member"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 6
    .param p0, "member"    # Lgnu/expr/Expression;

    .prologue
    .line 315
    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1d

    move-object v2, p0

    .line 317
    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "val":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_1d

    .line 319
    new-instance v2, Lgnu/kawa/functions/GetNamedInstancePart;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 324
    .end local v1    # "val":Ljava/lang/Object;
    :goto_1c
    return-object v2

    .line 321
    :cond_1d
    const/4 v2, 0x2

    new-array v0, v2, [Lgnu/expr/Expression;

    .line 322
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    new-instance v3, Lgnu/expr/QuoteExp;

    const-string v4, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 323
    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 324
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_1c
.end method

.method public static validateGetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 13
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 331
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p3

    .line 334
    check-cast v1, Lgnu/kawa/functions/GetNamedInstancePart;

    .line 335
    .local v1, "gproc":Lgnu/kawa/functions/GetNamedInstancePart;
    iget-boolean v5, v1, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v5, :cond_2c

    .line 337
    new-array v4, v8, [Lgnu/expr/Expression;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v7

    .line 338
    .local v4, "xargs":[Lgnu/expr/Expression;
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 349
    .local v3, "property":Lgnu/mapping/Procedure;
    :goto_22
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v5, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 342
    .end local v3    # "property":Lgnu/mapping/Procedure;
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :cond_2c
    array-length v2, v0

    .line 343
    .local v2, "nargs":I
    add-int/lit8 v5, v2, 0x1

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 344
    .restart local v4    # "xargs":[Lgnu/expr/Expression;
    aget-object v5, v0, v6

    aput-object v5, v4, v6

    .line 345
    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v7

    .line 346
    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    sget-object v3, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .restart local v3    # "property":Lgnu/mapping/Procedure;
    goto :goto_22
.end method

.method public static validateGetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 30
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 13
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 15
    .local v4, "args":[Lgnu/expr/Expression;
    array-length v0, v4

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_26

    const/16 v22, 0x1

    aget-object v22, v4, v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/kawa/functions/GetNamedExp;

    move/from16 v22, v0

    if-nez v22, :cond_27

    .line 142
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_26
    :goto_26
    return-object p0

    .line 18
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_27
    const/16 v22, 0x0

    aget-object v8, v4, v22

    .line 19
    .local v8, "context":Lgnu/expr/Expression;
    const/4 v9, 0x0

    .line 20
    .local v9, "decl":Lgnu/expr/Declaration;
    instance-of v0, v8, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-eqz v22, :cond_4f

    move-object/from16 v17, v8

    .line 22
    check-cast v17, Lgnu/expr/ReferenceExp;

    .line 23
    .local v17, "rexp":Lgnu/expr/ReferenceExp;
    const-string v22, "*"

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4b

    .line 24
    const/16 v22, 0x1

    aget-object v22, v4, v22

    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/CompileNamedPart;->makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_26

    .line 25
    :cond_4b
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v9

    .line 28
    .end local v17    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_4f
    const/16 v22, 0x1

    aget-object v22, v4, v22

    check-cast v22, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 29
    .local v13, "mname":Ljava/lang/String;
    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v18

    .line 30
    .local v18, "type":Lgnu/bytecode/Type;
    sget-object v22, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_95

    const/4 v10, 0x1

    .line 31
    .local v10, "isInstanceOperator":Z
    :goto_68
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    .line 32
    .local v7, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    .line 33
    .local v11, "language":Lgnu/expr/Language;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v8, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v19

    .line 34
    .local v19, "typeval":Lgnu/bytecode/Type;
    if-nez v7, :cond_97

    const/4 v6, 0x0

    .local v6, "caller":Lgnu/bytecode/ClassType;
    :goto_7b
    move-object/from16 v14, p0

    .line 37
    check-cast v14, Lgnu/kawa/functions/GetNamedExp;

    .line 39
    .local v14, "nexp":Lgnu/kawa/functions/GetNamedExp;
    if-eqz v19, :cond_e7

    .line 41
    const-string v22, "<>"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a3

    .line 42
    new-instance p0, Lgnu/expr/QuoteExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_26

    .line 30
    .end local v6    # "caller":Lgnu/bytecode/ClassType;
    .end local v7    # "comp":Lgnu/expr/Compilation;
    .end local v10    # "isInstanceOperator":Z
    .end local v11    # "language":Lgnu/expr/Language;
    .end local v14    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v19    # "typeval":Lgnu/bytecode/Type;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_95
    const/4 v10, 0x0

    goto :goto_68

    .line 34
    .restart local v7    # "comp":Lgnu/expr/Compilation;
    .restart local v10    # "isInstanceOperator":Z
    .restart local v11    # "language":Lgnu/expr/Language;
    .restart local v19    # "typeval":Lgnu/bytecode/Type;
    :cond_97
    iget-object v0, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a0

    iget-object v6, v7, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_7b

    :cond_a0
    iget-object v6, v7, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_7b

    .line 44
    .restart local v6    # "caller":Lgnu/bytecode/ClassType;
    .restart local v14    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    :cond_a3
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v22, v0

    if-eqz v22, :cond_e7

    .line 46
    const-string v22, "new"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_bf

    .line 47
    const/16 v22, 0x4e

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object p0

    goto/16 :goto_26

    .line 48
    :cond_bf
    const-string v22, "instance?"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d3

    .line 49
    const/16 v22, 0x49

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object p0

    goto/16 :goto_26

    .line 50
    :cond_d3
    const-string v22, "@"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e7

    .line 51
    const/16 v22, 0x43

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object p0

    goto/16 :goto_26

    .line 54
    :cond_e7
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v22, v0

    if-eqz v22, :cond_168

    .line 56
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_123

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x2e

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_123

    .line 61
    new-instance p0, Lgnu/expr/QuoteExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    new-instance v22, Lgnu/kawa/functions/NamedPart;

    const/16 v23, 0x44

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 63
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_123
    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v22

    if-ltz v22, :cond_26

    .line 65
    check-cast v19, Lgnu/bytecode/ObjectType;

    .end local v19    # "typeval":Lgnu/bytecode/Type;
    invoke-static {v13}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v6, v11}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v12

    .line 69
    .local v12, "methods":[Lgnu/expr/PrimProcedure;
    if-eqz v12, :cond_150

    array-length v0, v12

    move/from16 v22, v0

    if-lez v22, :cond_150

    .line 71
    iput-object v12, v14, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 72
    const/16 v22, 0x53

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object p0

    goto/16 :goto_26

    .line 74
    :cond_150
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v22, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, v22

    invoke-direct {v3, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 75
    .local v3, "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 76
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_26

    .line 79
    .end local v3    # "aexp":Lgnu/expr/ApplyExp;
    .end local v12    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v19    # "typeval":Lgnu/bytecode/Type;
    :cond_168
    if-eqz v19, :cond_16a

    .line 91
    :cond_16a
    sget-object v22, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v22

    if-nez v22, :cond_26

    sget-object v22, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v22

    if-nez v22, :cond_26

    .line 98
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v22, v0

    if-eqz v22, :cond_243

    move-object/from16 v15, v18

    .line 100
    check-cast v15, Lgnu/bytecode/ObjectType;

    .line 101
    .local v15, "otype":Lgnu/bytecode/ObjectType;
    invoke-static {v13}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x56

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v15, v0, v1, v6, v11}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v12

    .line 104
    .restart local v12    # "methods":[Lgnu/expr/PrimProcedure;
    if-eqz v12, :cond_1af

    array-length v0, v12

    move/from16 v22, v0

    if-lez v22, :cond_1af

    .line 106
    iput-object v12, v14, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 107
    const/16 v22, 0x4d

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object p0

    goto/16 :goto_26

    .line 110
    :cond_1af
    sget-object v22, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v22

    if-eqz v22, :cond_213

    .line 113
    if-eqz v9, :cond_1df

    invoke-static {v9}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v20

    .local v20, "val":Ljava/lang/Object;
    if-eqz v20, :cond_1df

    move-object/from16 v21, v20

    .line 116
    check-cast v21, Lgnu/mapping/HasNamedParts;

    .line 117
    .local v21, "value":Lgnu/mapping/HasNamedParts;
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1df

    .line 119
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 120
    invoke-static/range {v20 .. v20}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0

    goto/16 :goto_26

    .line 123
    .end local v20    # "val":Ljava/lang/Object;
    .end local v21    # "value":Lgnu/mapping/HasNamedParts;
    :cond_1df
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [Lgnu/expr/Expression;

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-object v23, v4, v23

    aput-object v23, v5, v22

    const/16 v22, 0x1

    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v23

    aput-object v23, v5, v22

    .line 124
    .end local v4    # "args":[Lgnu/expr/Expression;
    .local v5, "args":[Lgnu/expr/Expression;
    new-instance v22, Lgnu/expr/ApplyExp;

    sget-object v23, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    const-string v24, "get"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    move-object v4, v5

    .end local v5    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "args":[Lgnu/expr/Expression;
    goto/16 :goto_26

    .line 128
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_213
    invoke-static {v15, v13, v6}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v16

    .line 129
    .local v16, "part":Lgnu/bytecode/Member;
    if-nez v16, :cond_22b

    const-string v22, "length"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_243

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-eqz v22, :cond_243

    .line 134
    :cond_22b
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v22, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, v22

    invoke-direct {v3, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 135
    .restart local v3    # "aexp":Lgnu/expr/ApplyExp;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 136
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_26

    .line 140
    .end local v3    # "aexp":Lgnu/expr/ApplyExp;
    .end local v12    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v15    # "otype":Lgnu/bytecode/ObjectType;
    .end local v16    # "part":Lgnu/bytecode/Member;
    :cond_243
    invoke-virtual {v7}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v22

    if-eqz v22, :cond_26

    .line 141
    const/16 v22, 0x77

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "no known slot \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_26
.end method

.method public static validateNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 14
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 251
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .local v1, "args":[Lgnu/expr/Expression;
    move-object v3, p3

    .line 252
    check-cast v3, Lgnu/kawa/functions/NamedPart;

    .line 253
    .local v3, "namedPart":Lgnu/kawa/functions/NamedPart;
    iget-char v6, v3, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v6, :pswitch_data_52

    .line 275
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :goto_11
    return-object p0

    .line 256
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :pswitch_12
    iget-object v6, v3, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "fname":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Lgnu/expr/Expression;

    .line 258
    .local v5, "xargs":[Lgnu/expr/Expression;
    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    aput-object v6, v5, v7

    .line 260
    array-length v6, v1

    if-lez v6, :cond_46

    .line 262
    aget-object v6, v1, v9

    new-instance v7, Lgnu/expr/QuoteExp;

    iget-object v8, v3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v7}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v6

    aput-object v6, v5, v9

    .line 264
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 271
    .local v4, "slotProc":Lgnu/kawa/reflect/SlotGet;
    :goto_39
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 272
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 273
    invoke-virtual {p1, v0, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_11

    .line 268
    .end local v0    # "aexp":Lgnu/expr/ApplyExp;
    .end local v4    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    :cond_46
    iget-object v6, v3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    aput-object v6, v5, v9

    .line 269
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    .restart local v4    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    goto :goto_39

    .line 253
    nop

    :pswitch_data_52
    .packed-switch 0x44
        :pswitch_12
    .end packed-switch
.end method

.method public static validateNamedPartSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 13
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 282
    check-cast p3, Lgnu/kawa/functions/NamedPartSetter;

    .end local p3    # "proc":Lgnu/mapping/Procedure;
    invoke-virtual {p3}, Lgnu/kawa/functions/NamedPartSetter;->getGetter()Lgnu/mapping/Procedure;

    move-result-object v1

    check-cast v1, Lgnu/kawa/functions/NamedPart;

    .line 283
    .local v1, "get":Lgnu/kawa/functions/NamedPart;
    iget-char v4, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v5, 0x44

    if-ne v4, v5, :cond_4b

    .line 285
    const/4 v4, 0x3

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 286
    .local v3, "xargs":[Lgnu/expr/Expression;
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v6

    .line 287
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 289
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v6, :cond_4c

    .line 291
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 292
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 302
    .local v2, "slotProc":Lgnu/kawa/reflect/SlotSet;
    :goto_3f
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 303
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 304
    invoke-virtual {p1, v0, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    .line 306
    .end local v0    # "aexp":Lgnu/expr/ApplyExp;
    .end local v2    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    .end local v3    # "xargs":[Lgnu/expr/Expression;
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_4b
    return-object p0

    .line 294
    .restart local v3    # "xargs":[Lgnu/expr/Expression;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_4c
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v8, :cond_4b

    .line 296
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 298
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .restart local v2    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    goto :goto_3f
.end method

.method public static validateSetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 10
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 356
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 357
    .local v0, "args":[Lgnu/expr/Expression;
    check-cast p3, Lgnu/kawa/functions/SetNamedInstancePart;

    .end local p3    # "proc":Lgnu/mapping/Procedure;
    iget-object v1, p3, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 358
    .local v1, "pname":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v2, v3, [Lgnu/expr/Expression;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aget-object v4, v0, v5

    aput-object v4, v2, v3

    .line 360
    .local v2, "xargs":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v3, v4, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3
.end method

.method public static validateSetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 149
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 150
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v10, v0

    const/4 v11, 0x3

    if-ne v10, v11, :cond_12

    const/4 v10, 0x1

    aget-object v10, v0, v10

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_13

    .line 179
    :cond_12
    :goto_12
    return-object p0

    .line 152
    :cond_13
    const/4 v10, 0x0

    aget-object v3, v0, v10

    .line 153
    .local v3, "context":Lgnu/expr/Expression;
    const/4 v10, 0x1

    aget-object v10, v0, v10

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "mname":Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 155
    .local v8, "type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 156
    .local v2, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 157
    .local v4, "language":Lgnu/expr/Language;
    invoke-virtual {v4, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v9

    .line 158
    .local v9, "typeval":Lgnu/bytecode/Type;
    if-nez v2, :cond_4d

    const/4 v1, 0x0

    .line 161
    .local v1, "caller":Lgnu/bytecode/ClassType;
    :goto_36
    move-object v6, p0

    .line 162
    .local v6, "original":Lgnu/expr/ApplyExp;
    instance-of v10, v9, Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_57

    .line 164
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {p0, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 176
    .end local v8    # "type":Lgnu/bytecode/Type;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_42
    :goto_42
    if-eq p0, v6, :cond_47

    .line 177
    invoke-virtual {p0, v6}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 178
    :cond_47
    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v10}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_12

    .line 158
    .end local v1    # "caller":Lgnu/bytecode/ClassType;
    .end local v6    # "original":Lgnu/expr/ApplyExp;
    .restart local v8    # "type":Lgnu/bytecode/Type;
    :cond_4d
    iget-object v10, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_54

    iget-object v1, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_36

    :cond_54
    iget-object v1, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_36

    .line 166
    .restart local v1    # "caller":Lgnu/bytecode/ClassType;
    .restart local v6    # "original":Lgnu/expr/ApplyExp;
    :cond_57
    instance-of v10, v8, Lgnu/bytecode/ClassType;

    if-eqz v10, :cond_42

    .line 168
    check-cast v8, Lgnu/bytecode/ClassType;

    .end local v8    # "type":Lgnu/bytecode/Type;
    invoke-static {v8, v5, v1}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v7

    .line 169
    .local v7, "part":Lgnu/bytecode/Member;
    if-eqz v7, :cond_42

    .line 173
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {p0, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    goto :goto_42
.end method
