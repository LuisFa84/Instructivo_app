.class public abstract Lcom/google/appinventor/components/runtime/PointChartView;
.super Lcom/google/appinventor/components/runtime/AxisChartView;
.source "PointChartView.java"


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
        "Lcom/google/appinventor/components/runtime/PointChartView",
        "<TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/AxisChartView",
        "<TE;TT;TD;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 2
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 37
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    return-object v0
.end method

.method protected initializeDefaultSettings()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    const/4 v2, -0x1

    .line 42
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method
