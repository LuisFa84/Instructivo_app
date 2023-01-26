.class Lcom/google/appinventor/components/runtime/BluetoothClient$1;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothClient;->startBluetoothDataPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothClient;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "value":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 400
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_14
    return-void
.end method
