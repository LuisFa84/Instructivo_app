.class public Lcom/google/appinventor/components/runtime/ScatterChartDataModel;
.super Lcom/google/appinventor/components/runtime/PointChartDataModel;
.source "ScatterChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/PointChartDataModel",
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
.method public constructor <init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;)V
    .registers 6
    .param p1, "data"    # Lcom/github/mikephil/charting/data/ScatterData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/ScatterChartView;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PointChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V

    .line 35
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 36
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterData;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setDefaultStylingProperties()V

    .line 38
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 46
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_b

    .line 47
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_b
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 56
    :cond_f
    return-void
.end method

.method public setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .registers 5
    .param p1, "shape"    # Lcom/google/appinventor/components/common/PointStyle;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-nez v0, :cond_7

    .line 91
    :goto_6
    return-void

    .line 67
    :cond_7
    sget-object v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel$1;->$SwitchMap$com$google$appinventor$components$common$PointStyle:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/PointStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5e

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_2b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_6

    .line 73
    :pswitch_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_6

    .line 77
    :pswitch_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_6

    .line 81
    :pswitch_49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_6

    .line 85
    :pswitch_53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->X:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    goto :goto_6

    .line 67
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
        :pswitch_49
        :pswitch_53
    .end packed-switch
.end method
