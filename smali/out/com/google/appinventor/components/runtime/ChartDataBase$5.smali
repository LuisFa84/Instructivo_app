.class Lcom/google/appinventor/components/runtime/ChartDataBase$5;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->RemoveDataSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 678
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    const-string v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataSourceKey:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/ChartDataBase;->access$002(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 684
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataFileColumns:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ChartDataBase;->sheetsColumns:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$5;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ChartDataBase;->webColumns:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 688
    :cond_3a
    return-void
.end method
