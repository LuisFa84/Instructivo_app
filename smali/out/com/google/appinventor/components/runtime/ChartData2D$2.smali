.class Lcom/google/appinventor/components/runtime/ChartData2D$2;
.super Ljava/lang/Object;
.source "ChartData2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;->RemoveEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

.field final synthetic val$x:Ljava/lang/String;

.field final synthetic val$y:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartData2D;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$y:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$x:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$y:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 91
    .local v0, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ChartData2D;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 94
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ChartData2D;->refreshChart()V

    .line 95
    return-void
.end method
