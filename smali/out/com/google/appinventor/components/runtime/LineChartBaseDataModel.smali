.class public abstract Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;
.super Lcom/google/appinventor/components/runtime/PointChartDataModel;
.source "LineChartBaseDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/google/appinventor/components/runtime/LineChartViewBase",
        "<TV;>;>",
        "Lcom/google/appinventor/components/runtime/PointChartDataModel",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
        "Lcom/github/mikephil/charting/data/LineData;",
        "Lcom/github/mikephil/charting/charts/LineChart;",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;)V
    .registers 6
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/LineData;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/LineChartViewBase;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PointChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V

    .line 41
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setDefaultStylingProperties()V

    .line 44
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 7
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 48
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 50
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_1b

    .line 62
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    new-instance v4, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v4}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v3, v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 67
    .local v2, "index":I
    if-gez v2, :cond_1c

    .line 69
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x1

    .line 82
    :cond_16
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    .end local v2    # "index":I
    :cond_1b
    return-void

    .line 72
    .restart local v2    # "index":I
    :cond_1c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    .local v1, "entryCount":I
    :goto_22
    if-ge v2, v1, :cond_16

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_22
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "argb"    # I

    .prologue
    .line 88
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_10

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 92
    :cond_10
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->setColors(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_10

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors(Ljava/util/List;)V

    .line 100
    :cond_10
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .registers 3

    .prologue
    .line 104
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 107
    :cond_e
    return-void
.end method

.method public setLineType(Lcom/google/appinventor/components/common/LineType;)V
    .registers 5
    .param p1, "type"    # Lcom/google/appinventor/components/common/LineType;

    .prologue
    .line 115
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-nez v0, :cond_7

    .line 134
    :goto_6
    return-void

    .line 118
    :cond_7
    sget-object v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel$1;->$SwitchMap$com$google$appinventor$components$common$LineType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/LineType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown line type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_2b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    goto :goto_6

    .line 124
    :pswitch_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    goto :goto_6

    .line 128
    :pswitch_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    goto :goto_6

    .line 118
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
    .end packed-switch
.end method
