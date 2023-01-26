.class public abstract Lcom/google/appinventor/components/runtime/LineChartViewBase;
.super Lcom/google/appinventor/components/runtime/PointChartView;
.source "LineChartViewBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/google/appinventor/components/runtime/LineChartViewBase",
        "<TV;>;>",
        "Lcom/google/appinventor/components/runtime/PointChartView",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
        "Lcom/github/mikephil/charting/data/LineData;",
        "Lcom/github/mikephil/charting/charts/LineChart;",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 4
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 30
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartViewBase;, "Lcom/google/appinventor/components/runtime/LineChartViewBase<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 32
    new-instance v0, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartViewBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartViewBase;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 34
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/LineData;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartViewBase;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartViewBase;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartViewBase;->data:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineChartViewBase;->initializeDefaultSettings()V

    .line 38
    return-void
.end method
