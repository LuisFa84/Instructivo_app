.class public Lgnu/text/WriterManager;
.super Ljava/lang/Object;
.source "WriterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final instance:Lgnu/text/WriterManager;


# instance fields
.field first:Lgnu/text/WriterRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lgnu/text/WriterManager;

    invoke-direct {v0}, Lgnu/text/WriterManager;-><init>()V

    sput-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized register(Ljava/io/Writer;)Lgnu/text/WriterRef;
    .registers 5
    .param p1, "port"    # Ljava/io/Writer;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    new-instance v1, Lgnu/text/WriterRef;

    invoke-direct {v1, p1}, Lgnu/text/WriterRef;-><init>(Ljava/io/Writer;)V

    .line 26
    .local v1, "ref":Lgnu/text/WriterRef;
    iget-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    .line 27
    .local v0, "first":Lgnu/text/WriterRef;
    if-eqz v0, :cond_10

    .line 29
    iget-object v2, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    iput-object v2, v1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 30
    iput-object v1, v0, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 32
    :cond_10
    iput-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 33
    monitor-exit p0

    return-object v1

    .line 25
    .end local v0    # "first":Lgnu/text/WriterRef;
    .end local v1    # "ref":Lgnu/text/WriterRef;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerShutdownHook()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 81
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 82
    .local v5, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 83
    .local v4, "rclass":Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Thread;

    aput-object v9, v3, v8

    .line 84
    .local v3, "params":[Ljava/lang/Class;
    const-string v8, "addShutdownHook"

    invoke-virtual {v4, v8, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 86
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v9, v0, v8

    .line 87
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_26} :catch_27

    .line 92
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "params":[Ljava/lang/Class;
    .end local v4    # "rclass":Ljava/lang/Class;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :goto_26
    return v6

    .line 90
    :catch_27
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    move v6, v7

    .line 92
    goto :goto_26
.end method

.method public declared-synchronized run()V
    .registers 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    .local v1, "ref":Lgnu/text/WriterRef;
    :goto_3
    if-eqz v1, :cond_13

    .line 58
    invoke-virtual {v1}, Lgnu/text/WriterRef;->get()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    move-result-object v0

    .line 59
    .local v0, "port":Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 63
    :try_start_b
    check-cast v0, Ljava/io/Writer;

    .end local v0    # "port":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b
    .catchall {:try_start_b .. :try_end_10} :catchall_18

    .line 56
    :cond_10
    :goto_10
    :try_start_10
    iget-object v1, v1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    goto :goto_3

    .line 71
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    .line 72
    monitor-exit p0

    return-void

    .line 56
    .end local v1    # "ref":Lgnu/text/WriterRef;
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2

    .line 65
    .restart local v1    # "ref":Lgnu/text/WriterRef;
    :catch_1b
    move-exception v2

    goto :goto_10
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 41
    monitor-enter p0

    if-nez p1, :cond_5

    .line 52
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 43
    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Lgnu/text/WriterRef;

    move-object v3, v0

    .line 44
    .local v3, "ref":Lgnu/text/WriterRef;
    iget-object v1, v3, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 45
    .local v1, "next":Lgnu/text/WriterRef;
    iget-object v2, v3, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 46
    .local v2, "prev":Lgnu/text/WriterRef;
    if-eqz v1, :cond_11

    .line 47
    iput-object v2, v1, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 48
    :cond_11
    if-eqz v2, :cond_15

    .line 49
    iput-object v1, v2, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 50
    :cond_15
    iget-object v4, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    if-ne v3, v4, :cond_3

    .line 51
    iput-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_3

    .line 41
    .end local v1    # "next":Lgnu/text/WriterRef;
    .end local v2    # "prev":Lgnu/text/WriterRef;
    .end local v3    # "ref":Lgnu/text/WriterRef;
    :catchall_1c
    move-exception v4

    monitor-exit p0

    throw v4
.end method
