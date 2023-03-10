.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x4000

.field public static final IMMEDIATE:I = 0x100000

.field public static final LAZY_DECLARATIONS:I = 0x80000

.field public static final NONSTATIC_SPECIFIED:I = 0x10000

.field public static final STATIC_RUN_SPECIFIED:I = 0x40000

.field public static final STATIC_SPECIFIED:I = 0x8000

.field public static final SUPERTYPE_SPECIFIED:I = 0x20000

.field public static alwaysCompile:Z

.field public static compilerAvailable:Z

.field public static dumpZipPrefix:Ljava/lang/String;

.field public static interactiveCounter:I

.field static lastZipCounter:I

.field public static neverCompile:Z


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 173
    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 28
    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .registers 9
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "msg"    # Lgnu/mapping/OutPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 197
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 198
    .local v1, "language":Lgnu/expr/Language;
    invoke-static {p0, p2, p3, p4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "inst":Ljava/lang/Object;
    if-nez v0, :cond_10

    .line 200
    const/4 v3, 0x0

    .line 202
    :goto_f
    return v3

    .line 201
    :cond_10
    invoke-static {p0, p1, v1, v2, v0}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V

    .line 202
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public static final evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;
    .registers 15
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "msg"    # Lgnu/mapping/OutPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 214
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 215
    .local v3, "mexp":Lgnu/expr/ModuleExp;
    iget-object v9, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v9, v3, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 216
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v5

    .line 217
    .local v5, "orig_env":Lgnu/mapping/Environment;
    invoke-static {p1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v4

    .line 218
    .local v4, "orig_comp":Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 219
    .local v2, "messages":Lgnu/text/SourceMessages;
    const/4 v6, 0x0

    .line 220
    .local v6, "savedLoader":Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .line 227
    .local v7, "thread":Ljava/lang/Thread;
    sget-boolean v9, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v9, :cond_28

    sget-boolean v9, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v9, :cond_28

    .line 229
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "alwaysCompile and neverCompile are both true!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_28
    sget-boolean v9, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v9, :cond_2e

    .line 232
    iput-boolean v10, p1, Lgnu/expr/Compilation;->mustCompile:Z

    .line 237
    :cond_2e
    const/4 v9, 0x6

    :try_start_2f
    invoke-virtual {p1, v9}, Lgnu/expr/Compilation;->process(I)V

    .line 238
    iget-object v9, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 240
    if-eqz p3, :cond_50

    const/16 v9, 0x14

    invoke-virtual {v2, p3, v9}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_f3

    move-result v9

    if-eqz v9, :cond_56

    .line 285
    :cond_43
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4e

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4e
    move-object v0, v8

    :cond_4f
    :goto_4f
    return-object v0

    .line 240
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v9

    if-nez v9, :cond_43

    .line 247
    :cond_56
    iget-boolean v9, p1, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v9, :cond_99

    .line 250
    sget-boolean v8, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v8, :cond_8b

    if-eqz p3, :cond_8b

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Evaluating final module \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, p3}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 254
    const/16 v8, 0x5d

    invoke-virtual {p3, v8}, Lgnu/mapping/OutPort;->println(C)V

    .line 255
    invoke-virtual {p3}, Lgnu/mapping/OutPort;->flush()V

    .line 257
    :cond_8b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_8d
    .catchall {:try_start_50 .. :try_end_8d} :catchall_f3

    .line 285
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4f

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_4f

    .line 261
    :cond_99
    :try_start_99
    invoke-static {p1, p2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_f3

    move-result-object v0

    .line 262
    .local v0, "clas":Ljava/lang/Class;
    if-nez v0, :cond_ac

    .line 285
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_aa

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_aa
    move-object v0, v8

    goto :goto_4f

    .line 266
    :cond_ac
    :try_start_ac
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 267
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_bb} :catch_dd
    .catchall {:try_start_ac .. :try_end_bb} :catchall_f3

    .line 275
    :goto_bb
    const/4 v8, 0x0

    :try_start_bc
    iput-object v8, v3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 276
    const/4 v8, 0x0

    iput-object v8, v3, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 277
    if-eqz p3, :cond_e0

    const/16 v8, 0x14

    invoke-virtual {v2, p3, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 279
    :cond_cb
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_cf
    .catchall {:try_start_bc .. :try_end_cf} :catchall_f3

    move-result-object v0

    .line 285
    .end local v0    # "clas":Ljava/lang/Class;
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4f

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_4f

    .line 270
    .restart local v0    # "clas":Ljava/lang/Class;
    :catch_dd
    move-exception v1

    .line 272
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v7, 0x0

    goto :goto_bb

    .line 277
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_e0
    :try_start_e0
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_f3

    move-result v8

    if-nez v8, :cond_cb

    .line 285
    :cond_e6
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4f

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_4f

    .line 285
    .end local v0    # "clas":Ljava/lang/Class;
    :catchall_f3
    move-exception v8

    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_ff

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_ff
    throw v8
.end method

.method public static final evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    .registers 22
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .param p2, "language"    # Lgnu/expr/Language;
    .param p3, "mexp"    # Lgnu/expr/ModuleExp;
    .param p4, "inst"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static/range {p0 .. p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v9

    .line 298
    .local v9, "orig_env":Lgnu/mapping/Environment;
    const/4 v11, 0x0

    .line 299
    .local v11, "savedLoader":Ljava/lang/ClassLoader;
    const/4 v13, 0x0

    .line 302
    .local v13, "thread":Ljava/lang/Thread;
    :try_start_6
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p4

    if-ne v0, v15, :cond_21

    .line 304
    move-object/from16 v0, p3

    iget-object v15, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 383
    :cond_15
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_5f

    .line 387
    invoke-static {v9}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v13, :cond_20

    .line 389
    invoke-virtual {v13, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 391
    :cond_20
    return-void

    .line 308
    :cond_21
    :try_start_21
    move-object/from16 v0, p4

    instance-of v15, v0, Ljava/lang/Class;

    if-eqz v15, :cond_36

    .line 309
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v16

    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Class;

    move-object v15, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 311
    :cond_36
    move-object/from16 v0, p4

    instance-of v15, v0, Ljava/lang/Runnable;

    if-eqz v15, :cond_53

    .line 313
    move-object/from16 v0, p4

    instance-of v15, v0, Lgnu/expr/ModuleBody;

    if-eqz v15, :cond_69

    .line 315
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ModuleBody;

    move-object v8, v0

    .line 316
    .local v8, "mb":Lgnu/expr/ModuleBody;
    iget-boolean v15, v8, Lgnu/expr/ModuleBody;->runDone:Z

    if-nez v15, :cond_53

    .line 318
    const/4 v15, 0x1

    iput-boolean v15, v8, Lgnu/expr/ModuleBody;->runDone:Z

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 326
    .end local v8    # "mb":Lgnu/expr/ModuleBody;
    :cond_53
    :goto_53
    if-nez p3, :cond_72

    .line 327
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_5f

    goto :goto_15

    .line 387
    :catchall_5f
    move-exception v15

    invoke-static {v9}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v13, :cond_68

    .line 389
    invoke-virtual {v13, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_68
    throw v15

    .line 323
    :cond_69
    :try_start_69
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Runnable;

    move-object v15, v0

    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    goto :goto_53

    .line 331
    :cond_72
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 332
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_76
    if-eqz v3, :cond_15

    .line 334
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 335
    .local v4, "dname":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v15

    if-nez v15, :cond_84

    if-nez v4, :cond_89

    .line 332
    .end local v4    # "dname":Ljava/lang/Object;
    :cond_84
    :goto_84
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    goto :goto_76

    .line 337
    .restart local v4    # "dname":Ljava/lang/Object;
    :cond_89
    iget-object v6, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 338
    .local v6, "fld":Lgnu/bytecode/Field;
    instance-of v15, v4, Lgnu/mapping/Symbol;

    if-eqz v15, :cond_c2

    check-cast v4, Lgnu/mapping/Symbol;

    .end local v4    # "dname":Ljava/lang/Object;
    move-object v12, v4

    .line 340
    .local v12, "sym":Lgnu/mapping/Symbol;
    :goto_92
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v10

    .line 341
    .local v10, "property":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 346
    .local v5, "dvalue":Lgnu/expr/Expression;
    iget-object v15, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_100

    .line 349
    instance-of v15, v5, Lgnu/expr/QuoteExp;

    if-eqz v15, :cond_d1

    sget-object v15, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v5, v15, :cond_d1

    .line 351
    check-cast v5, Lgnu/expr/QuoteExp;

    .end local v5    # "dvalue":Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 360
    .local v14, "value":Ljava/lang/Object;
    :cond_b4
    :goto_b4
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 361
    check-cast v14, Lgnu/mapping/Location;

    .end local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v14}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_84

    .line 338
    .end local v10    # "property":Ljava/lang/Object;
    .end local v12    # "sym":Lgnu/mapping/Symbol;
    .restart local v4    # "dname":Ljava/lang/Object;
    :cond_c2
    const-string v15, ""

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v12

    goto :goto_92

    .line 354
    .end local v4    # "dname":Ljava/lang/Object;
    .restart local v5    # "dvalue":Lgnu/expr/Expression;
    .restart local v10    # "property":Ljava/lang/Object;
    .restart local v12    # "sym":Lgnu/mapping/Symbol;
    :cond_d1
    iget-object v15, v3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 355
    .restart local v14    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-nez v15, :cond_eb

    .line 356
    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v15

    invoke-virtual {v3, v15}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_b4

    .line 357
    :cond_eb
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v15

    if-eqz v15, :cond_f5

    instance-of v15, v5, Lgnu/expr/ReferenceExp;

    if-nez v15, :cond_b4

    .line 358
    :cond_f5
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_b4

    .line 363
    .end local v5    # "dvalue":Lgnu/expr/Expression;
    :cond_fa
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v14}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_84

    .line 367
    .end local v14    # "value":Ljava/lang/Object;
    .restart local v5    # "dvalue":Lgnu/expr/Expression;
    :cond_100
    new-instance v7, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v15

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 370
    .local v7, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v7, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v7}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 372
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_11b
    .catchall {:try_start_69 .. :try_end_11b} :catchall_5f

    goto/16 :goto_84
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .registers 32
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v19

    .line 51
    .local v19, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v18

    .line 55
    .local v18, "messages":Lgnu/text/SourceMessages;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    invoke-virtual/range {v26 .. v27}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 57
    invoke-virtual/range {v18 .. v18}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 58
    const/4 v5, 0x0

    .line 148
    :cond_1a
    return-object v5

    .line 60
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object/from16 v17, v0

    .line 61
    .local v17, "loader":Lgnu/bytecode/ArrayClassLoader;
    if-nez p1, :cond_2b

    .line 62
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 63
    :cond_2b
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 65
    const/16 v25, 0x0

    .line 66
    .local v25, "zout":Ljava/util/zip/ZipOutputStream;
    sget-object v26, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    if-eqz v26, :cond_7f

    .line 68
    new-instance v24, Ljava/lang/StringBuffer;

    sget-object v26, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .local v24, "zipname":Ljava/lang/StringBuffer;
    sget v26, Lgnu/expr/ModuleExp;->lastZipCounter:I

    add-int/lit8 v26, v26, 0x1

    sput v26, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 71
    sget v26, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sget v27, Lgnu/expr/ModuleExp;->lastZipCounter:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_57

    .line 72
    sget v26, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sput v26, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 73
    :cond_57
    sget v26, Lgnu/expr/ModuleExp;->lastZipCounter:I

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v26, ".zip"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v23, Ljava/io/FileOutputStream;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v23, "zfout":Ljava/io/FileOutputStream;
    new-instance v25, Ljava/util/zip/ZipOutputStream;

    .end local v25    # "zout":Ljava/util/zip/ZipOutputStream;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .end local v23    # "zfout":Ljava/io/FileOutputStream;
    .end local v24    # "zipname":Ljava/lang/StringBuffer;
    .restart local v25    # "zout":Ljava/util/zip/ZipOutputStream;
    :cond_7f
    const/4 v15, 0x0

    .local v15, "iClass":I
    :goto_80
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/Compilation;->numClasses:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v15, v0, :cond_101

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move-object/from16 v26, v0

    aget-object v5, v26, v15

    .line 83
    .local v5, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "className":Ljava/lang/String;
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v6

    .line 85
    .local v6, "classBytes":[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    .line 87
    if-eqz v25, :cond_fe

    .line 89
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0x2e

    const/16 v28, 0x2f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".class"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "clname":Ljava/lang/String;
    new-instance v22, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 92
    .local v22, "zent":Ljava/util/zip/ZipEntry;
    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 94
    .local v10, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v10, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 95
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 80
    .end local v8    # "clname":Ljava/lang/String;
    .end local v10    # "crc":Ljava/util/zip/CRC32;
    .end local v22    # "zent":Ljava/util/zip/ZipEntry;
    :cond_fe
    add-int/lit8 v15, v15, 0x1

    goto :goto_80

    .line 101
    .end local v5    # "clas":Lgnu/bytecode/ClassType;
    .end local v6    # "classBytes":[B
    .end local v7    # "className":Ljava/lang/String;
    :cond_101
    if-eqz v25, :cond_106

    .line 103
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 111
    :cond_106
    const/4 v5, 0x0

    .line 115
    .local v5, "clas":Ljava/lang/Class;
    move-object/from16 v9, v17

    .line 116
    .local v9, "context":Lgnu/bytecode/ArrayClassLoader;
    :goto_109
    invoke-virtual {v9}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    move/from16 v26, v0

    if-eqz v26, :cond_11c

    .line 117
    invoke-virtual {v9}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v9

    .end local v9    # "context":Lgnu/bytecode/ArrayClassLoader;
    check-cast v9, Lgnu/bytecode/ArrayClassLoader;

    .restart local v9    # "context":Lgnu/bytecode/ArrayClassLoader;
    goto :goto_109

    .line 118
    :cond_11c
    const/4 v15, 0x0

    :goto_11d
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/Compilation;->numClasses:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v15, v0, :cond_160

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move-object/from16 v26, v0

    aget-object v11, v26, v15

    .line 121
    .local v11, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 122
    .local v4, "cclass":Ljava/lang/Class;
    invoke-virtual {v11, v4}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 123
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 124
    if-nez v15, :cond_14b

    .line 125
    move-object v5, v4

    .line 118
    :cond_148
    :goto_148
    add-int/lit8 v15, v15, 0x1

    goto :goto_11d

    .line 130
    :cond_14b
    move-object/from16 v0, v17

    if-eq v9, v0, :cond_148

    .line 131
    invoke-virtual {v9, v4}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_152} :catch_153
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_152} :catch_1a2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_152} :catch_1af

    goto :goto_148

    .line 150
    .end local v4    # "cclass":Ljava/lang/Class;
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v9    # "context":Lgnu/bytecode/ArrayClassLoader;
    .end local v11    # "ctype":Lgnu/bytecode/ClassType;
    .end local v15    # "iClass":I
    .end local v17    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v25    # "zout":Ljava/util/zip/ZipOutputStream;
    :catch_153
    move-exception v14

    .line 152
    .local v14, "ex":Ljava/io/IOException;
    new-instance v26, Lgnu/mapping/WrappedException;

    const-string v27, "I/O error in lambda eval"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 134
    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v5    # "clas":Ljava/lang/Class;
    .restart local v9    # "context":Lgnu/bytecode/ArrayClassLoader;
    .restart local v15    # "iClass":I
    .restart local v17    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .restart local v25    # "zout":Ljava/util/zip/ZipOutputStream;
    :cond_160
    :try_start_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v20, v0

    .line 135
    .local v20, "minfo":Lgnu/expr/ModuleInfo;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 137
    move-object/from16 v0, v20

    iget v0, v0, Lgnu/expr/ModuleInfo;->numDependencies:I

    move/from16 v21, v0

    .line 139
    .local v21, "ndeps":I
    const/16 v16, 0x0

    .local v16, "idep":I
    :goto_176
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    .line 141
    move-object/from16 v0, v20

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move-object/from16 v26, v0

    aget-object v13, v26, v16

    .line 142
    .local v13, "dep":Lgnu/expr/ModuleInfo;
    invoke-virtual {v13}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v12

    .line 143
    .local v12, "dclass":Ljava/lang/Class;
    if-nez v12, :cond_194

    .line 144
    iget-object v0, v13, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object v12

    .line 145
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_19f} :catch_153
    .catch Ljava/lang/ClassNotFoundException; {:try_start_160 .. :try_end_19f} :catch_1a2
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_19f} :catch_1af

    .line 139
    add-int/lit8 v16, v16, 0x1

    goto :goto_176

    .line 154
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v9    # "context":Lgnu/bytecode/ArrayClassLoader;
    .end local v12    # "dclass":Ljava/lang/Class;
    .end local v13    # "dep":Lgnu/expr/ModuleInfo;
    .end local v15    # "iClass":I
    .end local v16    # "idep":I
    .end local v17    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v20    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v21    # "ndeps":I
    .end local v25    # "zout":Ljava/util/zip/ZipOutputStream;
    :catch_1a2
    move-exception v14

    .line 156
    .local v14, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v26, Lgnu/mapping/WrappedException;

    const-string v27, "class not found in lambda eval"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 158
    .end local v14    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1af
    move-exception v14

    .line 160
    .local v14, "ex":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v26

    const/16 v27, 0x66

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "internal compile error - caught "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2, v14}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance v26, Lgnu/text/SyntaxException;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v26
.end method

.method public static mustAlwaysCompile()V
    .registers 1

    .prologue
    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 187
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 188
    return-void
.end method

.method public static mustNeverCompile()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 180
    sput-boolean v1, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 182
    sput-boolean v1, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 183
    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .registers 3
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 426
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 427
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-nez v0, :cond_a

    .line 430
    :goto_9
    return-void

    .line 429
    :cond_a
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    goto :goto_9
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .registers 12
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    const-wide/32 v8, 0x10000

    const-wide/16 v6, 0x6

    const/4 v2, 0x0

    .line 440
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 441
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_a
    if-eqz v0, :cond_31

    .line 443
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_18
    iget-object v3, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_21

    .line 441
    :cond_1c
    :goto_1c
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_a

    .line 445
    :cond_21
    invoke-virtual {v0, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 449
    invoke-virtual {v0, p1, v2}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_1c

    .line 451
    :cond_31
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 452
    :goto_35
    if-eqz v0, :cond_8e

    .line 454
    iget-object v3, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_40

    .line 452
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_35

    .line 456
    :cond_40
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 457
    .local v1, "value":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v3

    if-nez v3, :cond_64

    const-wide/16 v4, 0x4000

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 463
    :cond_64
    invoke-virtual {v0, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 465
    instance-of v3, v1, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_7c

    instance-of v3, v1, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_7c

    instance-of v3, v1, Lgnu/expr/ClassExp;

    if-nez v3, :cond_7c

    .line 469
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1    # "value":Lgnu/expr/Expression;
    invoke-virtual {v1, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_3b

    .line 473
    .restart local v1    # "value":Lgnu/expr/Expression;
    :cond_7c
    invoke-virtual {v0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v3

    if-nez v3, :cond_88

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v3

    if-eqz v3, :cond_8c

    .end local v1    # "value":Lgnu/expr/Expression;
    :cond_88
    :goto_88
    invoke-virtual {v0, p1, v1}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3b

    .restart local v1    # "value":Lgnu/expr/Expression;
    :cond_8c
    move-object v1, v2

    goto :goto_88

    .line 478
    .end local v1    # "value":Lgnu/expr/Expression;
    :cond_8e
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .registers 13
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 532
    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v8, v9, :cond_d

    .line 533
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 590
    :cond_c
    :goto_c
    return-object v0

    .line 534
    :cond_d
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "mname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 537
    .local v1, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .line 538
    .local v7, "path":Lgnu/text/Path;
    if-eqz v4, :cond_84

    .line 539
    move-object v3, v4

    .line 562
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_23

    .line 563
    invoke-virtual {p0, v3}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 564
    :cond_23
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    iget-object v8, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_e0

    if-eqz v7, :cond_e0

    invoke-virtual {v7}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_e0

    invoke-virtual {v7}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v6

    .local v6, "parentPath":Lgnu/text/Path;
    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "parent":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e0

    const-string v8, ".."

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_e0

    .line 572
    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 573
    const-string v8, "./"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 574
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 575
    :cond_68
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    move-object v1, v3

    .line 580
    .end local v5    # "parent":Ljava/lang/String;
    .end local v6    # "parentPath":Lgnu/text/Path;
    :goto_71
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 582
    iget-object v8, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v8, p0, :cond_c

    .line 584
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v8, :cond_f5

    .line 585
    iput-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_c

    .line 540
    .end local v0    # "clas":Lgnu/bytecode/ClassType;
    :cond_84
    if-nez v3, :cond_8f

    .line 542
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 543
    if-nez v3, :cond_1a

    .line 544
    const-string v3, "$unnamed_input_file$"

    goto :goto_1a

    .line 546
    :cond_8f
    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "/dev/stdin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 548
    :cond_a3
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 549
    if-nez v3, :cond_1a

    .line 550
    const-string v3, "$stdin$"

    goto/16 :goto_1a

    .line 554
    :cond_ad
    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 555
    invoke-virtual {v7}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v3

    .line 556
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 557
    .local v2, "dotIndex":I
    if-lez v2, :cond_1a

    .line 558
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1a

    .line 575
    .end local v2    # "dotIndex":I
    .restart local v5    # "parent":Ljava/lang/String;
    .restart local v6    # "parentPath":Lgnu/text/Path;
    :cond_c4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 579
    .end local v5    # "parent":Ljava/lang/String;
    .end local v6    # "parentPath":Lgnu/text/Path;
    :cond_e0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_71

    .line 586
    .restart local v0    # "clas":Lgnu/bytecode/ClassType;
    :cond_f5
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 587
    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent main class name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - old name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_c
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .registers 2

    .prologue
    .line 519
    monitor-enter p0

    .line 521
    const/high16 v0, 0x80000

    :try_start_3
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 522
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    .line 523
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 524
    iget-object v0, p0, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    return-object v0

    .line 523
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isStatic()Z
    .registers 2

    .prologue
    .line 409
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_25

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    if-gez v0, :cond_15

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_15
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_27

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 8
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .prologue
    const/16 v5, 0x2f

    .line 487
    const-string v2, "(Module/"

    const-string v3, ")"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 489
    .local v1, "sym":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 491
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 494
    :cond_16
    iget v2, p0, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(I)V

    .line 495
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 496
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 497
    const-string v2, "("

    const/4 v3, 0x0

    const-string v4, ")"

    invoke-virtual {p1, v2, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 499
    .local v0, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_41

    .line 501
    const-string v2, "Declarations:"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 502
    :goto_34
    if-eqz v0, :cond_41

    .line 504
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 505
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 502
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_34

    .line 508
    :cond_41
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 510
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v2, :cond_58

    .line 511
    const-string v2, "<null body>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 514
    :goto_52
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 515
    return-void

    .line 513
    :cond_58
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_52
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_1d

    .line 618
    check-cast v0, Lgnu/bytecode/ClassType;

    .end local v0    # "name":Ljava/lang/Object;
    iput-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 619
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 623
    :goto_15
    iget v1, p0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lgnu/expr/ModuleExp;->flags:I

    .line 624
    return-void

    .line 622
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_1d
    check-cast v0, Ljava/lang/String;

    .end local v0    # "name":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "s"    # [Lgnu/bytecode/ClassType;

    .prologue
    .line 403
    iput-object p1, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "s"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 401
    iput-object p1, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_13

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_19

    .line 601
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 610
    :goto_18
    return-void

    .line 604
    :cond_19
    if-nez v0, :cond_1f

    .line 605
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1f
    if-nez v0, :cond_25

    .line 607
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_25
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_18
.end method
