.class Lcom/google/appinventor/components/runtime/ChartDataBase$12;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$sheetColumns:Ljava/util/concurrent/Future;

.field final synthetic val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$useHeaders:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Spreadsheet;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$sheetColumns:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$useHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 897
    const/4 v1, 0x0

    .line 900
    .local v1, "dataColumns":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$sheetColumns:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v1, v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_c} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_c} :catch_41

    .line 907
    :goto_c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$200(Lcom/google/appinventor/components/runtime/ChartDataBase;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v4

    if-ne v3, v4, :cond_21

    .line 908
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$200(Lcom/google/appinventor/components/runtime/ChartDataBase;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v4

    invoke-static {v3, v4, v5, v5}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$100(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    :cond_21
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->val$useHeaders:Z

    invoke-virtual {v3, v1, v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 913
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$12;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 914
    return-void

    .line 901
    :catch_30
    move-exception v2

    .line 902
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 903
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_41
    move-exception v2

    .line 904
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
