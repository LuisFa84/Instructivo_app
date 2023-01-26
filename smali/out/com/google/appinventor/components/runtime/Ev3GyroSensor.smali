.class public Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3GyroSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x20


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/GyroSensorMode;

.field private previousValue:D

.field private sensorValueChangedEventEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "Ev3GyroSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 46
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    .line 47
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChangedEventEnabled(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
    .param p1, "x1"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method private getSensorValue(Ljava/lang/String;)D
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorPortNumber:I

    const/16 v4, 0x20

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 191
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method private setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .registers 4
    .param p1, "newMode"    # Lcom/google/appinventor/components/common/GyroSensorMode;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-eq p1, v0, :cond_8

    .line 196
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    .line 199
    :cond_8
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 200
    return-void
.end method


# virtual methods
.method public GetSensorValue()D
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor."
    .end annotation

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public Mode()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/GyroSensorMode;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively."
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .registers 8
    .param p1, "modeName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/GyroSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "angle"
        editorType = "lego_ev3_gyro_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/appinventor/components/common/GyroSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    .line 107
    .local v0, "gyroMode":Lcom/google/appinventor/components/common/GyroSensorMode;
    if-nez v0, :cond_16

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Mode"

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 113
    :goto_15
    return-void

    .line 112
    :cond_16
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    goto :goto_15
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/GyroSensorMode;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/google/appinventor/components/common/GyroSensorMode;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 121
    return-void
.end method

.method public SensorValueChanged(D)V
    .registers 8
    .param p1, "sensorValue"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called then the sensor value changed."
    .end annotation

    .prologue
    .line 183
    const-string v0, "SensorValueChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public SensorValueChangedEventEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 176
    return-void
.end method

.method public SensorValueChangedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the SensorValueChanged event should fire when the sensor value changed."
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    return v0
.end method

.method public SetAngleMode()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the orientation of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 148
    return-void
.end method

.method public SetRateMode()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the angular velocity of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 157
    return-void
.end method

.method public onDelete()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 206
    return-void
.end method
