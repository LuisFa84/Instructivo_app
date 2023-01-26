.class public final Lcom/google/appinventor/components/runtime/util/ContinuationUtil;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "block":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p1, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<TT;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public static callWithContinuationSync(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "block":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 77
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;

    invoke-direct {v3, v1}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 95
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 96
    .local v0, "error":Ljava/lang/Throwable;
    if-eqz v0, :cond_27

    .line 97
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1f

    .line 98
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "error":Ljava/lang/Throwable;
    throw v0

    .line 100
    .restart local v0    # "error":Ljava/lang/Throwable;
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in call"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :cond_27
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
    .registers 3
    .param p0, "procedure"    # Lgnu/mapping/Procedure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/mapping/Procedure;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;-><init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V

    return-object v0
.end method
