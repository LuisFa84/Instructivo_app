.class Lcom/google/appinventor/components/runtime/ChartDataBase$3;
.super Ljava/lang/Object;
.source "ChartDataBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataBase;->Clear()V
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
    .line 579
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$3;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$3;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataBase;->chartDataModel:Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->clearEntries()V

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase$3;->this$0:Lcom/google/appinventor/components/runtime/ChartDataBase;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->refreshChart()V

    .line 584
    return-void
.end method
