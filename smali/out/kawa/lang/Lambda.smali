.class public Lkawa/lang/Lambda;
.super Lkawa/lang/Syntax;
.source "Lambda.java"


# static fields
.field public static final nameKeyword:Lgnu/expr/Keyword;


# instance fields
.field public defaultDefault:Lgnu/expr/Expression;

.field public keyKeyword:Ljava/lang/Object;

.field public optionalKeyword:Ljava/lang/Object;

.field public restKeyword:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 22
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    return-void
.end method

.method private static addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V
    .registers 4
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "templateScope"    # Lgnu/expr/ScopeExp;
    .param p2, "lexp"    # Lgnu/expr/LambdaExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 358
    if-eqz p1, :cond_6

    .line 359
    invoke-virtual {p3, p0, p1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 360
    :cond_6
    invoke-virtual {p2, p0}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 361
    if-eqz p1, :cond_d

    .line 362
    iput-object p1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 363
    :cond_d
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 643
    const-string v0, "#<builtin lambda>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 40
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_b

    .line 41
    const-string v0, "missing formals in lambda"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 49
    :cond_a
    :goto_a
    return-object v1

    .line 42
    :cond_b
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v6

    .line 43
    .local v6, "old_errors":I
    new-instance v1, Lgnu/expr/LambdaExp;

    invoke-direct {v1}, Lgnu/expr/LambdaExp;-><init>()V

    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v7, p1

    .line 44
    check-cast v7, Lgnu/lists/Pair;

    .line 45
    .local v7, "pair":Lgnu/lists/Pair;
    invoke-static {v1, v7}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 47
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v0

    if-le v0, v6, :cond_a

    .line 48
    new-instance v1, Lgnu/expr/ErrorExp;

    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    const-string v0, "bad lambda expression"

    invoke-direct {v1, v0}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .registers 7
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "formals"    # Ljava/lang/Object;
    .param p3, "body"    # Ljava/lang/Object;
    .param p4, "tr"    # Lkawa/lang/Translator;
    .param p5, "templateScopeRest"    # Lkawa/lang/TemplateScope;

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p4, p5}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 62
    instance-of v0, p3, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_11

    move-object v0, p3

    .line 63
    check-cast v0, Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/expr/LambdaExp;->setFile(Ljava/lang/String;)V

    .line 64
    :cond_11
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p3

    .line 65
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 66
    return-void
.end method

.method public rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .registers 30
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 367
    const/4 v5, 0x0

    .line 368
    .local v5, "accessFlagName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 369
    .local v7, "allocationFlagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 370
    .local v4, "accessFlag":I
    const/4 v6, 0x0

    .line 371
    .local v6, "allocationFlag":I
    const/16 v18, 0x0

    .line 374
    .local v18, "syntax0":Lkawa/lang/SyntaxForm;
    :goto_6
    move-object/from16 v0, p2

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v18, p2

    .line 376
    check-cast v18, Lkawa/lang/SyntaxForm;

    .line 377
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p2

    goto :goto_6

    .line 379
    :cond_17
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-nez v22, :cond_3d

    .line 516
    :cond_1f
    :goto_1f
    or-int/2addr v4, v6

    .line 517
    if-eqz v4, :cond_32

    .line 518
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    int-to-long v0, v4

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 519
    :cond_32
    if-eqz v18, :cond_3c

    .line 520
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p2

    .line 521
    :cond_3c
    return-object p2

    :cond_3d
    move-object/from16 v14, p2

    .line 381
    check-cast v14, Lgnu/lists/Pair;

    .line 382
    .local v14, "pair1":Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 383
    .local v9, "attrName":Ljava/lang/Object;
    const-string v22, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6b

    .line 384
    const/4 v9, 0x0

    .line 388
    .end local v9    # "attrName":Ljava/lang/Object;
    :cond_56
    move-object/from16 v19, v18

    .line 389
    .local v19, "syntax1":Lkawa/lang/SyntaxForm;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .line 390
    .local v15, "pair1_cdr":Ljava/lang/Object;
    :goto_5c
    instance-of v0, v15, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_72

    move-object/from16 v19, v15

    .line 392
    check-cast v19, Lkawa/lang/SyntaxForm;

    .line 393
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    goto :goto_5c

    .line 385
    .end local v15    # "pair1_cdr":Ljava/lang/Object;
    .end local v19    # "syntax1":Lkawa/lang/SyntaxForm;
    .restart local v9    # "attrName":Ljava/lang/Object;
    :cond_6b
    instance-of v0, v9, Lgnu/expr/Keyword;

    move/from16 v22, v0

    if-nez v22, :cond_56

    goto :goto_1f

    .line 395
    .end local v9    # "attrName":Ljava/lang/Object;
    .restart local v15    # "pair1_cdr":Ljava/lang/Object;
    .restart local v19    # "syntax1":Lkawa/lang/SyntaxForm;
    :cond_72
    instance-of v0, v15, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-eqz v22, :cond_1f

    move-object/from16 v16, v15

    .line 397
    check-cast v16, Lgnu/lists/Pair;

    .line 400
    .local v16, "pair2":Lgnu/lists/Pair;
    if-nez v9, :cond_bf

    .line 402
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v22

    if-eqz v22, :cond_a3

    const-string v22, "*init*"

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a3

    .line 403
    const/16 v22, 0x65

    const-string v23, "explicit return type for \'*init*\' method"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 514
    :cond_9d
    :goto_9d
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 515
    goto/16 :goto_6

    .line 406
    :cond_a3
    new-instance v22, Lgnu/expr/LangExp;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v19, v23, v24

    invoke-direct/range {v22 .. v23}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_9d

    .line 408
    :cond_bf
    sget-object v22, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_18e

    .line 410
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v8

    .line 411
    .local v8, "attrExpr":Lgnu/expr/Expression;
    instance-of v0, v8, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_e7

    check-cast v8, Lgnu/expr/QuoteExp;

    .end local v8    # "attrExpr":Lgnu/expr/Expression;
    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "attrValue":Ljava/lang/Object;
    instance-of v0, v10, Lgnu/mapping/SimpleSymbol;

    move/from16 v22, v0

    if-nez v22, :cond_f5

    instance-of v0, v10, Ljava/lang/CharSequence;

    move/from16 v22, v0

    if-nez v22, :cond_f5

    .line 420
    .end local v10    # "attrValue":Ljava/lang/Object;
    :cond_e7
    const/16 v22, 0x65

    const-string v23, "access: value not a constant symbol or string"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_9d

    .line 421
    .restart local v10    # "attrValue":Ljava/lang/Object;
    :cond_f5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    if-nez v22, :cond_10b

    .line 422
    const/16 v22, 0x65

    const-string v23, "access: not allowed for anonymous function"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_9d

    .line 425
    :cond_10b
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 426
    .local v21, "value":Ljava/lang/String;
    const-string v22, "private"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_153

    .line 427
    const/high16 v4, 0x1000000

    .line 436
    :goto_11d
    if-eqz v5, :cond_14f

    if-eqz v21, :cond_14f

    .line 438
    const/16 v22, 0x65

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate access specifiers - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 442
    :cond_14f
    move-object/from16 v5, v21

    goto/16 :goto_9d

    .line 428
    :cond_153
    const-string v22, "protected"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_162

    .line 429
    const/high16 v4, 0x2000000

    goto :goto_11d

    .line 430
    :cond_162
    const-string v22, "public"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_171

    .line 431
    const/high16 v4, 0x4000000

    goto :goto_11d

    .line 432
    :cond_171
    const-string v22, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_180

    .line 433
    const/high16 v4, 0x8000000

    goto :goto_11d

    .line 435
    :cond_180
    const/16 v22, 0x65

    const-string v23, "unknown access specifier"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_11d

    .line 445
    .end local v10    # "attrValue":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/String;
    :cond_18e
    sget-object v22, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_24d

    .line 447
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v8

    .line 448
    .restart local v8    # "attrExpr":Lgnu/expr/Expression;
    instance-of v0, v8, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_1b6

    check-cast v8, Lgnu/expr/QuoteExp;

    .end local v8    # "attrExpr":Lgnu/expr/Expression;
    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "attrValue":Ljava/lang/Object;
    instance-of v0, v10, Lgnu/mapping/SimpleSymbol;

    move/from16 v22, v0

    if-nez v22, :cond_1c5

    instance-of v0, v10, Ljava/lang/CharSequence;

    move/from16 v22, v0

    if-nez v22, :cond_1c5

    .line 457
    .end local v10    # "attrValue":Ljava/lang/Object;
    :cond_1b6
    const/16 v22, 0x65

    const-string v23, "allocation: value not a constant symbol or string"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_9d

    .line 458
    .restart local v10    # "attrValue":Ljava/lang/Object;
    :cond_1c5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    if-nez v22, :cond_1dc

    .line 459
    const/16 v22, 0x65

    const-string v23, "allocation: not allowed for anonymous function"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_9d

    .line 462
    :cond_1dc
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 463
    .restart local v21    # "value":Ljava/lang/String;
    const-string v22, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1f8

    const-string v22, "static"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_230

    .line 464
    :cond_1f8
    const/16 v6, 0x800

    .line 469
    :goto_1fa
    if-eqz v7, :cond_22c

    if-eqz v21, :cond_22c

    .line 471
    const/16 v22, 0x65

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate allocation specifiers - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " and "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 475
    :cond_22c
    move-object/from16 v7, v21

    goto/16 :goto_9d

    .line 465
    :cond_230
    const-string v22, "instance"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23f

    .line 466
    const/16 v6, 0x1000

    goto :goto_1fa

    .line 468
    :cond_23f
    const/16 v22, 0x65

    const-string v23, "unknown allocation specifier"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1fa

    .line 478
    .end local v10    # "attrValue":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/String;
    :cond_24d
    sget-object v22, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_2a9

    .line 480
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    .line 481
    .restart local v10    # "attrValue":Ljava/lang/Object;
    invoke-static {v10}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v11

    .line 482
    .local v11, "count":I
    if-gez v11, :cond_26c

    .line 483
    const/16 v22, 0x65

    const-string v23, "throws: not followed by a list"

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_9d

    .line 486
    :cond_26c
    new-array v12, v11, [Lgnu/expr/Expression;

    .line 487
    .local v12, "exps":[Lgnu/expr/Expression;
    move-object/from16 v20, v19

    .line 488
    .local v20, "syntax2":Lkawa/lang/SyntaxForm;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_271
    if-ge v13, v11, :cond_2a2

    .line 490
    :goto_273
    instance-of v0, v10, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_282

    move-object/from16 v20, v10

    .line 492
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 493
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10

    goto :goto_273

    :cond_282
    move-object/from16 v17, v10

    .line 495
    check-cast v17, Lgnu/lists/Pair;

    .line 496
    .local v17, "pair3":Lgnu/lists/Pair;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v22

    aput-object v22, v12, v13

    .line 498
    aget-object v22, v12, v13

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 499
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 488
    add-int/lit8 v13, v13, 0x1

    goto :goto_271

    .line 501
    .end local v17    # "pair3":Lgnu/lists/Pair;
    :cond_2a2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/expr/LambdaExp;->setExceptions([Lgnu/expr/Expression;)V

    goto/16 :goto_9d

    .line 504
    .end local v10    # "attrValue":Ljava/lang/Object;
    .end local v11    # "count":I
    .end local v12    # "exps":[Lgnu/expr/Expression;
    .end local v13    # "i":I
    .end local v20    # "syntax2":Lkawa/lang/SyntaxForm;
    :cond_2a9
    sget-object v22, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v22

    if-ne v9, v0, :cond_2d2

    .line 506
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v8

    .line 507
    .restart local v8    # "attrExpr":Lgnu/expr/Expression;
    instance-of v0, v8, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_9d

    .line 508
    check-cast v8, Lgnu/expr/QuoteExp;

    .end local v8    # "attrExpr":Lgnu/expr/Expression;
    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 512
    :cond_2d2
    const/16 v22, 0x77

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "unknown procedure property "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_9d
.end method

.method public rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .registers 30
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 543
    const/4 v11, 0x0

    .line 546
    .local v11, "numRenamedAlias":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    if-nez v23, :cond_23

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v23

    const/high16 v24, 0x20000

    invoke-virtual/range {v23 .. v24}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 549
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 550
    :cond_23
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v6

    .line 551
    .local v6, "curs":Lgnu/expr/ScopeExp;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 552
    const/4 v15, 0x0

    .line 553
    .local v15, "prev":Lgnu/expr/Declaration;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v23, v0

    if-nez v23, :cond_e1

    const/4 v8, 0x0

    .line 554
    .local v8, "key_args":I
    :goto_38
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    if-nez v23, :cond_ec

    const/4 v12, 0x0

    .line 556
    .local v12, "opt_args":I
    :goto_41
    const/4 v4, 0x0

    .line 557
    .local v4, "arg_i":I
    const/4 v13, 0x0

    .line 558
    .local v13, "opt_i":I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .local v5, "cur":Lgnu/expr/Declaration;
    :goto_47
    if-eqz v5, :cond_fb

    .line 560
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v23

    if-eqz v23, :cond_68

    .line 562
    invoke-static {v5}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v14

    .line 563
    .local v14, "param":Lgnu/expr/Declaration;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 564
    move-object/from16 v0, p1

    iput-object v0, v14, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 565
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    .line 566
    add-int/lit8 v11, v11, 0x1

    .line 567
    move-object v5, v14

    .line 569
    .end local v14    # "param":Lgnu/expr/Declaration;
    :cond_68
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v19

    .line 570
    .local v19, "texp":Lgnu/expr/Expression;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v23, v0

    if-eqz v23, :cond_89

    .line 572
    check-cast v19, Lgnu/expr/LangExp;

    .end local v19    # "texp":Lgnu/expr/Expression;
    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/lists/Pair;

    .line 573
    .local v21, "typeSpecPair":Lgnu/lists/Pair;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 575
    .end local v21    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_89
    move-object v15, v5

    .line 577
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v4, v0, :cond_ce

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int v23, v23, v12

    move/from16 v0, v23

    if-lt v4, v0, :cond_b4

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v23, v0

    if-gez v23, :cond_b4

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int v23, v23, v12

    move/from16 v0, v23

    if-eq v4, v0, :cond_ce

    .line 582
    :cond_b4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v24

    aput-object v24, v23, v13

    .line 583
    add-int/lit8 v13, v13, 0x1

    .line 585
    :cond_ce
    add-int/lit8 v4, v4, 0x1

    .line 587
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 558
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    goto/16 :goto_47

    .line 553
    .end local v4    # "arg_i":I
    .end local v5    # "cur":Lgnu/expr/Declaration;
    .end local v8    # "key_args":I
    .end local v12    # "opt_args":I
    .end local v13    # "opt_i":I
    :cond_e1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v8, v0

    goto/16 :goto_38

    .line 554
    .restart local v8    # "key_args":I
    :cond_ec
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sub-int v12, v23, v8

    goto/16 :goto_41

    .line 590
    .restart local v4    # "arg_i":I
    .restart local v5    # "cur":Lgnu/expr/Declaration;
    .restart local v12    # "opt_args":I
    .restart local v13    # "opt_i":I
    :cond_fb
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v23

    if-eqz v23, :cond_121

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x800

    invoke-virtual/range {v23 .. v25}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v23

    if-nez v23, :cond_121

    .line 594
    const/16 v23, 0x0

    new-instance v24, Lgnu/expr/Declaration;

    sget-object v25, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 597
    :cond_121
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v18, v0

    .line 598
    .local v18, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 599
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v17, v0

    .line 600
    .local v17, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v23, v0

    if-eqz v23, :cond_175

    .line 602
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    check-cast v23, Lgnu/expr/LangExp;

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v20, v23

    check-cast v20, [Ljava/lang/Object;

    .line 603
    .local v20, "tform":[Ljava/lang/Object;
    const/16 v23, 0x0

    aget-object v23, v20, v23

    check-cast v23, Lgnu/lists/Pair;

    const/16 v24, 0x1

    aget-object v24, v20, v24

    check-cast v24, Lkawa/lang/SyntaxForm;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v19

    .line 605
    .restart local v19    # "texp":Lgnu/expr/Expression;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v17

    .line 607
    .end local v19    # "texp":Lgnu/expr/Expression;
    .end local v20    # "tform":[Ljava/lang/Object;
    :cond_175
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 608
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 612
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/BeginExp;

    move/from16 v23, v0

    if-eqz v23, :cond_230

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v23, v0

    check-cast v23, Lgnu/expr/BeginExp;

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v7

    .local v7, "exps":[Lgnu/expr/Expression;
    array-length v9, v7

    .local v9, "len":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v9, v0, :cond_230

    const/16 v23, 0x0

    aget-object v23, v7, v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v23, v0

    if-nez v23, :cond_1ce

    const/16 v23, 0x0

    aget-object v23, v7, v23

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v22

    .local v22, "val":Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v23, v0

    if-nez v23, :cond_1ce

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v23, v0

    if-eqz v23, :cond_230

    .line 619
    .end local v22    # "val":Ljava/lang/Object;
    :cond_1ce
    const/16 v23, 0x0

    aget-object v16, v7, v23

    .line 620
    .local v16, "rexp":Lgnu/expr/Expression;
    add-int/lit8 v9, v9, -0x1

    .line 621
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_218

    .line 622
    const/16 v23, 0x1

    aget-object v23, v7, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 629
    :goto_1e4
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 633
    .end local v7    # "exps":[Lgnu/expr/Expression;
    .end local v9    # "len":I
    .end local v16    # "rexp":Lgnu/expr/Expression;
    :goto_1f1
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 635
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 636
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 637
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_217

    .line 638
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 639
    :cond_217
    return-void

    .line 625
    .restart local v7    # "exps":[Lgnu/expr/Expression;
    .restart local v9    # "len":I
    .restart local v16    # "rexp":Lgnu/expr/Expression;
    :cond_218
    new-array v10, v9, [Lgnu/expr/Expression;

    .line 626
    .local v10, "new_body":[Lgnu/expr/Expression;
    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v0, v10, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    invoke-static {v10}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_1e4

    .line 632
    .end local v7    # "exps":[Lgnu/expr/Expression;
    .end local v9    # "len":I
    .end local v10    # "new_body":[Lgnu/expr/Expression;
    .end local v16    # "rexp":Lgnu/expr/Expression;
    :cond_230
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_1f1
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 5
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 33
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    .line 34
    .local v0, "exp":Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .registers 31
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "formals"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;
    .param p4, "templateScopeRest"    # Lkawa/lang/TemplateScope;

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_17

    .line 73
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "filename":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v10

    .line 75
    .local v10, "line":I
    if-eqz v7, :cond_17

    if-lez v10, :cond_17

    .line 76
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, Lgnu/expr/LambdaExp;->setSourceLocation(Ljava/lang/String;I)V

    .line 79
    .end local v7    # "filename":Ljava/lang/String;
    .end local v10    # "line":I
    :cond_17
    move-object/from16 v4, p2

    .line 80
    .local v4, "bindings":Ljava/lang/Object;
    const/4 v13, -0x1

    .line 81
    .local v13, "opt_args":I
    const/16 v18, -0x1

    .line 82
    .local v18, "rest_args":I
    const/4 v8, -0x1

    .line 86
    .local v8, "key_args":I
    :goto_1d
    instance-of v0, v4, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_2b

    move-object/from16 v20, v4

    .line 88
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 90
    .local v20, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 92
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_2b
    instance-of v0, v4, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_7e

    .line 151
    instance-of v0, v4, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_236

    .line 153
    if-gez v13, :cond_3d

    if-gez v8, :cond_3d

    if-ltz v18, :cond_204

    .line 155
    :cond_3d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dotted rest-arg after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", or "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 353
    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    move-object/from16 v16, v4

    .line 94
    check-cast v16, Lgnu/lists/Pair;

    .line 96
    .local v16, "pair":Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 97
    .local v17, "pair_car":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_94

    .line 98
    check-cast v17, Lkawa/lang/SyntaxForm;

    .end local v17    # "pair_car":Ljava/lang/Object;
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 99
    .restart local v17    # "pair_car":Ljava/lang/Object;
    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_118

    .line 101
    if-ltz v13, :cond_c9

    .line 103
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_7d

    .line 106
    :cond_c9
    if-gez v18, :cond_cd

    if-ltz v8, :cond_10d

    .line 108
    :cond_cd
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " or "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 111
    :cond_10d
    const/4 v13, 0x0

    .line 149
    :goto_10e
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 84
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1d

    .line 113
    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_183

    .line 115
    if-ltz v18, :cond_14e

    .line 117
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 121
    :cond_14e
    if-ltz v8, :cond_180

    .line 123
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 127
    :cond_180
    const/16 v18, 0x0

    goto :goto_10e

    .line 129
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1bc

    .line 131
    if-ltz v8, :cond_1b9

    .line 133
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 137
    :cond_1b9
    const/4 v8, 0x0

    goto/16 :goto_10e

    .line 139
    :cond_1bc
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    const-string v24, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1e2

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_1e2

    .line 140
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "pair":Lgnu/lists/Pair;
    check-cast v16, Lgnu/lists/Pair;

    .restart local v16    # "pair":Lgnu/lists/Pair;
    goto/16 :goto_10e

    .line 141
    :cond_1e2
    if-ltz v8, :cond_1e8

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_10e

    .line 143
    :cond_1e8
    if-ltz v18, :cond_1ee

    .line 144
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_10e

    .line 145
    :cond_1ee
    if-ltz v13, :cond_1f4

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10e

    .line 148
    :cond_1f4
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    goto/16 :goto_10e

    .line 159
    .end local v16    # "pair":Lgnu/lists/Pair;
    .end local v17    # "pair_car":Ljava/lang/Object;
    :cond_204
    const/16 v18, 0x1

    .line 166
    :cond_206
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_247

    .line 168
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " parameters"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 161
    :cond_236
    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v23

    if-eq v4, v0, :cond_206

    .line 163
    const-string v23, "misformed formals in lambda"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 171
    :cond_247
    if-gez v13, :cond_24a

    .line 172
    const/4 v13, 0x0

    .line 173
    :cond_24a
    if-gez v18, :cond_24e

    .line 174
    const/16 v18, 0x0

    .line 175
    :cond_24e
    if-gez v8, :cond_251

    .line 176
    const/4 v8, 0x0

    .line 177
    :cond_251
    if-lez v18, :cond_2d6

    .line 178
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 181
    :goto_25b
    add-int v23, v13, v8

    if-lez v23, :cond_26d

    .line 182
    add-int v23, v13, v8

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 183
    :cond_26d
    if-lez v8, :cond_279

    .line 184
    new-array v0, v8, [Lgnu/expr/Keyword;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    .line 186
    :cond_279
    move-object/from16 v4, p2

    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v11, 0x0

    .line 192
    :goto_27e
    instance-of v0, v4, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_290

    move-object/from16 v20, v4

    .line 194
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 195
    .restart local v20    # "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 198
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p4

    .line 200
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_290
    move-object/from16 v21, p4

    .line 201
    .local v21, "templateScope":Lkawa/lang/TemplateScope;
    instance-of v0, v4, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_2ea

    .line 339
    instance-of v0, v4, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_2aa

    move-object/from16 v20, v4

    .line 341
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 342
    .restart local v20    # "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 343
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object p4

    .line 345
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_2aa
    instance-of v0, v4, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_7d

    .line 347
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 348
    .local v5, "decl":Lgnu/expr/Declaration;
    sget-object v23, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    const-wide/32 v24, 0x40000

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 350
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 351
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    goto/16 :goto_7d

    .line 180
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v21    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_2d6
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int v23, v23, v13

    mul-int/lit8 v24, v8, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    goto/16 :goto_25b

    .restart local v21    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_2ea
    move-object/from16 v16, v4

    .line 203
    check-cast v16, Lgnu/lists/Pair;

    .line 204
    .restart local v16    # "pair":Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 205
    .restart local v17    # "pair_car":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_306

    move-object/from16 v20, v17

    .line 207
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 208
    .restart local v20    # "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 209
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    .line 211
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_306
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_32a

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_32a

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_332

    .line 214
    :cond_32a
    move-object/from16 v11, v17

    .line 190
    :goto_32c
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_27e

    .line 217
    :cond_332
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 218
    .local v19, "savePos":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 219
    .local v12, "name":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v6, v0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    .line 220
    .local v6, "defaultValue":Lgnu/expr/Expression;
    const/16 v22, 0x0

    .line 222
    .local v22, "typeSpecPair":Lgnu/lists/Pair;
    const-string v23, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_35a

    .line 224
    const-string v23, "\'::\' must follow parameter name"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 227
    :cond_35a
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 228
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_3ec

    .line 230
    move-object/from16 v12, v17

    .line 231
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_3ca

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    .local v15, "p":Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    const-string v24, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3ca

    .line 234
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_3c0

    .line 236
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 240
    :cond_3c0
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "p":Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 241
    .restart local v15    # "p":Lgnu/lists/Pair;
    move-object/from16 v22, v15

    .line 242
    move-object/from16 v16, v15

    .line 314
    .end local v6    # "defaultValue":Lgnu/expr/Expression;
    .end local v12    # "name":Ljava/lang/Object;
    .end local v15    # "p":Lgnu/lists/Pair;
    :cond_3ca
    if-nez v12, :cond_576

    .line 316
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parameter is neither name nor (name :: type) nor (name default): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 245
    .restart local v6    # "defaultValue":Lgnu/expr/Expression;
    .restart local v12    # "name":Ljava/lang/Object;
    :cond_3ec
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_3ca

    move-object/from16 v15, v17

    .line 247
    check-cast v15, Lgnu/lists/Pair;

    .line 248
    .restart local v15    # "p":Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 249
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_410

    move-object/from16 v20, v17

    .line 251
    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 252
    .restart local v20    # "sf":Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 253
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v21

    .line 255
    .end local v20    # "sf":Lkawa/lang/SyntaxForm;
    :cond_410
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 256
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_3ca

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_3ca

    .line 259
    move-object/from16 v12, v17

    .line 260
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "p":Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 261
    .restart local v15    # "p":Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    const-string v24, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_490

    .line 263
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_476

    .line 265
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 269
    :cond_476
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "p":Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 270
    .restart local v15    # "p":Lgnu/lists/Pair;
    move-object/from16 v22, v15

    .line 271
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_4d2

    .line 272
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "p":Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 282
    .restart local v15    # "p":Lgnu/lists/Pair;
    :cond_490
    :goto_490
    if-eqz v15, :cond_4aa

    if-eqz v11, :cond_4aa

    .line 284
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 285
    .local v6, "defaultValue":Ljava/lang/Object;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_504

    .line 286
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "p":Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 296
    .end local v6    # "defaultValue":Ljava/lang/Object;
    .restart local v15    # "p":Lgnu/lists/Pair;
    :cond_4aa
    :goto_4aa
    if-eqz v15, :cond_3ca

    .line 298
    if-eqz v22, :cond_536

    .line 300
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate type specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x27

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 273
    .local v6, "defaultValue":Lgnu/expr/Expression;
    :cond_4d2
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4e0

    .line 274
    const/4 v15, 0x0

    goto :goto_490

    .line 277
    :cond_4e0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "improper list in specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 287
    .local v6, "defaultValue":Ljava/lang/Object;
    :cond_504
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_512

    .line 288
    const/4 v15, 0x0

    goto :goto_4aa

    .line 291
    :cond_512
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "improper list in specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 304
    .end local v6    # "defaultValue":Ljava/lang/Object;
    :cond_536
    move-object/from16 v22, v15

    .line 305
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3ca

    .line 307
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "junk at end of specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x27

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_7d

    .line 319
    .end local v12    # "name":Ljava/lang/Object;
    .end local v15    # "p":Lgnu/lists/Pair;
    :cond_576
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v11, v0, :cond_58a

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_59c

    .line 320
    :cond_58a
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "opt_args":I
    .local v14, "opt_args":I
    new-instance v24, Lgnu/expr/LangExp;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    aput-object v24, v23, v13

    move v13, v14

    .line 321
    .end local v14    # "opt_args":I
    .restart local v13    # "opt_args":I
    :cond_59c
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_5c3

    .line 322
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v24, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "key_args":I
    .local v9, "key_args":I
    instance-of v0, v12, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_603

    move-object/from16 v23, v12

    check-cast v23, Lgnu/mapping/Symbol;

    invoke-virtual/range {v23 .. v23}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v23

    :goto_5bc
    invoke-static/range {v23 .. v23}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v23

    aput-object v23, v24, v8

    move v8, v9

    .line 325
    .end local v9    # "key_args":I
    .restart local v8    # "key_args":I
    :cond_5c3
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v12}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 326
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    invoke-static {v5, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 327
    if-eqz v22, :cond_608

    .line 329
    new-instance v23, Lgnu/expr/LangExp;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 330
    const-wide/16 v24, 0x2000

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    :cond_5e2
    :goto_5e2
    const-wide/32 v24, 0x40000

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 335
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 336
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 337
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_32c

    .line 322
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "key_args":I
    .restart local v9    # "key_args":I
    :cond_603
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_5bc

    .line 332
    .end local v9    # "key_args":I
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    .restart local v8    # "key_args":I
    :cond_608
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_5e2

    .line 333
    sget-object v23, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_5e2
.end method

.method public setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "optional"    # Ljava/lang/Object;
    .param p2, "rest"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 26
    iput-object p1, p0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public skipAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .registers 7
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 526
    :goto_0
    instance-of v2, p2, Lgnu/lists/Pair;

    if-eqz v2, :cond_f

    move-object v1, p2

    .line 528
    check-cast v1, Lgnu/lists/Pair;

    .line 529
    .local v1, "pair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-nez v2, :cond_10

    .line 538
    .end local v1    # "pair":Lgnu/lists/Pair;
    :cond_f
    :goto_f
    return-object p2

    .line 531
    .restart local v1    # "pair":Lgnu/lists/Pair;
    :cond_10
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, "attrName":Ljava/lang/Object;
    const-string v2, "::"

    invoke-virtual {p3, v0, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 533
    const/4 v0, 0x0

    .line 536
    .end local v0    # "attrName":Ljava/lang/Object;
    :cond_1d
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 537
    goto :goto_0

    .line 534
    .restart local v0    # "attrName":Ljava/lang/Object;
    :cond_28
    instance-of v2, v0, Lgnu/expr/Keyword;

    if-nez v2, :cond_1d

    goto :goto_f
.end method
