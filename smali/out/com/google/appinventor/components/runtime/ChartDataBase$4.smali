.class Lcom/google/appinventor/components/runtime/ChartDataBase$4;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$keyValue:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/appinventor/components/runtime/DataSource;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$keyValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 608
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/DataFile;

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v5, :cond_7c

    .line 609
    :cond_c
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 613
    .local v4, "keyValues":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_11
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$keyValue:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_3a

    move-result-object v4

    .line 621
    :goto_17
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/DataFile;

    if-eqz v5, :cond_4b

    .line 622
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v5, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    .line 632
    .local v1, "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_21
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_82

    .line 634
    const-string v0, ""

    .line 637
    .local v0, "columnValue":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-le v5, v3, :cond_34

    .line 640
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_34
    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 614
    .end local v0    # "columnValue":Ljava/lang/String;
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catch_3a
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 623
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4b
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v5, :cond_56

    .line 624
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v5, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    .restart local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_21

    .line 625
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_56
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v5, :cond_61

    .line 626
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v5, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    .restart local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_21

    .line 628
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_61
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not an expected DataSource"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 649
    .end local v4    # "keyValues":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_7c
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$keyValue:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    .line 653
    :cond_82
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$002(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 657
    return-void
.end method
