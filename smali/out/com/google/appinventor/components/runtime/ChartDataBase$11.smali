.class Lcom/google/appinventor/components/runtime/ChartDataBase$11;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$dataFileColumns:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$11;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$11;->val$dataFileColumns:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 867
    const/4 v1, 0x0

    .line 873
    .local v1, "dataResult":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$11;->val$dataFileColumns:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v1, v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_b} :catch_19
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_b} :catch_2a

    .line 881
    :goto_b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$11;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 884
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$11;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 885
    return-void

    .line 874
    :catch_19
    move-exception v2

    .line 875
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 876
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2a
    move-exception v2

    .line 877
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
