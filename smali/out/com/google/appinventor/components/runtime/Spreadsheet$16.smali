.class Lcom/google/appinventor/components/runtime/Spreadsheet$16;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$currentTask:Ljava/util/concurrent/FutureTask;

.field final synthetic val$key:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$useHeaders:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$currentTask:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$useHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1841
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$currentTask:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1843
    :try_start_14
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_24

    .line 1849
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->val$useHeaders:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 1844
    :catch_24
    move-exception v0

    .line 1845
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 1838
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$16;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
