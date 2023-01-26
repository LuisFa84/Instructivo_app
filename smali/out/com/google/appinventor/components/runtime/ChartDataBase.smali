.class public abstract Lcom/google/appinventor/components/runtime/ChartDataBase;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
.implements Lcom/github/mikephil/charting/listener/OnChartGestureListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<*****>;"
        }
    .end annotation
.end field

.field private color:I

.field private colors:Lcom/google/appinventor/components/runtime/util/YailList;

.field protected container:Lcom/google/appinventor/components/runtime/Chart;

.field protected dataFileColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/google/appinventor/components/runtime/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/DataSource",
            "<**>;"
        }
    .end annotation
.end field

.field protected dataSourceKey:Ljava/lang/String;

.field private elements:Ljava/lang/String;

.field private initialized:Z

.field private label:Ljava/lang/String;

.field private lastDataSourceValue:Ljava/lang/Object;

.field protected sheetsColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected threadRunner:Ljava/util/concurrent/ExecutorService;

.field private tick:I

.field protected useSheetHeaders:Z

.field protected webColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 3
    .param p1, "chartContainer"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->initialized:Z

    .line 109
    iput v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->tick:I

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    .line 116
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Chart;->addDataComponent(Lcom/google/appinventor/components/runtime/ChartDataBase;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->initChartData()V

    .line 120
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->DataSourceKey(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ChartDataBase;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->lastDataSourceValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->lastDataSourceValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/DataSource;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/ChartDataBase;)Lcom/google/appinventor/components/runtime/DataSource;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/ChartDataBase;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 52
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->tick:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/ChartDataBase;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->tick:I

    return p1
.end method

.method static synthetic access$308(Lcom/google/appinventor/components/runtime/ChartDataBase;)I
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 52
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->tick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->tick:I

    return v0
.end method

.method private isKeyValid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1147
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/DataSource",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-ne p1, v1, :cond_23

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ChartDataBase;->isKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1119
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v1, :cond_24

    .line 1121
    check-cast p1, Lcom/google/appinventor/components/runtime/Web;

    .end local p1    # "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Web;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 1126
    .local v0, "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->lastDataSourceValue:Ljava/lang/Object;

    .line 1136
    .end local v0    # "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_23
    :goto_23
    return-void

    .line 1127
    .restart local p1    # "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    :cond_24
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v1, :cond_41

    .line 1128
    check-cast p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    .end local p1    # "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->useSheetHeaders:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 1130
    .restart local v0    # "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->useSheetHeaders:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->lastDataSourceValue:Ljava/lang/Object;

    goto :goto_23

    .line 1133
    .end local v0    # "columns":Lcom/google/appinventor/components/runtime/util/YailList;
    .restart local p1    # "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    :cond_41
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->lastDataSourceValue:Ljava/lang/Object;

    goto :goto_23
.end method


# virtual methods
.method public ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .registers 5
    .param p2, "keyValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartDataBase$4;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public Clear()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all of the data."
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ChartDataBase$3;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public Color()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    return v0
.end method

.method public Color(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 178
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColor(I)V

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 181
    return-void
.end method

.method public Colors()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Colors(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 13
    .param p1, "colors"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, "resultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-ge v3, v5, :cond_35

    .line 214
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "color":Ljava/lang/String;
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "colorValue":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1b} :catch_1e

    .line 212
    .end local v1    # "colorValue":I
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 220
    :catch_1e
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    const-string v7, "Colors"

    const/16 v8, 0x1008

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1b

    .line 230
    .end local v0    # "color":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_35
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 234
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColors(Ljava/util/List;)V

    .line 235
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 236
    return-void
.end method

.method public DataFileXColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "data_file_column"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method public DataFileYColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "data_file_column"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method public DataSourceKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public ElementsFromPairs(Ljava/lang/String;)V
    .registers 4
    .param p1, "elements"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->elements:Ljava/lang/String;

    .line 324
    if-eqz p1, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->initialized:Z

    if-nez v0, :cond_11

    .line 336
    :cond_10
    :goto_10
    return-void

    .line 329
    :cond_11
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$1;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_10
.end method

.method public EntryClick(Ljava/lang/Object;D)V
    .registers 8
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1215
    const-string v0, "EntryClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Chart;->EntryClick(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/Object;D)V

    .line 1217
    return-void
.end method

.method public GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns all the entries of the Data Series. A single entry is represented as a List of values of the entry."
    .end annotation

    .prologue
    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$8;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ChartDataBase$8;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 766
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_28

    .line 773
    :goto_11
    return-object v1

    .line 767
    :catch_12
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_22
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    goto :goto_11

    .line 769
    :catch_28
    move-exception v0

    .line 770
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p1, "x"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a List of entries with x values matching the specified x value. A single entry is represented as a List of values of the entry."
    .end annotation

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$6;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$6;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 710
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_28

    .line 718
    :goto_11
    return-object v1

    .line 711
    :catch_12
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_22
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    goto :goto_11

    .line 713
    :catch_28
    move-exception v0

    .line 714
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public GetEntriesWithYValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p1, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a List of entries with y values matching the specified y value. A single entry is represented as a List of values of the entry."
    .end annotation

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$7;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$7;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 739
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_28

    .line 746
    :goto_11
    return-object v1

    .line 740
    :catch_12
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_22
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    goto :goto_11

    .line 742
    :catch_28
    move-exception v0

    .line 743
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 6
    .param p1, "cloudDB"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/CloudDB;->getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 823
    .local v0, "list":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$10;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartDataBase$10;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 845
    return-void
.end method

.method public ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$2;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
    .registers 6
    .param p1, "tinyDB"    # Lcom/google/appinventor/components/runtime/TinyDB;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/TinyDB;->getDataValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 793
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->updateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$9;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase$9;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 803
    return-void
.end method

.method public Initialize()V
    .registers 2

    .prologue
    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->initialized:Z

    .line 990
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eqz v0, :cond_d

    .line 991
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 998
    :goto_c
    return-void

    .line 996
    :cond_d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->elements:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->ElementsFromPairs(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public Label()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public Label(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setLabel(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 260
    return-void
.end method

.method public LineType(Lcom/google/appinventor/components/common/LineType;)V
    .registers 3
    .param p1, "type"    # Lcom/google/appinventor/components/common/LineType;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_line_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    if-eqz v0, :cond_d

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setLineType(Lcom/google/appinventor/components/common/LineType;)V

    .line 301
    :cond_d
    return-void
.end method

.method public PointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .registers 3
    .param p1, "shape"    # Lcom/google/appinventor/components/common/PointStyle;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_point_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    if-eqz v0, :cond_d

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V

    .line 280
    :cond_d
    return-void
.end method

.method public RemoveDataSource()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Un-links the currently associated Data Source component from the Chart."
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ChartDataBase$5;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public Source(Lcom/google/appinventor/components/runtime/DataSource;)V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "chart_data_source"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    if-eqz v0, :cond_11

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    check-cast v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ObservableDataSource;->removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V

    .line 512
    :cond_11
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    .line 517
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->initialized:Z

    if-eqz v0, :cond_25

    .line 518
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    if-eqz v0, :cond_26

    move-object v0, p1

    .line 520
    check-cast v0, Lcom/google/appinventor/components/runtime/ObservableDataSource;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ObservableDataSource;->addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 541
    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_25
    :goto_25
    return-void

    .line 528
    .restart local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_26
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/DataFile;

    if-eqz v0, :cond_36

    .line 529
    check-cast p1, Lcom/google/appinventor/components/runtime/DataFile;

    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_25

    .line 530
    .restart local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_36
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/TinyDB;

    if-eqz v0, :cond_42

    .line 531
    check-cast p1, Lcom/google/appinventor/components/runtime/TinyDB;

    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V

    goto :goto_25

    .line 532
    .restart local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_42
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/CloudDB;

    if-eqz v0, :cond_4e

    .line 533
    check-cast p1, Lcom/google/appinventor/components/runtime/CloudDB;

    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V

    goto :goto_25

    .line 534
    .restart local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_4e
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v0, :cond_60

    .line 535
    check-cast p1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->useSheetHeaders:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    goto :goto_25

    .line 537
    .restart local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    :cond_60
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v0, :cond_25

    .line 538
    check-cast p1, Lcom/google/appinventor/components/runtime/Web;

    .end local p1    # "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_25
.end method

.method public SpreadsheetUseHeaders(Z)V
    .registers 2
    .param p1, "useHeaders"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->useSheetHeaders:Z

    .line 349
    return-void
.end method

.method public SpreadsheetXColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public SpreadsheetYColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public WebXColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the column to parse from the attached Web component for the x values. If a column is not specified, default values for the x values will be generated instead."
        userVisible = false
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public WebYColumn(Ljava/lang/String;)V
    .registers 4
    .param p1, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the column to parse from the attached Web component for the y values. If a column is not specified, default values for the y values will be generated instead."
        userVisible = false
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .registers 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    return-object v0
.end method

.method protected importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 6
    .param p1, "dataFile"    # Lcom/google/appinventor/components/runtime/DataFile;
    .param p2, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 860
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 863
    .local v0, "dataFileColumns":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$11;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase$11;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 887
    return-void
.end method

.method protected importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .registers 7
    .param p1, "sheets"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p2, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "useHeaders"    # Z

    .prologue
    .line 892
    invoke-virtual {p1, p2, p3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 894
    .local v0, "sheetColumns":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$12;

    invoke-direct {v2, p0, v0, p1, p3}, Lcom/google/appinventor/components/runtime/ChartDataBase$12;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Spreadsheet;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 916
    return-void
.end method

.method protected importFromWebAsync(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 6
    .param p1, "webComponent"    # Lcom/google/appinventor/components/runtime/Web;
    .param p2, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 928
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Web;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 931
    .local v0, "webColumns":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartDataBase$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$13;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Web;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 958
    return-void
.end method

.method public initChartData()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    .line 148
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Color(I)V

    .line 149
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Label(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 152
    return-void
.end method

.method public onChartDoubleTapped(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1170
    return-void
.end method

.method public onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .prologue
    .line 1180
    return-void
.end method

.method public onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .registers 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "chartGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .prologue
    .line 1160
    return-void
.end method

.method public onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .registers 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "chartGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .prologue
    .line 1154
    return-void
.end method

.method public onChartLongPressed(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1165
    return-void
.end method

.method public onChartScale(Landroid/view/MotionEvent;FF)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .prologue
    .line 1185
    return-void
.end method

.method public onChartSingleTapped(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1175
    return-void
.end method

.method public onChartTranslate(Landroid/view/MotionEvent;FF)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .prologue
    .line 1190
    return-void
.end method

.method public onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/DataSource",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1018
    .local p1, "component":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<**>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-ne p1, v0, :cond_a

    .line 1019
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ChartDataBase;->isKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1044
    :cond_a
    :goto_a
    return-void

    .line 1024
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ChartDataBase$14;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public onNothingSelected()V
    .registers 1

    .prologue
    .line 1222
    return-void
.end method

.method public onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/RealTimeDataSource",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "component":Lcom/google/appinventor/components/runtime/RealTimeDataSource;, "Lcom/google/appinventor/components/runtime/RealTimeDataSource<**>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSource:Lcom/google/appinventor/components/runtime/DataSource;

    if-eq p1, v3, :cond_5

    .line 1105
    .end local p3    # "value":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-void

    .line 1059
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_30

    move-object v2, p3

    .line 1061
    check-cast v2, Ljava/lang/String;

    .line 1065
    .local v2, "valueString":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1068
    .local v1, "importData":Z
    if-eqz v1, :cond_1e

    .line 1071
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "value":Ljava/lang/Object;
    :cond_1e
    move-object v0, p3

    .line 1079
    .end local v2    # "valueString":Ljava/lang/String;
    :goto_1f
    if-eqz v1, :cond_4

    .line 1087
    .local v0, "finalValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Chart;->$context()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/ChartDataBase$15;

    invoke-direct {v4, p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase$15;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1076
    .end local v0    # "finalValue":Ljava/lang/Object;
    .end local v1    # "importData":Z
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_30
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/ChartDataBase;->isKeyValid(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "importData":Z
    move-object v0, p3

    goto :goto_1f
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .registers 5
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$16;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$16;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/github/mikephil/charting/data/Entry;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1204
    return-void
.end method

.method protected refreshChart()V
    .registers 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartView;->refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;)V

    .line 969
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .registers 2
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 135
    return-void
.end method
