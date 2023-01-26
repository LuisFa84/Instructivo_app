.class final Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$block:Ljava/util/concurrent/Callable;

.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$block:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$block:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    invoke-interface {v2, v1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 61
    return-void

    .line 58
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_c
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
