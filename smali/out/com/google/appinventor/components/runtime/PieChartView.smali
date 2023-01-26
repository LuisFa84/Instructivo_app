.class public Lcom/google/appinventor/components/runtime/PieChartView;
.super Lcom/google/appinventor/components/runtime/ChartView;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ChartView",
        "<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        "Lcom/github/mikephil/charting/data/PieData;",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        "Lcom/google/appinventor/components/runtime/PieChartView;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomOffset:F

.field private final legendEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final pieCharts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            ">;"
        }
    .end annotation
.end field

.field private pieHoleRadius:I

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 4
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    .line 66
    new-instance v0, Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->initializeDefaultSettings()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/PieChartView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/PieChartView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    return-object v0
.end method

.method private changePieChartRadius(Lcom/github/mikephil/charting/charts/PieChart;FZ)V
    .registers 9
    .param p1, "pieChart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "newHoleRadius"    # F
    .param p3, "lastChart"    # Z

    .prologue
    .line 263
    if-nez p3, :cond_d

    .line 265
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 270
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 301
    :goto_c
    return-void

    .line 273
    :cond_d
    iget v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    if-nez v2, :cond_16

    .line 274
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    goto :goto_c

    .line 281
    :cond_16
    iget v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v2, v2

    sub-float v0, p2, v2

    .line 293
    .local v0, "delta":F
    iget v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    mul-float v1, v2, v3

    .line 297
    .local v1, "setRadius":F
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 298
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    goto :goto_c
.end method

.method private changePieChartSize(Lcom/github/mikephil/charting/charts/PieChart;II)V
    .registers 6
    .param p1, "pieChart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 317
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    return-void
.end method

.method private createPieChartRing()Lcom/github/mikephil/charting/charts/PieChart;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 112
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieChart;

    .line 122
    .local v1, "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    :goto_e
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->setPieChartProperties(Lcom/github/mikephil/charting/charts/PieChart;)V

    .line 127
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 137
    return-object v1

    .line 115
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    :cond_29
    new-instance v1, Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v1    # "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 117
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    goto :goto_e
.end method

.method private setPieChartProperties(Lcom/github/mikephil/charting/charts/PieChart;)V
    .registers 3
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    .line 148
    return-void
.end method

.method private updatePieChartRingOffset(Lcom/github/mikephil/charting/charts/PieChart;)V
    .registers 5
    .param p1, "pieChart"    # Lcom/github/mikephil/charting/charts/PieChart;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    if-ne v1, p1, :cond_22

    .line 346
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    .line 347
    .local v0, "dpNeededHeight":F
    const/high16 v1, 0x40200000    # 2.5f

    div-float v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    .line 348
    const/high16 v1, 0x41c80000    # 25.0f

    iget v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    .line 364
    .end local v0    # "dpNeededHeight":F
    :cond_22
    iget v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraBottomOffset(F)V

    .line 365
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->calculateOffsets()V

    .line 366
    return-void
.end method


# virtual methods
.method public addLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
    .registers 4
    .param p1, "entry"    # Lcom/github/mikephil/charting/components/LegendEntry;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/PieChartView$1;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            "Lcom/github/mikephil/charting/data/PieData;",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            "Lcom/google/appinventor/components/runtime/PieChartView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->createPieChartRing()Lcom/github/mikephil/charting/charts/PieChart;

    move-result-object v0

    .line 99
    .local v0, "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartDataModel;

    new-instance v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v2}, Lcom/github/mikephil/charting/data/PieData;-><init>()V

    invoke-direct {v1, v2, p0, v0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;-><init>(Lcom/github/mikephil/charting/data/PieData;Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/charts/PieChart;)V

    return-object v1
.end method

.method public getLegendEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected initializeDefaultSettings()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ChartView;->initializeDefaultSettings()V

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setCustom(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method protected refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            "Lcom/github/mikephil/charting/data/PieData;",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            "Lcom/google/appinventor/components/runtime/PieChartView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "model":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<Lcom/github/mikephil/charting/data/PieEntry;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;Lcom/github/mikephil/charting/data/PieData;Lcom/github/mikephil/charting/charts/PieChart;Lcom/google/appinventor/components/runtime/PieChartView;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 156
    .local v0, "dataset":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    instance-of v2, v0, Lcom/github/mikephil/charting/data/PieDataSet;

    if-eqz v2, :cond_f

    .line 157
    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet;

    .end local v0    # "dataset":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setValues(Ljava/util/List;)V

    .line 161
    :cond_f
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/Legend;->setCustom(Ljava/util/List;)V

    .line 164
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/PieChart;

    .line 168
    .local v1, "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    if-eq v1, v2, :cond_46

    .line 169
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 172
    :cond_46
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->notifyDataChanged()V

    .line 176
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->notifyDataSetChanged()V

    .line 180
    :cond_52
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->updatePieChartRingOffset(Lcom/github/mikephil/charting/charts/PieChart;)V

    .line 184
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    goto :goto_22

    .line 186
    .end local v1    # "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    :cond_59
    return-void
.end method

.method public removeLegendEntries(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 414
    .local v0, "entriesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/PieChartView$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/PieChartView$3;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method

.method public removeLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
    .registers 4
    .param p1, "entry"    # Lcom/github/mikephil/charting/components/LegendEntry;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/PieChartView$2;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public resizePieRings()V
    .registers 13

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "lastWidth":I
    const/4 v2, 0x0

    .line 207
    .local v2, "lastHeight":I
    const/high16 v9, 0x3f400000    # 0.75f

    iget v10, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v10, v10

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 212
    .local v7, "reductionFactor":F
    iget v9, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v9, v9

    sub-float v6, v11, v9

    .line 218
    .local v6, "radius":F
    mul-float v9, v6, v7

    sub-float v4, v11, v9

    .line 220
    .local v4, "newHoleRadius":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_5a

    .line 221
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/charts/PieChart;

    .line 225
    .local v5, "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_4f

    const/4 v1, 0x1

    .line 226
    .local v1, "lastChart":Z
    :goto_39
    invoke-direct {p0, v5, v4, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->changePieChartRadius(Lcom/github/mikephil/charting/charts/PieChart;FZ)V

    .line 229
    if-eqz v0, :cond_51

    .line 234
    div-float v8, v4, v11

    .line 237
    .local v8, "scalingFactor":F
    int-to-float v9, v3

    mul-float/2addr v9, v8

    float-to-int v3, v9

    .line 238
    int-to-float v9, v2

    mul-float/2addr v9, v8

    float-to-int v2, v9

    .line 241
    invoke-direct {p0, v5, v3, v2}, Lcom/google/appinventor/components/runtime/PieChartView;->changePieChartSize(Lcom/github/mikephil/charting/charts/PieChart;II)V

    .line 249
    .end local v8    # "scalingFactor":F
    :goto_49
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 225
    .end local v1    # "lastChart":Z
    :cond_4f
    const/4 v1, 0x0

    goto :goto_39

    .line 244
    .restart local v1    # "lastChart":Z
    :cond_51
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHeight()I

    move-result v2

    .line 245
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getWidth()I

    move-result v3

    goto :goto_49

    .line 251
    .end local v1    # "lastChart":Z
    .end local v5    # "pieChart":Lcom/github/mikephil/charting/charts/PieChart;
    :cond_5a
    return-void
.end method

.method public setPieRadius(I)V
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 432
    const/16 v0, 0x64

    if-le p1, v0, :cond_e

    .line 433
    const/16 p1, 0x64

    .line 439
    :cond_6
    :goto_6
    rsub-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    .line 442
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->resizePieRings()V

    .line 443
    return-void

    .line 434
    :cond_e
    if-gez p1, :cond_6

    .line 435
    const/4 p1, 0x0

    goto :goto_6
.end method
