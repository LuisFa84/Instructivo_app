.class Lcom/google/appinventor/components/runtime/AxisChartView$1;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "AxisChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AxisChartView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AxisChartView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/AxisChartView;

    .prologue
    .line 64
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView$1;, "Lcom/google/appinventor/components/runtime/AxisChartView$1;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # F

    .prologue
    .line 68
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView$1;, "Lcom/google/appinventor/components/runtime/AxisChartView$1;"
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    .local v0, "integerValue":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisMinimum()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 81
    if-ltz v0, :cond_2f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->access$000(Lcom/google/appinventor/components/runtime/AxisChartView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 84
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->access$000(Lcom/google/appinventor/components/runtime/AxisChartView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    :goto_2e
    return-object v1

    :cond_2f
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e
.end method
