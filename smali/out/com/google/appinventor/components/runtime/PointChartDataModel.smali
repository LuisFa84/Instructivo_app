.class public abstract Lcom/google/appinventor/components/runtime/PointChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "PointChartDataModel.java"


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
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel",
        "<TE;TT;TD;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/PointChartView;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .registers 16
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 54
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {p1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "xValue":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_c} :catch_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_c} :catch_55

    move-result-object v4

    .line 59
    .local v4, "yValue":Ljava/lang/String;
    :try_start_d
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 60
    .local v1, "x":F
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 62
    .local v3, "y":F
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v5, v1, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1a} :catch_55

    .line 81
    .end local v1    # "x":F
    .end local v2    # "xValue":Ljava/lang/String;
    .end local v3    # "y":F
    .end local v4    # "yValue":Ljava/lang/String;
    :goto_1a
    return-object v5

    .line 63
    .restart local v2    # "xValue":Ljava/lang/String;
    .restart local v4    # "yValue":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1c
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const-string v7, "GetEntryFromTuple"

    const/16 v8, 0x1005

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_3a} :catch_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_3a} :catch_55

    .line 81
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "xValue":Ljava/lang/String;
    .end local v4    # "yValue":Ljava/lang/String;
    :goto_3a
    const/4 v5, 0x0

    goto :goto_1a

    .line 70
    :catch_3c
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const-string v7, "GetEntryFromTuple"

    const/16 v8, 0x1006

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3a

    .line 74
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_55
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const-string v7, "GetEntryFromTuple"

    const/16 v8, 0x1007

    new-array v9, v13, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->getTupleSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 75
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_3a
.end method
