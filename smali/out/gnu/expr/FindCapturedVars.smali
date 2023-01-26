.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpExpVisitor;
.source "FindCapturedVars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backJumpPossible:I

.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 426
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 427
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method static checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;
    .registers 8
    .param p0, "current"    # Lgnu/expr/LambdaExp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "Ljava/util/Set",
            "<",
            "Lgnu/expr/LambdaExp;",
            ">;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    iget-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v4, v5, :cond_9

    .line 228
    iget-object v3, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 272
    :goto_8
    return-object v3

    .line 229
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 230
    iget-object v3, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    goto :goto_8

    .line 231
    :cond_12
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v4

    if-nez v4, :cond_24

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v4, v5, :cond_2b

    .line 235
    :cond_24
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    sget-object v3, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    goto :goto_8

    .line 238
    :cond_2b
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 240
    .local v2, "r":Lgnu/expr/Expression;
    iget-object v4, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-eqz v4, :cond_84

    .line 242
    iget-object v4, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 244
    .local v1, "p":Lgnu/expr/LambdaExp;
    invoke-static {v1, p1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v3

    .line 245
    .local v3, "t":Lgnu/expr/Expression;
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v3, v4, :cond_5e

    .line 247
    if-eqz v2, :cond_54

    iget-object v4, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v2, v4, :cond_59

    .line 249
    :cond_54
    iget-object v2, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 250
    iput-object v1, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_3a

    .line 254
    :cond_59
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    goto :goto_8

    .line 258
    :cond_5e
    if-nez v2, :cond_71

    .line 260
    move-object v2, v3

    .line 261
    iget-object v4, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v4, :cond_3a

    .line 262
    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->nestedIn(Lgnu/expr/ScopeExp;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .end local v1    # "p":Lgnu/expr/LambdaExp;
    :goto_6b
    iput-object v1, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_3a

    .restart local v1    # "p":Lgnu/expr/LambdaExp;
    :cond_6e
    iget-object v1, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_6b

    .line 264
    :cond_71
    if-eqz v3, :cond_75

    if-ne v2, v3, :cond_7d

    :cond_75
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 267
    :cond_7d
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 268
    sget-object v3, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    goto :goto_8

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lgnu/expr/LambdaExp;
    .end local v3    # "t":Lgnu/expr/Expression;
    :cond_84
    move-object v3, v2

    .line 272
    goto :goto_8
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .registers 4
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 15
    new-instance v0, Lgnu/expr/FindCapturedVars;

    invoke-direct {v0}, Lgnu/expr/FindCapturedVars;-><init>()V

    .line 16
    .local v0, "visitor":Lgnu/expr/FindCapturedVars;
    invoke-virtual {v0, p1}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    .line 17
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .registers 8
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "function"    # Z

    .prologue
    const/4 v4, 0x1

    .line 432
    move-object v1, p1

    .line 433
    .local v1, "key":Ljava/lang/Object;
    if-eqz p2, :cond_17

    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_17

    .line 435
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 436
    const/4 p2, 0x0

    .line 440
    .end local v1    # "key":Ljava/lang/Object;
    :cond_17
    :goto_17
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v2, :cond_66

    .line 442
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 443
    const/4 v0, 0x0

    .line 447
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_25
    if-nez v0, :cond_5a

    .line 449
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v2, p1}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 450
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 451
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 452
    if-eqz p2, :cond_39

    .line 453
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 454
    :cond_39
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 455
    const-wide/16 v2, 0x800

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 456
    :cond_46
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 457
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 462
    const-wide/32 v2, 0x50000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 463
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 464
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_5a
    return-object v0

    .line 438
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_5b
    new-instance v1, Lgnu/mapping/KeyPair;

    .end local v1    # "key":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, Lgnu/mapping/Symbol;

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .local v1, "key":Lgnu/mapping/KeyPair;
    goto :goto_17

    .line 446
    .end local v1    # "key":Lgnu/mapping/KeyPair;
    :cond_66
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .restart local v0    # "decl":Lgnu/expr/Declaration;
    goto :goto_25
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .registers 25
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v17

    if-nez v17, :cond_d

    .line 424
    :cond_c
    :goto_c
    return-void

    .line 296
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v17

    if-nez v17, :cond_c

    .line 300
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_35

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v17

    if-nez v17, :cond_c

    .line 303
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    .line 304
    .local v6, "curLambda":Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v15

    .line 305
    .local v15, "sc":Lgnu/expr/ScopeExp;
    if-nez v15, :cond_68

    new-instance v17, Ljava/lang/Error;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "null context for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " curL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v17

    .line 306
    :cond_68
    invoke-virtual {v15}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    .line 322
    .local v8, "declLambda":Lgnu/expr/LambdaExp;
    const/4 v12, 0x0

    .line 323
    .local v12, "oldParent":Lgnu/expr/LambdaExp;
    const/4 v5, 0x0

    .line 324
    .local v5, "chain":Lgnu/expr/LambdaExp;
    :goto_6e
    if-eq v6, v8, :cond_97

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v17

    if-eqz v17, :cond_97

    .line 326
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    .line 327
    .local v7, "curParent":Lgnu/expr/LambdaExp;
    if-eq v7, v12, :cond_7f

    .line 330
    iget-object v5, v7, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 331
    move-object v12, v7

    .line 333
    :cond_7f
    if-eqz v5, :cond_87

    iget-object v0, v6, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    move-object/from16 v17, v0

    if-nez v17, :cond_90

    .line 336
    :cond_87
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    goto/16 :goto_c

    .line 339
    :cond_90
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v6

    .line 340
    iget-object v5, v5, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 341
    goto :goto_6e

    .line 342
    .end local v7    # "curParent":Lgnu/expr/LambdaExp;
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v17

    if-eqz v17, :cond_ea

    .line 344
    instance-of v0, v6, Lgnu/expr/ModuleExp;

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 352
    :cond_a9
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v16

    .line 354
    .local v16, "value":Lgnu/expr/Expression;
    if-eqz v16, :cond_b7

    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v17, v0

    if-nez v17, :cond_ee

    .line 355
    :cond_b7
    const/4 v9, 0x0

    .line 367
    .local v9, "declValue":Lgnu/expr/LambdaExp;
    :cond_b8
    :goto_b8
    const-wide/32 v18, 0x10000

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v17

    if-eqz v17, :cond_c8

    .line 370
    move-object v14, v6

    .line 372
    .local v14, "parent":Lgnu/expr/LambdaExp;
    :goto_c6
    if-ne v14, v8, :cond_10a

    .line 382
    .end local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_c8
    :goto_c8
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12b

    .line 384
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 385
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_c

    .line 348
    .end local v9    # "declValue":Lgnu/expr/LambdaExp;
    .end local v16    # "value":Lgnu/expr/Expression;
    :cond_ea
    if-ne v6, v8, :cond_a9

    goto/16 :goto_c

    .restart local v16    # "value":Lgnu/expr/Expression;
    :cond_ee
    move-object/from16 v9, v16

    .line 358
    check-cast v9, Lgnu/expr/LambdaExp;

    .line 359
    .restart local v9    # "declValue":Lgnu/expr/LambdaExp;
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v17

    if-nez v17, :cond_c

    .line 361
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v17

    if-eqz v17, :cond_100

    .line 362
    const/4 v9, 0x0

    goto :goto_b8

    .line 363
    :cond_100
    if-ne v9, v6, :cond_b8

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v17

    if-nez v17, :cond_b8

    goto/16 :goto_c

    .line 374
    .restart local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_10a
    iget-object v0, v14, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    if-eqz v17, :cond_126

    iget-object v0, v14, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x800

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v17

    if-eqz v17, :cond_126

    .line 377
    const-wide/16 v18, 0x800

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_c8

    .line 370
    :cond_126
    invoke-virtual {v14}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v14

    goto :goto_c6

    .line 387
    .end local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_12b
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v17

    if-nez v17, :cond_139

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v17

    if-nez v17, :cond_139

    if-nez v9, :cond_c

    .line 389
    :cond_139
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v17

    if-nez v17, :cond_15b

    .line 391
    move-object v11, v6

    .line 392
    .local v11, "heapLambda":Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v17

    if-nez v17, :cond_149

    .line 393
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 394
    :cond_149
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v14

    .line 395
    .restart local v14    # "parent":Lgnu/expr/LambdaExp;
    move-object v13, v14

    .local v13, "outer":Lgnu/expr/LambdaExp;
    :goto_14e
    if-eq v13, v8, :cond_15b

    if-eqz v13, :cond_15b

    .line 397
    move-object v11, v13

    .line 398
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v17

    if-nez v17, :cond_1a8

    if-ne v9, v13, :cond_1a8

    .line 416
    .end local v11    # "heapLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "outer":Lgnu/expr/LambdaExp;
    .end local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_15b
    if-nez v8, :cond_233

    .line 417
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "null declLambda for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " curL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p1

    iget-object v4, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 419
    .local v4, "c":Lgnu/expr/ScopeExp;
    :goto_189
    if-eqz v4, :cond_233

    .line 420
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- context:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v4, v4, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_189

    .line 400
    .end local v4    # "c":Lgnu/expr/ScopeExp;
    .restart local v11    # "heapLambda":Lgnu/expr/LambdaExp;
    .restart local v13    # "outer":Lgnu/expr/LambdaExp;
    .restart local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_1a8
    iget-object v10, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 401
    .local v10, "heapDecl":Lgnu/expr/Declaration;
    if-eqz v10, :cond_1e6

    const-wide/16 v18, 0x800

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v17

    if-eqz v17, :cond_1e6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "static "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " references non-static "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 407
    :cond_1e6
    instance-of v0, v11, Lgnu/expr/ClassExp;

    move/from16 v17, v0

    if-eqz v17, :cond_22a

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_22a

    move-object/from16 v17, v11

    check-cast v17, Lgnu/expr/ClassExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v17

    if-eqz v17, :cond_22a

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v17, v0

    const/16 v18, 0x77

    iget-object v0, v11, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    const-string v20, "simple class "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " requiring lexical link (because of reference to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") - use define-class instead"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_22a
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 413
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    .line 414
    goto/16 :goto_14e

    .line 422
    .end local v10    # "heapDecl":Lgnu/expr/Declaration;
    .end local v11    # "heapLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "outer":Lgnu/expr/LambdaExp;
    .end local v14    # "parent":Lgnu/expr/LambdaExp;
    :cond_233
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_c
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .registers 6
    .param p1, "containing"    # Lgnu/expr/Declaration;
    .param p2, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 490
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_24

    .line 492
    iget-object v1, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 493
    .local v1, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v0, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 494
    .local v0, "orig":Lgnu/expr/Declaration;
    if-eqz v0, :cond_24

    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-nez v2, :cond_24

    .line 497
    :cond_1c
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 509
    .end local v0    # "orig":Lgnu/expr/Declaration;
    .end local v1    # "rexp":Lgnu/expr/ReferenceExp;
    :goto_23
    return-void

    .line 501
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/FluidLetExp;

    if-eqz v2, :cond_33

    .line 503
    iget-object p2, p2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    goto :goto_24

    .line 505
    :cond_33
    if-eqz p1, :cond_3f

    invoke-virtual {p2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 506
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_23

    .line 508
    :cond_3f
    invoke-virtual {p0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_23
.end method

.method maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "location"    # Lgnu/text/SourceLocator;

    .prologue
    .line 158
    invoke-virtual {p2}, Lgnu/expr/Compilation;->warnUndefinedVariable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 159
    const/16 v0, 0x77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no declaration seen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 160
    :cond_1e
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 19
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 24
    move-object/from16 v0, p0

    iget v7, v0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 25
    .local v7, "oldBackJumpPossible":I
    const/4 v10, 0x0

    .line 26
    .local v10, "skipFunc":Z
    const/4 v9, 0x0

    .line 36
    .local v9, "skipArgs":Z
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_81

    sget v13, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v14, 0x1

    if-gt v13, v14, :cond_81

    .line 39
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v13, Lgnu/expr/ReferenceExp;

    iget-object v13, v13, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v13}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 41
    .local v4, "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_47

    iget-object v13, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_47

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v13

    if-nez v13, :cond_47

    const-wide/16 v14, 0x1000

    invoke-virtual {v4, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-nez v13, :cond_47

    .line 45
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v12

    .line 46
    .local v12, "value":Lgnu/expr/Expression;
    instance-of v13, v12, Lgnu/expr/LambdaExp;

    if-eqz v13, :cond_47

    move-object v6, v12

    .line 48
    check-cast v6, Lgnu/expr/LambdaExp;

    .line 49
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v13

    if-nez v13, :cond_47

    .line 50
    const/4 v10, 0x1

    .line 85
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v10    # "skipFunc":Z
    .end local v12    # "value":Lgnu/expr/Expression;
    :cond_47
    :goto_47
    if-nez v10, :cond_5b

    .line 86
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/expr/Expression;

    move-object/from16 v0, p1

    iput-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 87
    :cond_5b
    move-object/from16 v0, p0

    iget-object v13, v0, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    if-nez v13, :cond_73

    if-nez v9, :cond_73

    .line 88
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lgnu/expr/FindCapturedVars;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 89
    :cond_73
    move-object/from16 v0, p0

    iget v13, v0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    if-le v13, v7, :cond_80

    .line 90
    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 91
    :cond_80
    return-object p1

    .line 56
    .restart local v10    # "skipFunc":Z
    :cond_81
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_47

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v13

    if-lez v13, :cond_47

    .line 58
    move-object/from16 v0, p1

    iget-object v13, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 59
    .local v11, "val":Ljava/lang/Object;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v2

    .line 60
    .local v2, "arg0":Lgnu/expr/Expression;
    instance-of v13, v11, Lgnu/expr/PrimProcedure;

    if-eqz v13, :cond_47

    instance-of v13, v2, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_47

    move-object v8, v11

    .line 62
    check-cast v8, Lgnu/expr/PrimProcedure;

    .line 63
    .local v8, "pproc":Lgnu/expr/PrimProcedure;
    check-cast v2, Lgnu/expr/ReferenceExp;

    .end local v2    # "arg0":Lgnu/expr/Expression;
    iget-object v13, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v13}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 65
    .restart local v4    # "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_47

    iget-object v13, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v13, v13, Lgnu/expr/ModuleExp;

    if-eqz v13, :cond_47

    const-wide/16 v14, 0x1000

    invoke-virtual {v4, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-nez v13, :cond_47

    .line 68
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v12

    .line 69
    .restart local v12    # "value":Lgnu/expr/Expression;
    instance-of v13, v12, Lgnu/expr/ClassExp;

    if-eqz v13, :cond_47

    .line 71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .local v3, "args":[Lgnu/expr/Expression;
    move-object v6, v12

    .line 72
    check-cast v6, Lgnu/expr/LambdaExp;

    .line 73
    .restart local v6    # "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v13

    if-nez v13, :cond_47

    .line 75
    iget-object v13, v4, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    move-object/from16 v0, p1

    iput-object v13, v0, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 76
    move-object/from16 v0, p1

    iput-object v0, v4, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 77
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_e3
    array-length v13, v3

    if-ge v5, v13, :cond_f2

    .line 78
    aget-object v13, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 79
    :cond_f2
    const/4 v9, 0x1

    move v10, v9

    .local v10, "skipFunc":I
    goto/16 :goto_47
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/ClassExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 121
    .local v1, "ret":Lgnu/expr/Expression;
    iget-boolean v2, p1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v2, :cond_39

    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_39

    .line 123
    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v2, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 133
    :cond_17
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_38

    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_38

    .line 135
    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v3, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 136
    :cond_38
    return-object v1

    .line 124
    :cond_39
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 126
    iget-object v0, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, "child":Lgnu/expr/LambdaExp;
    :goto_41
    if-eqz v0, :cond_17

    .line 129
    const-string v2, "*init*"

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 127
    :cond_53
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_41
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ClassExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V

    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V
    .registers 6
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 96
    iget-object v1, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v1, :cond_5

    .line 116
    :cond_4
    :goto_4
    return-void

    .line 99
    :cond_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 108
    .local v0, "param":Lgnu/expr/Declaration;
    :goto_c
    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 112
    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-virtual {p1, v1, v2}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    goto :goto_4

    .line 108
    :cond_1b
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_c
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/FluidLetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 164
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v1, :cond_22

    .line 166
    iget-object v3, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v3, :cond_1d

    .line 168
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "name":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 170
    .local v0, "bind":Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v2, v3, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 171
    invoke-virtual {p0, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 172
    iput-object v0, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 164
    .end local v0    # "bind":Lgnu/expr/Declaration;
    .end local v2    # "name":Ljava/lang/Object;
    :cond_1d
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_4

    .line 175
    :cond_22
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    return-object v3
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/FluidLetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 277
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 279
    .local v1, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    invoke-static {p1, v1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v0

    .line 280
    .local v0, "caller":Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v0, v2, :cond_21

    iget-object v2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_17

    iget-object v2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_21

    .line 286
    :cond_17
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 287
    iget v2, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 289
    :cond_21
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    return-object v2
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 14
    .param p1, "exp"    # Lgnu/expr/LetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 180
    iget-object v9, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/BeginExp;

    if-eqz v9, :cond_52

    .line 190
    iget-object v4, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 191
    .local v4, "inits":[Lgnu/expr/Expression;
    array-length v5, v4

    .line 192
    .local v5, "len":I
    iget-object v9, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v9, Lgnu/expr/BeginExp;

    iget-object v2, v9, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 193
    .local v2, "exps":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 194
    .local v3, "init_index":I
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 195
    .local v1, "decl":Lgnu/expr/Declaration;
    const/4 v0, 0x0

    .line 196
    .local v0, "begin_index":I
    :goto_15
    array-length v9, v2

    if-ge v0, v9, :cond_52

    if-ge v3, v5, :cond_52

    .line 199
    aget-object v8, v2, v0

    .line 200
    .local v8, "st":Lgnu/expr/Expression;
    instance-of v9, v8, Lgnu/expr/SetExp;

    if-eqz v9, :cond_4f

    move-object v7, v8

    .line 202
    check-cast v7, Lgnu/expr/SetExp;

    .line 203
    .local v7, "set":Lgnu/expr/SetExp;
    iget-object v9, v7, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-ne v9, v1, :cond_4f

    aget-object v9, v4, v3

    sget-object v10, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v9, v10, :cond_4f

    invoke-virtual {v7}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 207
    iget-object v6, v7, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 208
    .local v6, "new_value":Lgnu/expr/Expression;
    instance-of v9, v6, Lgnu/expr/QuoteExp;

    if-nez v9, :cond_3d

    instance-of v9, v6, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_49

    :cond_3d
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    if-ne v9, v6, :cond_49

    .line 212
    aput-object v6, v4, v3

    .line 213
    sget-object v9, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v9, v2, v0

    .line 215
    :cond_49
    add-int/lit8 v3, v3, 0x1

    .line 216
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 197
    .end local v6    # "new_value":Lgnu/expr/Expression;
    .end local v7    # "set":Lgnu/expr/SetExp;
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 221
    .end local v0    # "begin_index":I
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v2    # "exps":[Lgnu/expr/Expression;
    .end local v3    # "init_index":I
    .end local v4    # "inits":[Lgnu/expr/Expression;
    .end local v5    # "len":I
    .end local v8    # "st":Lgnu/expr/Expression;
    :cond_52
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/expr/Expression;

    return-object v9
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "exp"    # Lgnu/expr/ModuleExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 141
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 142
    .local v1, "saveModule":Lgnu/expr/ModuleExp;
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 143
    .local v0, "saveDecls":Ljava/util/Hashtable;
    iput-object p1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 147
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_12

    move-result-object v2

    .line 151
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    return-object v2

    .line 151
    :catchall_12
    move-exception v2

    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    throw v2
.end method

.method protected bridge synthetic visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ModuleExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 471
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 472
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_15

    .line 474
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 478
    :cond_15
    const-wide/32 v2, 0x10000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_37

    .line 481
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1, v2, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 484
    :cond_37
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 485
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "exp"    # Lgnu/expr/SetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 526
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 527
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_12

    .line 529
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 530
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 532
    :cond_12
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_29

    .line 534
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_22

    .line 535
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 536
    :cond_22
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 538
    :cond_29
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    return-object v1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/SetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ThisExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .prologue
    .line 513
    invoke-virtual {p1}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 517
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 521
    .end local p1    # "exp":Lgnu/expr/ThisExp;
    :goto_d
    return-object p1

    .restart local p1    # "exp":Lgnu/expr/ThisExp;
    :cond_e
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_d
.end method

.method protected bridge synthetic visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ThisExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
