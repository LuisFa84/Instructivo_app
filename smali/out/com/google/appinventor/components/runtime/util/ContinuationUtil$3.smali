.class final Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuationSync(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$block:Ljava/util/concurrent/Callable;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$block:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$block:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 84
    :goto_6
    return-object v1

    .line 82
    :catch_7
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 84
    const/4 v1, 0x0

    goto :goto_6
.end method
