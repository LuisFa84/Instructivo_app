.class Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "Ev3GyroSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x32

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 58
    const-string v2, ""

    .line 60
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 61
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D

    move-result-wide v0

    .line 63
    .local v0, "currentValue":D
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_37

    .line 64
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 65
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .end local v0    # "currentValue":D
    :goto_36
    return-void

    .line 70
    .restart local v0    # "currentValue":D
    :cond_37
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-ne v3, v4, :cond_49

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-gez v3, :cond_63

    :cond_49
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .line 71
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-ne v3, v4, :cond_68

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v4

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_68

    .line 72
    :cond_63
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 75
    :cond_68
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 78
    .end local v0    # "currentValue":D
    :cond_6d
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_36
.end method
