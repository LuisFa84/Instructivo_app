.class public abstract Lcom/google/appinventor/components/runtime/AxisChartView;
.super Lcom/google/appinventor/components/runtime/ChartView;
.source "AxisChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet",
        "<TE;>;D:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<TT;>;C:",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<TD;>;V:",
        "Lcom/google/appinventor/components/runtime/AxisChartView",
        "<TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/ChartView",
        "<TE;TT;TD;TC;TV;>;"
    }
.end annotation


# instance fields
.field private axisLabels:Ljava/util/List;
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
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 48
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView;, "Lcom/google/appinventor/components/runtime/AxisChartView<TE;TT;TD;TC;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->axisLabels:Ljava/util/List;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AxisChartView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AxisChartView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->axisLabels:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected initializeDefaultSettings()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView;, "Lcom/google/appinventor/components/runtime/AxisChartView<TE;TT;TD;TC;TV;>;"
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ChartView;->initializeDefaultSettings()V

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/AxisChartView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AxisChartView$1;-><init>(Lcom/google/appinventor/components/runtime/AxisChartView;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 91
    return-void
.end method

.method public setGridEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView;, "Lcom/google/appinventor/components/runtime/AxisChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 103
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView;, "Lcom/google/appinventor/components/runtime/AxisChartView<TE;TT;TD;TC;TV;>;"
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AxisChartView;->axisLabels:Ljava/util/List;

    .line 118
    return-void
.end method
