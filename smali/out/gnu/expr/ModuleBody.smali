.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static exitCounter:I

.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitDecrement()V
    .registers 3

    .prologue
    .line 115
    const-class v2, Lgnu/expr/ModuleBody;

    monitor-enter v2

    :try_start_3
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 116
    .local v0, "counter":I
    if-lez v0, :cond_f

    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    if-nez v0, :cond_11

    .line 121
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    .line 126
    :cond_f
    :goto_f
    monitor-exit v2

    return-void

    .line 124
    :cond_11
    :try_start_11
    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_f

    .line 115
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized exitIncrement()V
    .registers 2

    .prologue
    .line 103
    const-class v1, Lgnu/expr/ModuleBody;

    monitor-enter v1

    :try_start_3
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    if-nez v0, :cond_d

    .line 104
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 105
    :cond_d
    sget v0, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 106
    monitor-exit v1

    return-void

    .line 103
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMainPrintValues()Z
    .registers 1

    .prologue
    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "ctx"    # Lgnu/mapping/CallContext;
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "save"    # Lgnu/lists/Consumer;

    .prologue
    .line 56
    if-nez p1, :cond_5

    .line 60
    :try_start_2
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_10

    .line 67
    :cond_5
    :goto_5
    iput-object p2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    if-eqz p1, :cond_20

    .line 70
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_13

    .line 71
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "th":Ljava/lang/Throwable;
    throw p1

    .line 62
    .restart local p1    # "th":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Throwable;
    move-object p1, v0

    goto :goto_5

    .line 72
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_13
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1a

    .line 73
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "th":Ljava/lang/Throwable;
    throw p1

    .line 74
    .restart local p1    # "th":Ljava/lang/Throwable;
    :cond_1a
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_20
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .registers 1
    .param p0, "value"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    .line 96
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-nez v0, :cond_7

    .line 15
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 16
    :cond_7
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 81
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    .line 82
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 179
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 180
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 187
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 188
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 189
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 197
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 198
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 199
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 200
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 208
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 209
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 210
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 211
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 212
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 218
    array-length v6, p2

    .line 219
    .local v6, "count":I
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v7

    .line 220
    .local v7, "num":I
    and-int/lit16 v0, v7, 0xfff

    if-lt v6, v0, :cond_15

    if-ltz v7, :cond_12

    shr-int/lit8 v0, v7, 0xc

    if-gt v6, v0, :cond_15

    .line 223
    :cond_12
    packed-switch v6, :pswitch_data_4c

    .line 237
    :cond_15
    new-instance v0, Lgnu/mapping/WrongArguments;

    invoke-direct {v0, p1, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 226
    :pswitch_1b
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_1f
    return-object v0

    .line 228
    :pswitch_20
    aget-object v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    .line 230
    :pswitch_27
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    .line 232
    :pswitch_30
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    .line 234
    :pswitch_3b
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    .line 223
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_20
        :pswitch_27
        :pswitch_30
        :pswitch_3b
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 243
    .local v1, "num":I
    and-int/lit16 v0, v1, 0xfff

    .line 244
    .local v0, "min":I
    if-lez v0, :cond_d

    .line 245
    const/high16 v2, -0xf0000

    or-int/2addr v2, v0

    .line 252
    :goto_c
    return v2

    .line 246
    :cond_d
    if-gez v1, :cond_16

    .line 247
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    goto :goto_c

    .line 248
    :cond_16
    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 249
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 250
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 251
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_c
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 257
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 258
    .local v3, "num":I
    and-int/lit16 v2, v3, 0xfff

    .line 259
    .local v2, "min":I
    if-le v2, v5, :cond_e

    .line 260
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 275
    :goto_d
    return v4

    .line 261
    :cond_e
    if-ltz v3, :cond_23

    .line 263
    shr-int/lit8 v1, v3, 0xc

    .line 264
    .local v1, "max":I
    if-ge v1, v5, :cond_18

    .line 265
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_d

    .line 266
    :cond_18
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 267
    iput v5, p3, Lgnu/mapping/CallContext;->count:I

    .line 268
    iput v5, p3, Lgnu/mapping/CallContext;->where:I

    .line 269
    iput v4, p3, Lgnu/mapping/CallContext;->next:I

    .line 270
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_d

    .line 274
    .end local v1    # "max":I
    :cond_23
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v4

    .line 275
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_d
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 282
    .local v3, "num":I
    and-int/lit16 v2, v3, 0xfff

    .line 283
    .local v2, "min":I
    if-le v2, v5, :cond_e

    .line 284
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 300
    :goto_d
    return v4

    .line 285
    :cond_e
    if-ltz v3, :cond_27

    .line 287
    shr-int/lit8 v1, v3, 0xc

    .line 288
    .local v1, "max":I
    if-ge v1, v5, :cond_18

    .line 289
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_d

    .line 290
    :cond_18
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 291
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 292
    iput v5, p4, Lgnu/mapping/CallContext;->count:I

    .line 293
    const/16 v5, 0x21

    iput v5, p4, Lgnu/mapping/CallContext;->where:I

    .line 295
    iput v4, p4, Lgnu/mapping/CallContext;->next:I

    .line 296
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_d

    .line 299
    .end local v1    # "max":I
    :cond_27
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p3, v0, v4

    .line 300
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_d
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 306
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 307
    .local v3, "num":I
    and-int/lit16 v2, v3, 0xfff

    .line 308
    .local v2, "min":I
    if-le v2, v5, :cond_e

    .line 309
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 328
    :goto_d
    return v4

    .line 310
    :cond_e
    if-ltz v3, :cond_29

    .line 312
    shr-int/lit8 v1, v3, 0xc

    .line 313
    .local v1, "max":I
    if-ge v1, v5, :cond_18

    .line 314
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_d

    .line 315
    :cond_18
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 316
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 317
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 318
    iput v5, p5, Lgnu/mapping/CallContext;->count:I

    .line 319
    const/16 v5, 0x321

    iput v5, p5, Lgnu/mapping/CallContext;->where:I

    .line 322
    iput v4, p5, Lgnu/mapping/CallContext;->next:I

    .line 323
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_d

    .line 327
    .end local v1    # "max":I
    :cond_29
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    .line 328
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p5}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_d
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 13
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 334
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v3

    .line 335
    .local v3, "num":I
    and-int/lit16 v2, v3, 0xfff

    .line 336
    .local v2, "min":I
    if-le v2, v5, :cond_e

    .line 337
    const/high16 v4, -0xf0000

    or-int/2addr v4, v2

    .line 358
    :goto_d
    return v4

    .line 338
    :cond_e
    if-ltz v3, :cond_2b

    .line 340
    shr-int/lit8 v1, v3, 0xc

    .line 341
    .local v1, "max":I
    if-ge v1, v5, :cond_18

    .line 342
    const/high16 v4, -0xe0000

    or-int/2addr v4, v1

    goto :goto_d

    .line 343
    :cond_18
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 344
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 345
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 346
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 347
    iput v5, p6, Lgnu/mapping/CallContext;->count:I

    .line 348
    const/16 v5, 0x4321

    iput v5, p6, Lgnu/mapping/CallContext;->where:I

    .line 352
    iput v4, p6, Lgnu/mapping/CallContext;->next:I

    .line 353
    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_d

    .line 357
    .end local v1    # "max":I
    :cond_2b
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p3, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    const/4 v4, 0x3

    aput-object p5, v0, v4

    .line 358
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    goto :goto_d
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 14
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v9

    .line 364
    .local v9, "num":I
    and-int/lit16 v8, v9, 0xfff

    .line 365
    .local v8, "min":I
    array-length v1, p2

    if-ge v1, v8, :cond_10

    .line 366
    const/high16 v0, -0xf0000

    or-int/2addr v0, v8

    .line 394
    :goto_f
    return v0

    .line 367
    :cond_10
    if-ltz v9, :cond_53

    .line 369
    array-length v1, p2

    packed-switch v1, :pswitch_data_60

    .line 382
    shr-int/lit8 v7, v9, 0xc

    .line 383
    .local v7, "max":I
    array-length v1, p2

    if-le v1, v7, :cond_53

    .line 384
    const/high16 v0, -0xe0000

    or-int/2addr v0, v7

    goto :goto_f

    .line 372
    .end local v7    # "max":I
    :pswitch_1f
    invoke-virtual {p0, p1, p3}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_f

    .line 374
    :pswitch_24
    aget-object v0, p2, v0

    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_f

    .line 376
    :pswitch_2b
    aget-object v0, p2, v0

    aget-object v1, p2, v3

    invoke-virtual {p0, p1, v0, v1, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_f

    .line 378
    :pswitch_34
    aget-object v2, p2, v0

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_f

    .line 380
    :pswitch_42
    aget-object v2, p2, v0

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    const/4 v0, 0x3

    aget-object v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_f

    .line 387
    :cond_53
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 388
    array-length v1, p2

    iput v1, p3, Lgnu/mapping/CallContext;->count:I

    .line 389
    iput v0, p3, Lgnu/mapping/CallContext;->where:I

    .line 390
    iput v0, p3, Lgnu/mapping/CallContext;->next:I

    .line 391
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    goto :goto_f

    .line 369
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_24
        :pswitch_2b
        :pswitch_34
        :pswitch_42
    .end packed-switch
.end method

.method public run()V
    .registers 2

    .prologue
    .line 26
    monitor-enter p0

    .line 28
    :try_start_1
    iget-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v0, :cond_7

    .line 29
    monitor-exit p0

    .line 33
    :goto_6
    return-void

    .line 30
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    .line 32
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    goto :goto_6

    .line 31
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public run(Lgnu/lists/Consumer;)V
    .registers 6
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, "ctx":Lgnu/mapping/CallContext;
    iget-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 40
    .local v2, "save":Lgnu/lists/Consumer;
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    :try_start_8
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_10

    .line 45
    const/4 v3, 0x0

    .line 51
    .local v3, "th":Ljava/lang/Throwable;
    :goto_c
    invoke-static {v0, v3, v2}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    .line 52
    return-void

    .line 47
    .end local v3    # "th":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 49
    .local v1, "ex":Ljava/lang/Throwable;
    move-object v3, v1

    .restart local v3    # "th":Ljava/lang/Throwable;
    goto :goto_c
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .registers 2
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public final runAsMain()V
    .registers 5

    .prologue
    .line 131
    sget-object v3, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v3}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    .line 134
    :try_start_5
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 135
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 137
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 138
    .local v2, "out":Lgnu/mapping/OutPort;
    invoke-static {v2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v3

    iput-object v3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 139
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 140
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->freshLine()V

    .line 149
    .end local v2    # "out":Lgnu/mapping/OutPort;
    :goto_22
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 150
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 158
    .end local v0    # "ctx":Lgnu/mapping/CallContext;
    :goto_28
    return-void

    .line 145
    .restart local v0    # "ctx":Lgnu/mapping/CallContext;
    :cond_29
    invoke-virtual {p0}, Lgnu/expr/ModuleBody;->run()V

    .line 146
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_22

    .line 152
    .end local v0    # "ctx":Lgnu/mapping/CallContext;
    :catch_30
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 156
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_28
.end method
