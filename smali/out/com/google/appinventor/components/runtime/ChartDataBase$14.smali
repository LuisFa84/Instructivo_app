.class Lcom/google/appinventor/components/runtime/ChartDataBase$14;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/DataSource;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$component:Lcom/google/appinventor/components/runtime/DataSource;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$000(Lcom/google/appinventor/components/runtime/ChartDataBase;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_19

    .line 1030
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$000(Lcom/google/appinventor/components/runtime/ChartDataBase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeValues(Ljava/util/List;)V

    .line 1033
    :cond_19
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$component:Lcom/google/appinventor/components/runtime/DataSource;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$100(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$000(Lcom/google/appinventor/components/runtime/ChartDataBase;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 1037
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$000(Lcom/google/appinventor/components/runtime/ChartDataBase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 1041
    :cond_3d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$14;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 1042
    return-void
.end method
