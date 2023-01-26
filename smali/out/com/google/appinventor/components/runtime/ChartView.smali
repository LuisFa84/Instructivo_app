.class public abstract Lcom/google/appinventor/components/runtime/ChartView;
.super Ljava/lang/Object;
.source "ChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<TE;>;D:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<TT;>;C:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TD;>;V:",
        "Lcom/google/appinventor/components/runtime/ChartView",
        "<TE;TT;TD;TC;TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected chart:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field protected chartComponent:Lcom/google/appinventor/components/runtime/Chart;

.field protected data:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected uiHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 4
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->uiHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    .line 63
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 64
    return-void
.end method


# virtual methods
.method public abstract createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;"
        }
    .end annotation
.end method

.method public getForm()Lcom/google/appinventor/components/runtime/Form;
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method protected initializeDefaultSettings()V
    .registers 3

    .prologue
    .line 119
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 121
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 128
    return-void
.end method

.method public refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    .local p1, "model":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;-><init>(Lcom/google/appinventor/components/runtime/ChartView;Ljava/util/List;)V

    .line 141
    .local v0, "refreshTask":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/ChartDataModel;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method protected refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    .local p1, "model":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    .line 200
    .local v0, "dataset":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    instance-of v1, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v1, :cond_d

    .line 201
    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .end local v0    # "dataset":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "TT;"
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/DataSet;->setValues(Ljava/util/List;)V

    .line 206
    :cond_d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 210
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 214
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 215
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "argb"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setBackgroundColor(I)V

    .line 87
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/Description;->setText(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setLegendEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 105
    return-void
.end method
