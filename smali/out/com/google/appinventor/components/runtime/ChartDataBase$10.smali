.class Lcom/google/appinventor/components/runtime/ChartDataBase$10;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$list:Ljava/util/concurrent/Future;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$list:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 830
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$list:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 833
    .local v1, "listValue":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->val$tag:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$100(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 837
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$10;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1d} :catch_2f

    .line 843
    .end local v1    # "listValue":Lcom/google/appinventor/components/runtime/util/YailList;
    :goto_1d
    return-void

    .line 838
    :catch_1e
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 840
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2f
    move-exception v0

    .line 841
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
