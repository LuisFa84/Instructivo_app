.class public Lcom/google/appinventor/components/runtime/ScatterChartView;
.super Lcom/google/appinventor/components/runtime/PointChartView;
.source "ScatterChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/PointChartView",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
        "Lcom/github/mikephil/charting/data/ScatterData;",
        "Lcom/github/mikephil/charting/charts/ScatterChart;",
        "Lcom/google/appinventor/components/runtime/ScatterChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 4
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 29
    new-instance v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 31
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/ScatterData;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScatterChartView;->initializeDefaultSettings()V

    .line 35
    return-void
.end method


# virtual methods
.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
            "Lcom/github/mikephil/charting/data/ScatterData;",
            "Lcom/github/mikephil/charting/charts/ScatterChart;",
            "Lcom/google/appinventor/components/runtime/ScatterChartView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v1, v0, p0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;)V

    return-object v1
.end method
