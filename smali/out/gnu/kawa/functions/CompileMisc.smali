.class public Lgnu/kawa/functions/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field static final CONVERT:I = 0x2

.field static final NOT:I = 0x3

.field static coerceMethod:Lgnu/bytecode/Method;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field code:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 308
    const-string v0, "kawa.lang.Continuation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .registers 3
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "code"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    .line 21
    return-void
.end method

.method private static canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;

    .prologue
    const/4 v4, 0x1

    .line 381
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 383
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v3, v1

    if-ne v3, v4, :cond_25

    const/4 v3, 0x0

    aget-object v0, v1, v3

    .local v0, "arg0":Lgnu/expr/Expression;
    instance-of v3, v0, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_25

    move-object v2, v0

    .line 385
    check-cast v2, Lgnu/expr/LambdaExp;

    .line 386
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    iget v3, v2, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v3, v4, :cond_25

    iget v3, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v3, v4, :cond_25

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v3

    if-nez v3, :cond_25

    .line 392
    .end local v0    # "arg0":Lgnu/expr/Expression;
    .end local v2    # "lexp":Lgnu/expr/LambdaExp;
    :goto_24
    return-object v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public static compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .registers 22
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 313
    invoke-static/range {p0 .. p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v9

    .line 314
    .local v9, "lambda":Lgnu/expr/LambdaExp;
    if-nez v9, :cond_a

    .line 316
    invoke-static/range {p0 .. p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 376
    :goto_9
    return-void

    .line 319
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 320
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    .line 321
    .local v10, "param":Lgnu/expr/Declaration;
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v14

    if-eqz v14, :cond_6a

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_6a

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v14

    if-nez v14, :cond_6a

    .line 323
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lgnu/expr/Declaration;->setCanCall(Z)V

    .line 324
    new-instance v6, Lgnu/kawa/functions/CompileTimeContinuation;

    invoke-direct {v6}, Lgnu/kawa/functions/CompileTimeContinuation;-><init>()V

    .line 325
    .local v6, "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    move-object/from16 v0, p2

    instance-of v14, v0, Lgnu/expr/StackTarget;

    if-eqz v14, :cond_68

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    .line 326
    .local v11, "rtype":Lgnu/bytecode/Type;
    :goto_37
    iget-object v14, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v10, v14}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v12

    .line 328
    .local v12, "runFinallyBlocks":Z
    invoke-virtual {v4, v11, v12}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v3

    .line 329
    .local v3, "bl":Lgnu/bytecode/ExitableBlock;
    iput-object v3, v6, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 330
    move-object/from16 v0, p2

    iput-object v0, v6, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 331
    new-instance v14, Lgnu/expr/QuoteExp;

    invoke-direct {v14, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v14}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    new-instance v14, Lgnu/expr/ApplyExp;

    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    const/16 v16, 0x0

    sget-object v17, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v17, v15, v16

    invoke-direct {v14, v9, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 333
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    goto :goto_9

    .line 325
    .end local v3    # "bl":Lgnu/bytecode/ExitableBlock;
    .end local v11    # "rtype":Lgnu/bytecode/Type;
    .end local v12    # "runFinallyBlocks":Z
    :cond_68
    const/4 v11, 0x0

    goto :goto_37

    .line 337
    .end local v6    # "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    :cond_6a
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v13

    .line 338
    .local v13, "sc":Lgnu/bytecode/Scope;
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v14, v15}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 339
    .local v7, "contVar":Lgnu/bytecode/Variable;
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v7}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .line 340
    .local v5, "contDecl":Lgnu/expr/Declaration;
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 341
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 343
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v15, "<init>"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 344
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 345
    const/4 v15, 0x0

    move-object/from16 v0, p2

    instance-of v14, v0, Lgnu/expr/IgnoreTarget;

    if-nez v14, :cond_a4

    move-object/from16 v0, p2

    instance-of v14, v0, Lgnu/expr/ConsumerTarget;

    if-eqz v14, :cond_104

    :cond_a4
    const/4 v14, 0x0

    :goto_a5
    invoke-virtual {v4, v15, v14}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 346
    new-instance v2, Lgnu/expr/ApplyExp;

    const/4 v14, 0x1

    new-array v14, v14, [Lgnu/expr/Expression;

    const/4 v15, 0x0

    new-instance v16, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v16, v14, v15

    invoke-direct {v2, v9, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 347
    .local v2, "app":Lgnu/expr/ApplyExp;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v14

    if-eqz v14, :cond_d9

    .line 351
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 352
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 353
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v15, "invoked"

    invoke-virtual {v14, v15}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v14

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 355
    :cond_d9
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 358
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 359
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    move-object/from16 v0, p2

    instance-of v14, v0, Lgnu/expr/ConsumerTarget;

    if-eqz v14, :cond_107

    .line 362
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 363
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v15, "handleException$X"

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    .line 364
    .local v8, "handleMethod":Lgnu/bytecode/Method;
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 372
    :goto_f9
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 374
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 375
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_9

    .line 345
    .end local v2    # "app":Lgnu/expr/ApplyExp;
    .end local v8    # "handleMethod":Lgnu/bytecode/Method;
    :cond_104
    sget-object v14, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_a5

    .line 368
    .restart local v2    # "app":Lgnu/expr/ApplyExp;
    :cond_107
    sget-object v14, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v15, "handleException"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    .line 369
    .restart local v8    # "handleMethod":Lgnu/bytecode/Method;
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 370
    sget-object v14, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_f9
.end method

.method public static compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p0, "proc"    # Lgnu/kawa/functions/Convert;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 232
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 233
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    .line 234
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong number of arguments to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_27
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 236
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    aget-object v3, v0, v8

    invoke-static {v3}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 237
    .local v2, "type":Lgnu/bytecode/Type;
    if-eqz v2, :cond_46

    .line 239
    aget-object v3, v0, v7

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 240
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 241
    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 261
    :cond_45
    :goto_45
    return-void

    .line 245
    :cond_46
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    if-nez v3, :cond_52

    .line 247
    const-string v3, "gnu.bytecode.Type"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    .line 249
    :cond_52
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    if-nez v3, :cond_64

    .line 251
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    const-string v4, "coerceFromObject"

    sget-object v5, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    .line 256
    :cond_64
    aget-object v3, v0, v8

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 257
    aget-object v3, v0, v7

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 259
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_45
.end method

.method public static forConvert(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .registers 3
    .param p0, "proc"    # Ljava/lang/Object;

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0    # "proc":Ljava/lang/Object;
    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static forNot(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .registers 3
    .param p0, "proc"    # Ljava/lang/Object;

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0    # "proc":Ljava/lang/Object;
    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static validateApplyAppendValues(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 140
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 141
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 142
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 148
    :cond_e
    :goto_e
    return-object v1

    .line 143
    :cond_f
    array-length v2, v0

    if-nez v2, :cond_15

    .line 144
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_e

    .line 145
    :cond_15
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v1

    .line 146
    .local v1, "folded":Lgnu/expr/Expression;
    if-ne v1, p0, :cond_e

    move-object v1, p0

    .line 148
    goto :goto_e
.end method

.method public static validateApplyCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 294
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 295
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v1, :cond_23

    .line 297
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 298
    iput-object p0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 299
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 300
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 301
    .local v0, "contDecl":Lgnu/expr/Declaration;
    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_23

    .line 302
    sget-object v2, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 304
    .end local v0    # "contDecl":Lgnu/expr/Declaration;
    :cond_23
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 305
    return-object p0
.end method

.method public static validateApplyConstantFunction0(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 51
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    .line 52
    .local v1, "nargs":I
    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    .line 54
    invoke-static {p3, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 57
    .end local v0    # "message":Ljava/lang/String;
    .end local p3    # "proc":Lgnu/mapping/Procedure;
    :goto_13
    return-object v2

    .restart local p3    # "proc":Lgnu/mapping/Procedure;
    :cond_14
    check-cast p3, Lgnu/kawa/functions/ConstantFunction0;

    .end local p3    # "proc":Lgnu/mapping/Procedure;
    iget-object v2, p3, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    goto :goto_13
.end method

.method public static validateApplyConvert(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 12
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 64
    .local v1, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 65
    .local v2, "language":Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 66
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 68
    aget-object v4, v0, v6

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v6

    .line 69
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 70
    .local v3, "type":Lgnu/bytecode/Type;
    instance-of v4, v3, Lgnu/bytecode/Type;

    if-eqz v4, :cond_3b

    .line 72
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v6

    .line 73
    aget-object v4, v0, v7

    invoke-virtual {p1, v4, v3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v7

    .line 74
    invoke-static {v3, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 75
    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 80
    .end local v3    # "type":Lgnu/bytecode/Type;
    :goto_3a
    return-object p0

    .line 79
    :cond_3b
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto :goto_3a
.end method

.method public static validateApplyFormat(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 98
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 99
    .local v4, "retType":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 100
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v8, v1

    if-lez v8, :cond_a6

    .line 102
    const-string v8, "gnu.kawa.functions.Format"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 103
    .local v6, "typeFormat":Lgnu/bytecode/ClassType;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "f":Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 105
    .local v3, "ftype":Lgnu/bytecode/Type;
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v8, :cond_2c

    sget-object v8, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 107
    :cond_2c
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v8, :cond_5f

    const/4 v5, 0x1

    .line 108
    .local v5, "skip":I
    :goto_31
    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v8, v5

    new-array v7, v8, [Lgnu/expr/Expression;

    .line 109
    .local v7, "xargs":[Lgnu/expr/Expression;
    const/4 v8, 0x0

    new-instance v9, Lgnu/expr/QuoteExp;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct {v9, v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    aput-object v9, v7, v8

    .line 110
    const/4 v8, 0x1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    invoke-static {v1, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v0, Lgnu/expr/ApplyExp;

    const-string v8, "formatToString"

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-direct {v0, v8, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 112
    .local v0, "ae":Lgnu/expr/ApplyExp;
    sget-object v8, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v8}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 133
    .end local v0    # "ae":Lgnu/expr/ApplyExp;
    .end local v2    # "f":Ljava/lang/Object;
    .end local v3    # "ftype":Lgnu/bytecode/Type;
    .end local v5    # "skip":I
    .end local v6    # "typeFormat":Lgnu/bytecode/ClassType;
    .end local v7    # "xargs":[Lgnu/expr/Expression;
    :goto_5e
    return-object v0

    .line 107
    .restart local v2    # "f":Ljava/lang/Object;
    .restart local v3    # "ftype":Lgnu/bytecode/Type;
    .restart local v6    # "typeFormat":Lgnu/bytecode/ClassType;
    :cond_5f
    const/4 v5, 0x0

    goto :goto_31

    .line 115
    :cond_61
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v8, :cond_71

    const-string v8, "java.io.Writer"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v3, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 118
    :cond_71
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v8, :cond_86

    .line 120
    array-length v8, v1

    new-array v7, v8, [Lgnu/expr/Expression;

    .line 121
    .restart local v7    # "xargs":[Lgnu/expr/Expression;
    const/4 v8, 0x0

    sget-object v9, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v9, v7, v8

    .line 122
    const/4 v8, 0x1

    const/4 v9, 0x1

    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v1, v7

    .line 125
    .end local v7    # "xargs":[Lgnu/expr/Expression;
    :cond_86
    new-instance v0, Lgnu/expr/ApplyExp;

    const-string v8, "formatToWriter"

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-direct {v0, v8, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 126
    .restart local v0    # "ae":Lgnu/expr/ApplyExp;
    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v8}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    goto :goto_5e

    .line 129
    .end local v0    # "ae":Lgnu/expr/ApplyExp;
    :cond_98
    const-string v8, "java.io.OutputStream"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v3, v8}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 130
    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 132
    .end local v2    # "f":Ljava/lang/Object;
    .end local v3    # "ftype":Lgnu/bytecode/Type;
    .end local v6    # "typeFormat":Lgnu/bytecode/ClassType;
    :cond_a6
    invoke-virtual {p0, v4}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public static validateApplyMakeProcedure(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 155
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 156
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v0, v2

    .line 157
    .local v0, "alen":I
    const/4 v8, 0x0

    .line 158
    .local v8, "method":Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 159
    .local v3, "countMethods":I
    const/4 v9, 0x0

    .line 160
    .local v9, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_4a

    .line 162
    aget-object v1, v2, v4

    .line 164
    .local v1, "arg":Lgnu/expr/Expression;
    instance-of v11, v1, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_46

    move-object v11, v1

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "key":Ljava/lang/Object;
    instance-of v11, v5, Lgnu/expr/Keyword;

    if-eqz v11, :cond_46

    .line 167
    check-cast v5, Lgnu/expr/Keyword;

    .end local v5    # "key":Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "keyword":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    aget-object v10, v2, v4

    .line 169
    .local v10, "next":Lgnu/expr/Expression;
    const-string v11, "name"

    if-ne v6, v11, :cond_3e

    .line 171
    instance-of v11, v10, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_3b

    .line 172
    check-cast v10, Lgnu/expr/QuoteExp;

    .end local v10    # "next":Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    .end local v6    # "keyword":Ljava/lang/String;
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 174
    .restart local v6    # "keyword":Ljava/lang/String;
    .restart local v10    # "next":Lgnu/expr/Expression;
    :cond_3e
    const-string v11, "method"

    if-ne v6, v11, :cond_3b

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    move-object v8, v10

    goto :goto_3b

    .line 184
    .end local v6    # "keyword":Ljava/lang/String;
    .end local v10    # "next":Lgnu/expr/Expression;
    :cond_46
    add-int/lit8 v3, v3, 0x1

    .line 185
    move-object v8, v1

    goto :goto_3b

    .line 188
    .end local v1    # "arg":Lgnu/expr/Expression;
    :cond_4a
    const/4 v11, 0x1

    if-ne v3, v11, :cond_89

    instance-of v11, v8, Lgnu/expr/LambdaExp;

    if-eqz v11, :cond_89

    move-object v7, v8

    .line 190
    check-cast v7, Lgnu/expr/LambdaExp;

    .line 191
    .local v7, "lexp":Lgnu/expr/LambdaExp;
    const/4 v4, 0x0

    :goto_55
    if-ge v4, v0, :cond_8a

    .line 193
    aget-object v1, v2, v4

    .line 195
    .restart local v1    # "arg":Lgnu/expr/Expression;
    instance-of v11, v1, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_78

    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1    # "arg":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "key":Ljava/lang/Object;
    instance-of v11, v5, Lgnu/expr/Keyword;

    if-eqz v11, :cond_78

    .line 198
    check-cast v5, Lgnu/expr/Keyword;

    .end local v5    # "key":Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    .line 199
    .restart local v6    # "keyword":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    aget-object v10, v2, v4

    .line 200
    .restart local v10    # "next":Lgnu/expr/Expression;
    const-string v11, "name"

    if-ne v6, v11, :cond_7b

    .line 201
    invoke-virtual {v7, v9}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 191
    .end local v6    # "keyword":Ljava/lang/String;
    .end local v10    # "next":Lgnu/expr/Expression;
    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 202
    .restart local v6    # "keyword":Ljava/lang/String;
    .restart local v10    # "next":Lgnu/expr/Expression;
    :cond_7b
    const-string v11, "method"

    if-eq v6, v11, :cond_78

    .line 205
    sget-object v11, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v11, v6}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    invoke-virtual {v7, v11, v10}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_78

    .end local v6    # "keyword":Ljava/lang/String;
    .end local v7    # "lexp":Lgnu/expr/LambdaExp;
    .end local v10    # "next":Lgnu/expr/Expression;
    :cond_89
    move-object v8, p0

    .line 210
    .end local v8    # "method":Lgnu/expr/Expression;
    :cond_8a
    return-object v8
.end method

.method public static validateApplyMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 42
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "xproc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 431
    move-object/from16 v24, p3

    check-cast v24, Lgnu/kawa/functions/Map;

    .line 432
    .local v24, "mproc":Lgnu/kawa/functions/Map;
    move-object/from16 v0, v24

    iget-boolean v7, v0, Lgnu/kawa/functions/Map;->collect:Z

    .line 435
    .local v7, "collect":Z
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 437
    .local v5, "args":[Lgnu/expr/Expression;
    array-length v0, v5

    move/from16 v25, v0

    .line 438
    .local v25, "nargs":I
    const/16 v35, 0x2

    move/from16 v0, v25

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    .line 534
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    :goto_1a
    return-object p0

    .line 441
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_1b
    add-int/lit8 v25, v25, -0x1

    .line 443
    const/16 v35, 0x0

    aget-object v27, v5, v35

    .line 447
    .local v27, "proc":Lgnu/expr/Expression;
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Expression;->side_effects()Z

    move-result v35

    if-nez v35, :cond_e5

    const/16 v29, 0x1

    .line 450
    .local v29, "procSafeForMultipleEvaluation":Z
    :goto_29
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v15, v0, [Lgnu/expr/Expression;

    .line 451
    .local v15, "inits1":[Lgnu/expr/Expression;
    const/16 v35, 0x0

    aput-object v27, v15, v35

    .line 452
    new-instance v19, Lgnu/expr/LetExp;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 453
    .local v19, "let1":Lgnu/expr/LetExp;
    const-string v35, "%proc"

    sget-object v36, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v28

    .line 455
    .local v28, "procDecl":Lgnu/expr/Declaration;
    const/16 v35, 0x0

    aget-object v35, v5, v35

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 458
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v16, v0

    .line 459
    .local v16, "inits2":[Lgnu/expr/Expression;
    new-instance v20, Lgnu/expr/LetExp;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 460
    .local v20, "let2":Lgnu/expr/LetExp;
    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 461
    new-instance v22, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_e9

    add-int/lit8 v35, v25, 0x1

    :goto_6d
    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 462
    .local v22, "lexp":Lgnu/expr/LambdaExp;
    const/16 v35, 0x0

    aput-object v22, v16, v35

    .line 463
    const-string v35, "%loop"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v23

    .line 464
    .local v23, "loopDecl":Lgnu/expr/Declaration;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 467
    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    .line 468
    .local v17, "inits3":[Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/LetExp;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 470
    .local v21, "let3":Lgnu/expr/LetExp;
    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    .line 471
    .local v18, "largs":[Lgnu/expr/Declaration;
    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v26, v0

    .line 472
    .local v26, "pargs":[Lgnu/expr/Declaration;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a5
    move/from16 v0, v25

    if-ge v13, v0, :cond_ec

    .line 474
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "arg"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "argName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v35

    aput-object v35, v18, v13

    .line 476
    sget-object v35, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v35

    aput-object v35, v26, v13

    .line 477
    new-instance v35, Lgnu/expr/ReferenceExp;

    aget-object v36, v18, v13

    invoke-direct/range {v35 .. v36}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v17, v13

    .line 478
    aget-object v35, v26, v13

    aget-object v36, v17, v13

    invoke-virtual/range {v35 .. v36}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 472
    add-int/lit8 v13, v13, 0x1

    goto :goto_a5

    .line 447
    .end local v4    # "argName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v15    # "inits1":[Lgnu/expr/Expression;
    .end local v16    # "inits2":[Lgnu/expr/Expression;
    .end local v17    # "inits3":[Lgnu/expr/Expression;
    .end local v18    # "largs":[Lgnu/expr/Declaration;
    .end local v19    # "let1":Lgnu/expr/LetExp;
    .end local v20    # "let2":Lgnu/expr/LetExp;
    .end local v21    # "let3":Lgnu/expr/LetExp;
    .end local v22    # "lexp":Lgnu/expr/LambdaExp;
    .end local v23    # "loopDecl":Lgnu/expr/Declaration;
    .end local v26    # "pargs":[Lgnu/expr/Declaration;
    .end local v28    # "procDecl":Lgnu/expr/Declaration;
    .end local v29    # "procSafeForMultipleEvaluation":Z
    :cond_e5
    const/16 v29, 0x0

    goto/16 :goto_29

    .restart local v15    # "inits1":[Lgnu/expr/Expression;
    .restart local v16    # "inits2":[Lgnu/expr/Expression;
    .restart local v19    # "let1":Lgnu/expr/LetExp;
    .restart local v20    # "let2":Lgnu/expr/LetExp;
    .restart local v28    # "procDecl":Lgnu/expr/Declaration;
    .restart local v29    # "procSafeForMultipleEvaluation":Z
    :cond_e9
    move/from16 v35, v25

    .line 461
    goto :goto_6d

    .line 480
    .restart local v13    # "i":I
    .restart local v17    # "inits3":[Lgnu/expr/Expression;
    .restart local v18    # "largs":[Lgnu/expr/Declaration;
    .restart local v21    # "let3":Lgnu/expr/LetExp;
    .restart local v22    # "lexp":Lgnu/expr/LambdaExp;
    .restart local v23    # "loopDecl":Lgnu/expr/Declaration;
    .restart local v26    # "pargs":[Lgnu/expr/Declaration;
    :cond_ec
    if-eqz v7, :cond_148

    const-string v35, "result"

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    .line 481
    .local v33, "resultDecl":Lgnu/expr/Declaration;
    :goto_f8
    add-int/lit8 v35, v25, 0x1

    move/from16 v0, v35

    new-array v10, v0, [Lgnu/expr/Expression;

    .line 482
    .local v10, "doArgs":[Lgnu/expr/Expression;
    if-eqz v7, :cond_14b

    add-int/lit8 v35, v25, 0x1

    :goto_102
    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v31, v0

    .line 483
    .local v31, "recArgs":[Lgnu/expr/Expression;
    const/4 v13, 0x0

    :goto_109
    move/from16 v0, v25

    if-ge v13, v0, :cond_14e

    .line 485
    add-int/lit8 v35, v13, 0x1

    new-instance v36, Lgnu/expr/ReferenceExp;

    aget-object v37, v26, v13

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v37, "car"

    invoke-static/range {v36 .. v37}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    aput-object v36, v10, v35

    .line 486
    new-instance v35, Lgnu/expr/ReferenceExp;

    aget-object v36, v26, v13

    invoke-direct/range {v35 .. v36}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v36, "cdr"

    invoke-static/range {v35 .. v36}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v35

    aput-object v35, v31, v13

    .line 483
    add-int/lit8 v13, v13, 0x1

    goto :goto_109

    .line 480
    .end local v10    # "doArgs":[Lgnu/expr/Expression;
    .end local v31    # "recArgs":[Lgnu/expr/Expression;
    .end local v33    # "resultDecl":Lgnu/expr/Declaration;
    :cond_148
    const/16 v33, 0x0

    goto :goto_f8

    .restart local v10    # "doArgs":[Lgnu/expr/Expression;
    .restart local v33    # "resultDecl":Lgnu/expr/Declaration;
    :cond_14b
    move/from16 v35, v25

    .line 482
    goto :goto_102

    .line 488
    .restart local v31    # "recArgs":[Lgnu/expr/Expression;
    :cond_14e
    if-nez v29, :cond_155

    .line 489
    new-instance v27, Lgnu/expr/ReferenceExp;

    .end local v27    # "proc":Lgnu/expr/Expression;
    invoke-direct/range {v27 .. v28}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 490
    .restart local v27    # "proc":Lgnu/expr/Expression;
    :cond_155
    const/16 v35, 0x0

    aput-object v27, v10, v35

    .line 491
    new-instance v35, Lgnu/expr/ApplyExp;

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v37, v0

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v11

    .line 492
    .local v11, "doit":Lgnu/expr/Expression;
    if-eqz v7, :cond_1a0

    .line 494
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v9, v0, [Lgnu/expr/Expression;

    .line 495
    .local v9, "consArgs":[Lgnu/expr/Expression;
    const/16 v35, 0x0

    aput-object v11, v9, v35

    .line 496
    const/16 v35, 0x1

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v36, v9, v35

    .line 497
    sget-object v35, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v36, "make"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v9}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v35

    aput-object v35, v31, v25

    .line 500
    .end local v9    # "consArgs":[Lgnu/expr/Expression;
    :cond_1a0
    new-instance v35, Lgnu/expr/ApplyExp;

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v30

    .line 501
    .local v30, "rec":Lgnu/expr/Expression;
    if-eqz v7, :cond_249

    .end local v30    # "rec":Lgnu/expr/Expression;
    :goto_1c2
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 502
    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 503
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    if-eqz v7, :cond_256

    add-int/lit8 v35, v25, 0x1

    :goto_1df
    move/from16 v0, v35

    new-array v14, v0, [Lgnu/expr/Expression;

    .line 505
    .local v14, "initArgs":[Lgnu/expr/Expression;
    new-instance v12, Lgnu/expr/QuoteExp;

    sget-object v35, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v35

    invoke-direct {v12, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 506
    .local v12, "empty":Lgnu/expr/QuoteExp;
    move/from16 v13, v25

    :goto_1ee
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_25c

    .line 508
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v8, v0, [Lgnu/expr/Expression;

    .line 509
    .local v8, "compArgs":[Lgnu/expr/Expression;
    const/16 v35, 0x0

    new-instance v36, Lgnu/expr/ReferenceExp;

    aget-object v37, v18, v13

    invoke-direct/range {v36 .. v37}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v36, v8, v35

    .line 510
    const/16 v35, 0x1

    aput-object v12, v8, v35

    .line 511
    if-eqz v7, :cond_259

    new-instance v32, Lgnu/expr/ReferenceExp;

    invoke-direct/range {v32 .. v33}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 514
    .local v32, "result":Lgnu/expr/Expression;
    :goto_20e
    new-instance v35, Lgnu/expr/IfExp;

    new-instance v36, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v36

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 516
    add-int/lit8 v35, v13, 0x1

    aget-object v35, v5, v35

    aput-object v35, v14, v13

    goto :goto_1ee

    .line 501
    .end local v8    # "compArgs":[Lgnu/expr/Expression;
    .end local v12    # "empty":Lgnu/expr/QuoteExp;
    .end local v14    # "initArgs":[Lgnu/expr/Expression;
    .end local v32    # "result":Lgnu/expr/Expression;
    .restart local v30    # "rec":Lgnu/expr/Expression;
    :cond_249
    new-instance v35, Lgnu/expr/BeginExp;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-direct {v0, v11, v1}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v30, v35

    goto/16 :goto_1c2

    .end local v30    # "rec":Lgnu/expr/Expression;
    :cond_256
    move/from16 v35, v25

    .line 504
    goto :goto_1df

    .line 511
    .restart local v8    # "compArgs":[Lgnu/expr/Expression;
    .restart local v12    # "empty":Lgnu/expr/QuoteExp;
    .restart local v14    # "initArgs":[Lgnu/expr/Expression;
    :cond_259
    sget-object v32, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_20e

    .line 518
    .end local v8    # "compArgs":[Lgnu/expr/Expression;
    :cond_25c
    if-eqz v7, :cond_260

    .line 519
    aput-object v12, v14, v25

    .line 521
    :cond_260
    new-instance v35, Lgnu/expr/ApplyExp;

    new-instance v36, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    .line 522
    .local v6, "body":Lgnu/expr/Expression;
    if-eqz v7, :cond_29a

    .line 524
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v34, v0

    .line 525
    .local v34, "reverseArgs":[Lgnu/expr/Expression;
    const/16 v35, 0x0

    aput-object v6, v34, v35

    .line 526
    sget-object v35, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v36, "reverseInPlace"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v6

    .line 529
    .end local v34    # "reverseArgs":[Lgnu/expr/Expression;
    :cond_29a
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 531
    if-eqz v29, :cond_2a5

    move-object/from16 p0, v20

    .line 532
    goto/16 :goto_1a

    :cond_2a5
    move-object/from16 p0, v19

    .line 534
    goto/16 :goto_1a
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 87
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 217
    check-cast p3, Lgnu/kawa/functions/ValuesMap;

    .end local p3    # "proc":Lgnu/mapping/Procedure;
    invoke-static {p0, p3}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 218
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_17

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 221
    iput-object p0, v0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 222
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    iput-object v1, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 224
    :cond_17
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 35
    iget v0, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    packed-switch v0, :pswitch_data_1c

    .line 43
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 38
    :pswitch_b
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Convert;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    :goto_12
    return-void

    .line 41
    :pswitch_13
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Not;

    invoke-virtual {p0, v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_12

    .line 35
    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 15
    .param p1, "proc"    # Lgnu/kawa/functions/Not;
    .param p2, "exp"    # Lgnu/expr/ApplyExp;
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .prologue
    .line 265
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v0, v8, v9

    .line 266
    .local v0, "arg":Lgnu/expr/Expression;
    iget-object v4, p1, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 267
    .local v4, "language":Lgnu/expr/Language;
    instance-of v8, p4, Lgnu/expr/ConditionalTarget;

    if-eqz v8, :cond_26

    move-object v2, p4

    .line 269
    check-cast v2, Lgnu/expr/ConditionalTarget;

    .line 270
    .local v2, "ctarget":Lgnu/expr/ConditionalTarget;
    new-instance v5, Lgnu/expr/ConditionalTarget;

    iget-object v8, v2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    iget-object v9, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-direct {v5, v8, v9, v4}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 272
    .local v5, "sub_target":Lgnu/expr/ConditionalTarget;
    iget-boolean v8, v2, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-nez v8, :cond_24

    const/4 v8, 0x1

    :goto_1e
    iput-boolean v8, v5, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 273
    invoke-virtual {v0, p3, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 289
    .end local v2    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v5    # "sub_target":Lgnu/expr/ConditionalTarget;
    :goto_23
    return-void

    .line 272
    .restart local v2    # "ctarget":Lgnu/expr/ConditionalTarget;
    .restart local v5    # "sub_target":Lgnu/expr/ConditionalTarget;
    :cond_24
    const/4 v8, 0x0

    goto :goto_1e

    .line 276
    .end local v2    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v5    # "sub_target":Lgnu/expr/ConditionalTarget;
    :cond_26
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 277
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 278
    .local v7, "type":Lgnu/bytecode/Type;
    instance-of v8, p4, Lgnu/expr/StackTarget;

    if-eqz v8, :cond_4a

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_4a

    .line 280
    invoke-virtual {v0, p3, p4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 281
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    goto :goto_23

    .line 285
    :cond_4a
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    .line 286
    .local v6, "trueExp":Lgnu/expr/QuoteExp;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    .line 287
    .local v3, "falseExp":Lgnu/expr/QuoteExp;
    invoke-static {v0, v3, v6, p3, p4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_23
.end method
