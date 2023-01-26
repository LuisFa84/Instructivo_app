.class Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "Ev3ColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x32

    .line 67
    const-string v2, ""

    .line 69
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 70
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v3, v4, :cond_65

    .line 71
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_3b

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 75
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .end local v0    # "currentColor":I
    :goto_3a
    return-void

    .line 79
    .restart local v0    # "currentColor":I
    :cond_3b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 80
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 82
    :cond_56
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 107
    .end local v0    # "currentColor":I
    :cond_5b
    :goto_5b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3a

    .line 84
    :cond_65
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "currentLightLevel":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_82

    .line 86
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 87
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3a

    .line 92
    :cond_82
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v1, v3, :cond_ab

    .line 93
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$800(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_a5

    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    .line 103
    :cond_a5
    :goto_a5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    goto :goto_5b

    .line 95
    :cond_ab
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v1, v3, :cond_cf

    .line 96
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gt v3, v4, :cond_a5

    .line 97
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_a5

    .line 99
    :cond_cf
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_f3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_a5

    .line 100
    :cond_f3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    goto :goto_a5
.end method
