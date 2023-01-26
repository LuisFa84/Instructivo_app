.class public Lcom/google/appinventor/components/runtime/LineChartView;
.super Lcom/google/appinventor/components/runtime/LineChartViewBase;
.source "LineChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/LineChartViewBase",
        "<",
        "Lcom/google/appinventor/components/runtime/LineChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 2
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartViewBase;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 28
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
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            "Lcom/github/mikephil/charting/data/LineData;",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Lcom/google/appinventor/components/runtime/LineChartView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lcom/google/appinventor/components/runtime/LineChartDataModel;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v1, v0, p0}, Lcom/google/appinventor/components/runtime/LineChartDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartView;)V

    return-object v1
.end method
