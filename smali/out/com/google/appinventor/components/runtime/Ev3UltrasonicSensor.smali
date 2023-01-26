.class public Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3UltrasonicSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x1e


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field private previousDistance:D

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v0, "Ev3UltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 49
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->TopOfRange(I)V

    .line 97
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BottomOfRange(I)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 101
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
    .param p1, "x1"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method private getDistance(Ljava/lang/String;)D
    .registers 10
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorPortNumber:I

    const/16 v4, 0x1e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 113
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v6

    .line 114
    .local v6, "distance":D
    const-wide v0, 0x406fe00000000000L    # 255.0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_20

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .end local v6    # "distance":D
    :cond_20
    return-wide v6
.end method

.method private setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .registers 4
    .param p1, "newMode"    # Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .prologue
    .line 312
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 313
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 314
    return-void
.end method


# virtual methods
.method public AboveRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone above the range."
    .end annotation

    .prologue
    .line 248
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    .line 241
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone below the range."
    .end annotation

    .prologue
    .line 188
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    .line 181
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 125
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .registers 2
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 136
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    .line 137
    return-void
.end method

.method public GetDistance()D
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .prologue
    .line 107
    const-string v0, "GetDistance"

    .line 108
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public SetCmUnit()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in centimeters."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    .line 300
    return-void
.end method

.method public SetInchUnit()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in inches."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    .line 309
    return-void
.end method

.method public TopOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .registers 2
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 158
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    .line 159
    return-void
.end method

.method public Unit()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance unit, which can be either \"cm\" or \"inch\"."
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Unit(Ljava/lang/String;)V
    .registers 8
    .param p1, "unitName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "cm"
        editorType = "lego_ev3_ultrasonic_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    move-result-object v0

    .line 260
    .local v0, "unit":Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    if-nez v0, :cond_16

    .line 261
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Unit"

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 266
    :goto_15
    return-void

    .line 265
    :cond_16
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    goto :goto_15
.end method

.method public UnitAbstract()Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method

.method public UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .registers 2
    .param p1, "unit"    # Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    .line 274
    return-void
.end method

.method public WithinRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone within the range."
    .end annotation

    .prologue
    .line 218
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    .line 211
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 321
    return-void
.end method
