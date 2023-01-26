.class public Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3ColorSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x3c

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x1d


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/ColorSensorMode;

.field private previousColor:I

.field private previousLightLevel:I

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "Ev3ColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 52
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->TopOfRange(I)V

    .line 113
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BottomOfRange(I)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRangeEventEnabled(Z)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRangeEventEnabled(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRangeEventEnabled(Z)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChangedEventEnabled(Z)V

    .line 118
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 39
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return v0
.end method

.method private getSensorValue(Ljava/lang/String;)I
    .registers 9
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 313
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorPortNumber:I

    const/16 v4, 0x1d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 317
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->readInputPercentage(Ljava/lang/String;IIII)I

    move-result v6

    .line 319
    .local v6, "level":I
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_1d

    move v2, v6

    .line 342
    :goto_1c
    :sswitch_1c
    return v2

    .line 324
    :cond_1d
    sparse-switch v6, :sswitch_data_30

    goto :goto_1c

    .line 328
    :sswitch_21
    const/4 v2, 0x1

    goto :goto_1c

    .line 330
    :sswitch_23
    const/4 v2, 0x2

    goto :goto_1c

    .line 332
    :sswitch_25
    const/4 v2, 0x3

    goto :goto_1c

    .line 334
    :sswitch_27
    const/4 v2, 0x4

    goto :goto_1c

    .line 336
    :sswitch_29
    const/4 v2, 0x5

    goto :goto_1c

    .line 338
    :sswitch_2b
    const/4 v2, 0x6

    goto :goto_1c

    .line 340
    :sswitch_2d
    const/4 v2, 0x7

    goto :goto_1c

    .line 324
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_1c
        0xc -> :sswitch_21
        0x19 -> :sswitch_23
        0x25 -> :sswitch_25
        0x32 -> :sswitch_27
        0x3e -> :sswitch_29
        0x4b -> :sswitch_2b
        0x57 -> :sswitch_2d
    .end sparse-switch
.end method

.method private setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .registers 3
    .param p1, "newMode"    # Lcom/google/appinventor/components/common/ColorSensorMode;

    .prologue
    const/4 v0, -0x1

    .line 450
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 451
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 452
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 453
    return-void
.end method

.method private toColorName(I)Ljava/lang/String;
    .registers 4
    .param p1, "colorCode"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_9

    .line 348
    const-string v0, "No Color"

    .line 369
    :goto_8
    return-object v0

    .line 351
    :cond_9
    packed-switch p1, :pswitch_data_28

    .line 369
    const-string v0, "No Color"

    goto :goto_8

    .line 353
    :pswitch_f
    const-string v0, "No Color"

    goto :goto_8

    .line 355
    :pswitch_12
    const-string v0, "Black"

    goto :goto_8

    .line 357
    :pswitch_15
    const-string v0, "Blue"

    goto :goto_8

    .line 359
    :pswitch_18
    const-string v0, "Green"

    goto :goto_8

    .line 361
    :pswitch_1b
    const-string v0, "Yellow"

    goto :goto_8

    .line 363
    :pswitch_1e
    const-string v0, "Red"

    goto :goto_8

    .line 365
    :pswitch_21
    const-string v0, "White"

    goto :goto_8

    .line 367
    :pswitch_24
    const-string v0, "Brown"

    goto :goto_8

    .line 351
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public AboveRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .prologue
    .line 277
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
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
    .line 272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    .line 273
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .prologue
    .line 223
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 224
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
    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    .line 219
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

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
    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    .line 175
    return-void
.end method

.method public ColorChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "colorCode"    # I
    .param p2, "colorName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected color has changed. The ColorChanged event will occur if the Mode property is set to \"color\" and the ColorChangedEventEnabled property is set to True."
    .end annotation

    .prologue
    .line 309
    const-string v0, "ColorChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    .line 300
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the Mode property is set to \"color\" and the detected color changes."
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public GetColorCode()I
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the color code from 0 to 7 corresponding to no color, black, blue, green, yellow, red, white and brown."
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_8

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_7
    return v0

    :cond_8
    const-string v0, "GetColorCode"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public GetColorName()Ljava/lang/String;
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the color name in one of \"No Color\", \"Black\", \"Blue\", \"Green\", \"Yellow\", \"Red\", \"White\", \"Brown\"."
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_9

    .line 150
    const-string v0, "No Color"

    .line 152
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "GetColorName"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public GetLightLevel()I
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the light level in percentage, or -1 when the light level cannot be read."
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v0, v1, :cond_8

    .line 128
    const/4 v0, -0x1

    .line 130
    :goto_7
    return v0

    :cond_8
    const-string v0, "GetLightLevel"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public Mode()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ColorSensorMode;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current sensor mode."
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .registers 8
    .param p1, "modeName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ColorSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "reflected"
        editorType = "lego_ev3_color_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 381
    invoke-static {p1}, Lcom/google/appinventor/components/common/ColorSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    .line 382
    .local v0, "mode":Lcom/google/appinventor/components/common/ColorSensorMode;
    if-nez v0, :cond_16

    .line 383
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Mode"

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 388
    :goto_15
    return-void

    .line 387
    :cond_16
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    goto :goto_15
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/ColorSensorMode;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/google/appinventor/components/common/ColorSensorMode;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 396
    return-void
.end method

.method public SetAmbientMode()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level without reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 444
    return-void
.end method

.method public SetColorMode()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the color detection mode."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 426
    return-void
.end method

.method public SetReflectedMode()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level with reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 435
    return-void
.end method

.method public TopOfRange()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .registers 2
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    .line 197
    return-void
.end method

.method public WithinRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .prologue
    .line 250
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 251
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
    .line 245
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    .line 246
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 460
    return-void
.end method
