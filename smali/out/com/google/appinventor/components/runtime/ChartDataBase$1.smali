.class Lcom/google/appinventor/components/runtime/ChartDataBase$1;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->ElementsFromPairs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

.field final synthetic val$elements:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataBase;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;->val$elements:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;->val$elements:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setElements(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$1;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 334
    return-void
.end method
