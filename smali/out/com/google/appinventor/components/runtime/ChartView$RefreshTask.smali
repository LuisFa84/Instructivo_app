.class Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;
.super Landroid/os/AsyncTask;
.source "ChartView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/appinventor/components/runtime/ChartDataModel",
        "<TE;TT;TD;TC;TV;>;",
        "Ljava/lang/Void;",
        "Lcom/google/appinventor/components/runtime/ChartDataModel",
        "<TE;TT;TD;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ChartView;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->this$0:Lcom/google/appinventor/components/runtime/ChartView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->entries:Ljava/util/List;

    .line 160
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Lcom/google/appinventor/components/runtime/ChartDataModel;)Lcom/google/appinventor/components/runtime/ChartDataModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;)",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    .local p1, "chartDataModels":[Lcom/google/appinventor/components/runtime/ChartDataModel;, "[Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    check-cast p1, [Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->doInBackground([Lcom/google/appinventor/components/runtime/ChartDataModel;)Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/appinventor/components/runtime/ChartDataModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel",
            "<TE;TT;TD;TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    .local p1, "result":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->this$0:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/ChartView;->refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 150
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;, "Lcom/google/appinventor/components/runtime/ChartView<TE;TT;TD;TC;TV;>.RefreshTask;"
    check-cast p1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView$RefreshTask;->onPostExecute(Lcom/google/appinventor/components/runtime/ChartDataModel;)V

    return-void
.end method
