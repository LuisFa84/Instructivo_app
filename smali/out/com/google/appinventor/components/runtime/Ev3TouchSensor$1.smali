.class Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "Ev3TouchSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x32

    const/16 v3, 0x32

    .line 60
    const-string v1, ""

    .line 62
    .local v1, "functionName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 63
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "currentPressedValue":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    if-gez v2, :cond_33

    .line 66
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 67
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .end local v0    # "currentPressedValue":I
    :goto_32
    return-void

    .line 71
    .restart local v0    # "currentPressedValue":I
    :cond_33
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    if-ge v2, v3, :cond_59

    .line 72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-lt v0, v3, :cond_4a

    .line 73
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    .line 79
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 82
    .end local v0    # "currentPressedValue":I
    :cond_4f
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    .line 75
    .restart local v0    # "currentPressedValue":I
    :cond_59
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-ge v0, v3, :cond_4a

    .line 76
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    goto :goto_4a
.end method
