.class Lcom/google/appinventor/components/runtime/Web$11;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$currentTask:Ljava/util/concurrent/FutureTask;

.field final synthetic val$key:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$11;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1615
    :try_start_14
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_19} :catch_27

    .line 1624
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Web;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 1616
    :catch_22
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19

    .line 1618
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_27
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_19
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Web$11;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
