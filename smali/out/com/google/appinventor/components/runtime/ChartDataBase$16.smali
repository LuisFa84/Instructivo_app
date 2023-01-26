.class Lcom/google/appinventor/components/runtime/ChartDataBase$16;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$entry:Lcom/github/mikephil/charting/data/Entry;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/github/mikephil/charting/data/Entry;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz v0, :cond_1d

    .line 1198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getValue()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/appinventor/components/runtime/ChartDataBase;->EntryClick(Ljava/lang/Object;D)V

    .line 1202
    :goto_1c
    return-void

    .line 1200
    :cond_1d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$16;->val$entry:Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->EntryClick(Ljava/lang/Object;D)V

    goto :goto_1c
.end method
