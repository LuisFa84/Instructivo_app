.class public Lcom/google/appinventor/components/runtime/Chart;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Chart.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that allows visualizing data"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "mpandroidchart.jar"
.end annotation


# instance fields
.field private backgroundColor:I

.field private chartView:Lcom/google/appinventor/components/runtime/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/ChartView",
            "<*****>;"
        }
    .end annotation
.end field

.field private final dataComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/appinventor/components/runtime/ChartDataBase;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private gridEnabled:Z

.field private labels:Lcom/google/appinventor/components/runtime/util/YailList;

.field private legendEnabled:Z

.field private pieRadius:I

.field private tick:I

.field private type:Lcom/google/appinventor/components/common/ChartType;

.field private final view:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 71
    iput v2, p0, Lcom/google/appinventor/components/runtime/Chart;->tick:I

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->view:Landroid/widget/RelativeLayout;

    .line 87
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->dataComponents:Ljava/util/ArrayList;

    .line 92
    sget-object v0, Lcom/google/appinventor/components/common/ChartType;->Line:Lcom/google/appinventor/components/common/ChartType;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Type(Lcom/google/appinventor/components/common/ChartType;)V

    .line 93
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Width(I)V

    .line 94
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Height(I)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->BackgroundColor(I)V

    .line 96
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Description(Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->PieRadius(I)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Chart;->LegendEnabled(Z)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Chart;->GridEnabled(Z)V

    .line 100
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Labels(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 104
    return-void
.end method

.method private createChartViewFromType(Lcom/google/appinventor/components/common/ChartType;)Lcom/google/appinventor/components/runtime/ChartView;
    .registers 5
    .param p1, "type"    # Lcom/google/appinventor/components/common/ChartType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/ChartType;",
            ")",
            "Lcom/google/appinventor/components/runtime/ChartView",
            "<*****>;"
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/google/appinventor/components/runtime/Chart$1;->$SwitchMap$com$google$appinventor$components$common$ChartType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ChartType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Chart type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_24
    new-instance v0, Lcom/google/appinventor/components/runtime/LineChartView;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/LineChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 208
    :goto_29
    return-object v0

    .line 202
    :pswitch_2a
    new-instance v0, Lcom/google/appinventor/components/runtime/ScatterChartView;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ScatterChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    goto :goto_29

    .line 204
    :pswitch_30
    new-instance v0, Lcom/google/appinventor/components/runtime/AreaChartView;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AreaChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    goto :goto_29

    .line 206
    :pswitch_36
    new-instance v0, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/BarChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    goto :goto_29

    .line 208
    :pswitch_3c
    new-instance v0, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PieChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    goto :goto_29

    .line 198
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
    .end packed-switch
.end method

.method private reinitializeChart()V
    .registers 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->dataComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataBase;

    .line 226
    .local v0, "dataComponent":Lcom/google/appinventor/components/runtime/ChartDataBase;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->initChartData()V

    goto :goto_6

    .line 229
    .end local v0    # "dataComponent":Lcom/google/appinventor/components/runtime/ChartDataBase;
    :cond_16
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->description:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Chart;->Description(Ljava/lang/String;)V

    .line 230
    iget v1, p0, Lcom/google/appinventor/components/runtime/Chart;->backgroundColor:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Chart;->BackgroundColor(I)V

    .line 231
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Chart;->legendEnabled:Z

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Chart;->LegendEnabled(Z)V

    .line 232
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Chart;->gridEnabled:Z

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Chart;->GridEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->labels:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Chart;->Labels(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 234
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ChartBase.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 269
    iget v0, p0, Lcom/google/appinventor/components/runtime/Chart;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 282
    iput p1, p0, Lcom/google/appinventor/components/runtime/Chart;->backgroundColor:I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartView;->setBackgroundColor(I)V

    .line 284
    return-void
.end method

.method public Description()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->description:Ljava/lang/String;

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Chart;->description:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartView;->setDescription(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public EntryClick(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/Object;D)V
    .registers 10
    .param p1, "series"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 442
    const-string v0, "EntryClick"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public GridEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chart;->gridEnabled:Z

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/AxisChartView;

    if-eqz v0, :cond_f

    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;->setGridEnabled(Z)V

    .line 367
    :cond_f
    return-void
.end method

.method public GridEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chart;->gridEnabled:Z

    return v0
.end method

.method public Labels()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->labels:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Labels(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 6
    .param p1, "labels"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Changes the Chart\'s X axis labels to the specified List of Strings,  provided that the Chart Type is set to a Chart with an Axis (applies to Area, Bar, Line, Scatter Charts). The labels are applied in order, starting from the smallest x value on the Chart, and continuing in order. If a label is not specified for an x value, a default value is used (the x value of the axis tick at that location)."
    .end annotation

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Chart;->labels:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 402
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/AxisChartView;

    if-eqz v3, :cond_25

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "stringLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    .line 406
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "label":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 410
    .end local v1    # "label":Ljava/lang/String;
    :cond_1e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v3, Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/AxisChartView;->setLabels(Ljava/util/List;)V

    .line 412
    .end local v0    # "i":I
    .end local v2    # "stringLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    return-void
.end method

.method public LabelsFromString(Ljava/lang/String;)V
    .registers 3
    .param p1, "labels"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 428
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 429
    .local v0, "labelsList":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Chart;->Labels(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 430
    return-void
.end method

.method public LegendEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Chart;->legendEnabled:Z

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartView;->setLegendEnabled(Z)V

    .line 335
    return-void
.end method

.method public LegendEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Chart;->legendEnabled:Z

    return v0
.end method

.method public PieRadius(I)V
    .registers 3
    .param p1, "percent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "chart_pie_radius"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Pie Radius of a Pie Chart from 0% to 100%, where the percentage indicates the percentage of the hole fill. 100% means that a full Pie Chart is drawn, while values closer to 0% correspond to hollow Pie Charts."
        userVisible = false
    .end annotation

    .prologue
    .line 304
    iput p1, p0, Lcom/google/appinventor/components/runtime/Chart;->pieRadius:I

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/PieChartView;

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/PieChartView;->setPieRadius(I)V

    .line 311
    :cond_f
    return-void
.end method

.method public Type()Lcom/google/appinventor/components/common/ChartType;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->type:Lcom/google/appinventor/components/common/ChartType;

    return-object v0
.end method

.method public Type(Lcom/google/appinventor/components/common/ChartType;)V
    .registers 7
    .param p1, "type"    # Lcom/google/appinventor/components/common/ChartType;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the chart\'s type (area, bar, pie, scatter), which determines how to visualize the data."
        userVisible = false
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    if-eqz v3, :cond_2c

    const/4 v0, 0x1

    .line 170
    .local v0, "chartViewExists":Z
    :goto_6
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Chart;->createChartViewFromType(Lcom/google/appinventor/components/common/ChartType;)Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v1

    .line 173
    .local v1, "newChartView":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<*****>;"
    if-eqz v0, :cond_17

    .line 174
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chart;->view:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 177
    :cond_17
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Chart;->type:Lcom/google/appinventor/components/common/ChartType;

    .line 178
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    .line 181
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Chart;->view:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 185
    if-eqz v0, :cond_2b

    .line 186
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Chart;->reinitializeChart()V

    .line 188
    :cond_2b
    return-void

    .end local v0    # "chartViewExists":Z
    .end local v1    # "newChartView":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<*****>;"
    :cond_2c
    move v0, v2

    .line 167
    goto :goto_6
.end method

.method public addDataComponent(Lcom/google/appinventor/components/runtime/ChartDataBase;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->dataComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<*****>;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartView;->createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object v0

    return-object v0
.end method

.method public getChartView()Lcom/google/appinventor/components/runtime/ChartView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartView",
            "<*****>;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Chart;->dataComponents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSyncedTValue(I)I
    .registers 5
    .param p1, "dataSeriesT"    # I

    .prologue
    .line 513
    iget v1, p0, Lcom/google/appinventor/components/runtime/Chart;->tick:I

    sub-int/2addr v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d

    .line 514
    iget v0, p0, Lcom/google/appinventor/components/runtime/Chart;->tick:I

    .line 523
    .local v0, "returnValue":I
    :goto_8
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Chart;->tick:I

    .line 526
    return v0

    .line 516
    .end local v0    # "returnValue":I
    :cond_d
    move v0, p1

    .restart local v0    # "returnValue":I
    goto :goto_8
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->view:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onInitialize()V
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/PieChartView;

    if-eqz v0, :cond_14

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Chart;->pieRadius:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->setPieRadius(I)V

    .line 489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartView;->refresh()V

    .line 491
    :cond_14
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Chart;->chartView:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartView;->refresh()V

    .line 460
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ChartBase.setChildHeight called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ChartBase.setChildWidth called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
