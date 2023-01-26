.class public Lcom/google/appinventor/components/runtime/DataFile;
.super Lcom/google/appinventor/components/runtime/FileBase;
.source "DataFile.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/DataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that allows reading CSV and JSON data. The DataFile contains functionality relevant to accessing CSV or JSON parsed data in the form of rows or columns. Can be used together with the ChartData2D component to import data directly from a file to the Chart. The component may also be dragged and dropped on a Chart after a file has been selected and parsed successfully to create ChartData components automatically from the file onto the Chart."
    iconName = "images/dataFile.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/FileBase;",
        "Lcom/google/appinventor/components/runtime/DataSource",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# instance fields
.field private columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private rows:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final threadRunner:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FileBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 66
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method private getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "propertyCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 142
    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_c} :catch_23

    .line 150
    :goto_c
    return-object v1

    .line 144
    :catch_d
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1d
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    goto :goto_c

    .line 146
    :catch_23
    move-exception v0

    .line 147
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method


# virtual methods
.method public ColumnNames()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the elements of the first row of the Data File\'s contents."
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$3;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Columns()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns a list of columns corresponding to the Data File\'s content."
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$2;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public ReadFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates source file to load data from. The expected format of the contents of the file are either CSV or JSON.Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion.The results of the reading are stored in the Rows, Columns and ColumnNames properties of the component."
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataFile;->readFromFile(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public Rows()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns a list of rows corresponding to the Data File\'s content."
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$1;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public SourceFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->ReadFile(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected afterRead(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_3b

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4a

    .line 231
    :try_start_9
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getColumnsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 234
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_17} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_3b

    .line 250
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-lez v1, :cond_59

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    :goto_28
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 254
    :goto_2a
    return-void

    .line 235
    :catch_2b
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 238
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3a} :catch_3b

    goto :goto_17

    .line 251
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3b
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to parse DataFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 245
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_17

    .line 250
    :cond_59
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5e} :catch_3b

    goto :goto_28
.end method

.method public getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 4
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 210
    .local v0, "index":I
    if-gez v0, :cond_10

    .line 211
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 214
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_f
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 36
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataFile$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataFile$4;-><init>(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
