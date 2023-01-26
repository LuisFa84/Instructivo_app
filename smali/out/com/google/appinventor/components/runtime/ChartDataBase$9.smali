.class Lcom/google/appinventor/components/runtime/ChartDataBase$9;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$9;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$9;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$9;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$9;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 800
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$9;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 801
    return-void
.end method
