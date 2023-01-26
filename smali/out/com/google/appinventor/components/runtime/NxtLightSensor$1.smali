.class Lcom/google/appinventor/components/runtime/NxtLightSensor$1;
.super Ljava/lang/Object;
.source "NxtLightSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtLightSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtLightSensor;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 64
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 65
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 66
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v2, :cond_6e

    .line 68
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v3

    if-ge v2, v3, :cond_86

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 76
    .local v0, "currentState":Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    :goto_2e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    move-result-object v2

    if-eq v0, v2, :cond_69

    .line 77
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v2, :cond_47

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRange()V

    .line 80
    :cond_47
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v2, :cond_58

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 81
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRange()V

    .line 83
    :cond_58
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v2, :cond_69

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 84
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRange()V

    .line 88
    :cond_69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$302(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 91
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .end local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_6e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 92
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_85
    return-void

    .line 70
    .restart local v1    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    :cond_86
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v3

    if-le v2, v3, :cond_99

    .line 71
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    goto :goto_2e

    .line 73
    .end local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    :cond_99
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .restart local v0    # "currentState":Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    goto :goto_2e
.end method
