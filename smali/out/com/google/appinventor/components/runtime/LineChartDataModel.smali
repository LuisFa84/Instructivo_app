.class public Lcom/google/appinventor/components/runtime/LineChartDataModel;
.super Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;
.source "LineChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel",
        "<",
        "Lcom/google/appinventor/components/runtime/LineChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartView;)V
    .registers 3
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/LineChartView;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;)V

    .line 24
    return-void
.end method
