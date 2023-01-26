.class public final Lcom/google/appinventor/components/runtime/ChartData2D;
.super Lcom/google/appinventor/components/runtime/ChartDataBase;
.source "ChartData2D.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that holds (x, y)-coordinate based data"
    iconName = "images/web.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 7
    .param p1, "chartContainer"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataFileColumns:Ljava/util/List;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->sheetsColumns:Ljava/util/List;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->webColumns:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public AddEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartData2D$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartData2D$1;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public DoesEntryExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether an (x, y) entry exists in the Coordinate Data.Returns true if the Entry exists, and false otherwise."
    .end annotation

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartData2D$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartData2D$3;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_14} :catch_28

    move-result v1

    .line 129
    :goto_15
    return v1

    .line 122
    :catch_16
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_26
    const/4 v1, 0x0

    goto :goto_15

    .line 124
    :catch_28
    move-exception v0

    .line 125
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public ImportFromDataFile(Lcom/google/appinventor/components/runtime/DataFile;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "dataFile"    # Lcom/google/appinventor/components/runtime/DataFile;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 152
    .local v0, "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartData2D;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 153
    return-void
.end method

.method public ImportFromSpreadsheet(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "sheet"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p2, "xColumn"    # Ljava/lang/String;
    .param p3, "yColumn"    # Ljava/lang/String;
    .param p4, "useHeaders"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 173
    .local v0, "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, p1, v0, p4}, Lcom/google/appinventor/components/runtime/ChartData2D;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 174
    return-void
.end method

.method public ImportFromWeb(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "web"    # Lcom/google/appinventor/components/runtime/Web;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Imports data from the specified Web component, given the names of the X and Y value columns. Empty columns are filled with default values (1, 2, 3, ... for Entry 1, 2, ...). In order for the data importing to be successful, to load the data, and then this block should be used on that Web component. The usage of the gotValue event in the Web component is unnecessary."
    .end annotation

    .prologue
    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 200
    .local v0, "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartData2D;->importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 201
    return-void
.end method

.method public RemoveEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartData2D$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartData2D$2;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
