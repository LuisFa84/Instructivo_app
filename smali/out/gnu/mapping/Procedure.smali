.class public abstract Lgnu/mapping/Procedure;
.super Lgnu/mapping/PropertySet;
.source "Procedure.java"


# static fields
.field public static final compilerKey:Lgnu/mapping/LazyPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/mapping/LazyPropertyKey",
            "<*>;"
        }
    .end annotation
.end field

.field private static final setterKey:Lgnu/mapping/Symbol;

.field private static final sourceLocationKey:Ljava/lang/String; = "source-location"

.field public static final validateApplyKey:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    .line 22
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "validate-apply"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    .line 27
    new-instance v0, Lgnu/mapping/LazyPropertyKey;

    const-string v1, "compiler"

    invoke-direct {v0, v1}, Lgnu/mapping/LazyPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->setName(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .registers 8
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 120
    .local v0, "count":I
    iget v2, p1, Lgnu/mapping/CallContext;->where:I

    if-nez v2, :cond_12

    if-eqz v0, :cond_12

    .line 121
    iget-object v2, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "result":Ljava/lang/Object;
    :goto_e
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 149
    return-void

    .line 124
    .end local v1    # "result":Ljava/lang/Object;
    :cond_12
    packed-switch v0, :pswitch_data_60

    .line 144
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 127
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_1e
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 130
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_23
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 133
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_2c
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 136
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_39
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 140
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_4a
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_e

    .line 124
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_23
        :pswitch_2c
        :pswitch_39
        :pswitch_4a
    .end packed-switch
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)V
    .registers 4
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "argCount"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 93
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    if-lt p1, v1, :cond_12

    if-ltz v0, :cond_18

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    if-le p1, v1, :cond_18

    .line 95
    :cond_12
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 96
    :cond_18
    return-void
.end method

.method public static maxArgs(I)I
    .registers 2
    .param p0, "num"    # I

    .prologue
    .line 82
    shr-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static minArgs(I)I
    .registers 2
    .param p0, "num"    # I

    .prologue
    .line 80
    and-int/lit16 v0, p0, 0xfff

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 2
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 114
    return-void
.end method

.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public check0(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 320
    .local v0, "code":I
    if-eqz v0, :cond_d

    .line 322
    sget-object v1, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 324
    :cond_d
    return-void
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 330
    .local v1, "code":I
    if-eqz v1, :cond_11

    .line 332
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 333
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 335
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_11
    return-void
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 341
    .local v1, "code":I
    if-eqz v1, :cond_14

    .line 343
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 344
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 346
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_14
    return-void
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 8
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 352
    .local v1, "code":I
    if-eqz v1, :cond_17

    .line 354
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 355
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 357
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_17
    return-void
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 9
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 363
    invoke-virtual/range {p0 .. p5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 364
    .local v1, "code":I
    if-eqz v1, :cond_1a

    .line 366
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    .line 367
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 369
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1a
    return-void
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 375
    .local v0, "code":I
    if-eqz v0, :cond_b

    .line 377
    invoke-static {v0, p0, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 379
    :cond_b
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 434
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .registers 6

    .prologue
    .line 383
    instance-of v2, p0, Lgnu/mapping/HasSetter;

    if-nez v2, :cond_35

    .line 385
    sget-object v2, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "setter":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_12

    .line 387
    check-cast v1, Lgnu/mapping/Procedure;

    .line 395
    .end local v1    # "setter":Ljava/lang/Object;
    :goto_11
    return-object v1

    .line 388
    .restart local v1    # "setter":Ljava/lang/Object;
    :cond_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "procedure \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has no setter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v1    # "setter":Ljava/lang/Object;
    :cond_35
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 391
    .local v0, "num_args":I
    if-nez v0, :cond_41

    .line 392
    new-instance v1, Lgnu/mapping/Setter0;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_11

    .line 393
    :cond_41
    const/16 v2, 0x1001

    if-ne v0, v2, :cond_4b

    .line 394
    new-instance v1, Lgnu/mapping/Setter1;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter1;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_11

    .line 395
    :cond_4b
    new-instance v1, Lgnu/mapping/Setter;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    goto :goto_11
.end method

.method public getSourceLocation()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v2, "source-location"

    invoke-virtual {p0, v2, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public isSideEffectFree()Z
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .registers 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v1

    .line 157
    .local v1, "num":I
    invoke-static {v1}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v0

    .line 158
    .local v0, "min":I
    if-lez v0, :cond_f

    .line 159
    const/high16 v2, -0xf0000

    or-int/2addr v2, v0

    .line 166
    :goto_e
    return v2

    .line 160
    :cond_f
    if-gez v1, :cond_18

    .line 161
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_e

    .line 162
    :cond_18
    iput v2, p1, Lgnu/mapping/CallContext;->count:I

    .line 163
    iput v2, p1, Lgnu/mapping/CallContext;->where:I

    .line 164
    iput v2, p1, Lgnu/mapping/CallContext;->next:I

    .line 165
    iput-object p0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_e
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 174
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 175
    .local v3, "num":I
    invoke-static {v3}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v2

    .line 176
    .local v2, "min":I
    if-le v2, v5, :cond_10

    .line 177
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 191
    :goto_f
    return v4

    .line 178
    :cond_10
    if-ltz v3, :cond_27

    .line 180
    invoke-static {v3}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    .line 181
    .local v1, "max":I
    if-ge v1, v5, :cond_1c

    .line 182
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_f

    .line 183
    :cond_1c
    iput-object p1, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 184
    iput v5, p2, Lgnu/mapping/CallContext;->count:I

    .line 185
    iput v5, p2, Lgnu/mapping/CallContext;->where:I

    .line 186
    iput v4, p2, Lgnu/mapping/CallContext;->next:I

    .line 187
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_f

    .line 190
    .end local v1    # "max":I
    :cond_27
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 191
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_f
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 199
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 200
    .local v3, "num":I
    invoke-static {v3}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v2

    .line 201
    .local v2, "min":I
    if-le v2, v5, :cond_10

    .line 202
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 218
    :goto_f
    return v4

    .line 203
    :cond_10
    if-ltz v3, :cond_2b

    .line 205
    invoke-static {v3}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    .line 206
    .local v1, "max":I
    if-ge v1, v5, :cond_1c

    .line 207
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_f

    .line 208
    :cond_1c
    iput-object p1, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 209
    iput-object p2, p3, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 210
    iput v5, p3, Lgnu/mapping/CallContext;->count:I

    .line 211
    const/16 v5, 0x21

    iput v5, p3, Lgnu/mapping/CallContext;->where:I

    .line 213
    iput v4, p3, Lgnu/mapping/CallContext;->next:I

    .line 214
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_f

    .line 217
    .end local v1    # "max":I
    :cond_2b
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 218
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_f
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 226
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 227
    .local v3, "num":I
    invoke-static {v3}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v2

    .line 228
    .local v2, "min":I
    if-le v2, v5, :cond_10

    .line 229
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 247
    :goto_f
    return v4

    .line 230
    :cond_10
    if-ltz v3, :cond_2d

    .line 232
    invoke-static {v3}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    .line 233
    .local v1, "max":I
    if-ge v1, v5, :cond_1c

    .line 234
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_f

    .line 235
    :cond_1c
    iput-object p1, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 236
    iput-object p2, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 237
    iput-object p3, p4, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 238
    iput v5, p4, Lgnu/mapping/CallContext;->count:I

    .line 239
    const/16 v5, 0x321

    iput v5, p4, Lgnu/mapping/CallContext;->where:I

    .line 242
    iput v4, p4, Lgnu/mapping/CallContext;->next:I

    .line 243
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_f

    .line 246
    .end local v1    # "max":I
    :cond_2d
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 v4, 0x2

    aput-object p3, v0, v4

    .line 247
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p4}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_f
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 256
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v3

    .line 257
    .local v3, "num":I
    invoke-static {v3}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v2

    .line 258
    .local v2, "min":I
    if-le v2, v5, :cond_10

    .line 259
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 279
    :goto_f
    return v4

    .line 260
    :cond_10
    if-ltz v3, :cond_2f

    .line 262
    invoke-static {v3}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    .line 263
    .local v1, "max":I
    if-ge v1, v5, :cond_1c

    .line 264
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_f

    .line 265
    :cond_1c
    iput-object p1, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 266
    iput-object p2, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 267
    iput-object p3, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 268
    iput-object p4, p5, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 269
    iput v5, p5, Lgnu/mapping/CallContext;->count:I

    .line 270
    const/16 v5, 0x4321

    iput v5, p5, Lgnu/mapping/CallContext;->where:I

    .line 274
    iput v4, p5, Lgnu/mapping/CallContext;->next:I

    .line 275
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_f

    .line 278
    .end local v1    # "max":I
    :cond_2f
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 v4, 0x2

    aput-object p3, v0, v4

    const/4 v4, 0x3

    aput-object p4, v0, v4

    .line 279
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p5}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_f
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v8

    .line 285
    .local v8, "num":I
    invoke-static {v8}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v7

    .line 286
    .local v7, "min":I
    array-length v1, p1

    if-ge v1, v7, :cond_12

    .line 287
    const/high16 v0, -0xf0000

    or-int/2addr v0, v7

    .line 313
    :goto_11
    return v0

    .line 288
    :cond_12
    if-ltz v8, :cond_53

    .line 290
    array-length v1, p1

    packed-switch v1, :pswitch_data_60

    .line 303
    invoke-static {v8}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v6

    .line 304
    .local v6, "max":I
    array-length v1, p1

    if-le v1, v6, :cond_53

    .line 305
    const/high16 v0, -0xe0000

    or-int/2addr v0, v6

    goto :goto_11

    .line 293
    .end local v6    # "max":I
    :pswitch_23
    invoke-virtual {p0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11

    .line 295
    :pswitch_28
    aget-object v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11

    .line 297
    :pswitch_2f
    aget-object v0, p1, v0

    aget-object v1, p1, v2

    invoke-virtual {p0, v0, v1, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11

    .line 299
    :pswitch_38
    aget-object v0, p1, v0

    aget-object v1, p1, v2

    aget-object v2, p1, v3

    invoke-virtual {p0, v0, v1, v2, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11

    .line 301
    :pswitch_43
    aget-object v1, p1, v0

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    const/4 v0, 0x3

    aget-object v4, p1, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11

    .line 308
    :cond_53
    iput-object p1, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 309
    array-length v1, p1

    iput v1, p2, Lgnu/mapping/CallContext;->count:I

    .line 310
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 311
    iput v0, p2, Lgnu/mapping/CallContext;->next:I

    .line 312
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_11

    .line 290
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_23
        :pswitch_28
        :pswitch_2f
        :pswitch_38
        :pswitch_43
    .end packed-switch
.end method

.method public final maxArgs()I
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    return v0
.end method

.method public final minArgs()I
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v0

    return v0
.end method

.method public numArgs()I
    .registers 2

    .prologue
    .line 77
    const/16 v0, -0x1000

    return v0
.end method

.method public set0(Ljava/lang/Object;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public setSetter(Lgnu/mapping/Procedure;)V
    .registers 5
    .param p1, "setter"    # Lgnu/mapping/Procedure;

    .prologue
    .line 400
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-eqz v0, :cond_27

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has builtin setter - cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_27
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public setSourceLocation(Ljava/lang/String;I)V
    .registers 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "line"    # I

    .prologue
    .line 32
    const-string v0, "source-location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const-string v2, "#<procedure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 443
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_14
    if-nez v0, :cond_1e

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
