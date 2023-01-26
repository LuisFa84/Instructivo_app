.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 40.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x64


# instance fields
.field private avgPos:I

.field private avgWindow:[F

.field private final context:Landroid/content/Context;

.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private foundNonStep:Z

.field private foundValley:Z

.field private intervalPos:I

.field private lastValley:F

.field private lastValues:[F

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private pedometerPaused:Z

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 10
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const v5, 0x3f3ae148    # 0.73f

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 60
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 61
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 62
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 63
    const/16 v1, 0x64

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    .line 64
    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 65
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .line 67
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 68
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 69
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 70
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 71
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 72
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 74
    const/16 v1, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    .line 75
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 78
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 85
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 86
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 87
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 88
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 90
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 91
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 93
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 96
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "PedometerPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "Pedometer.stridelength"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 98
    const-string v1, "Pedometer.distance"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 99
    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 100
    const-string v1, "Pedometer.clockTime"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 101
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 103
    const-string v1, "Pedometer"

    const-string v2, "Pedometer Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "avg":F
    const/4 v1, 0x0

    .line 336
    .local v1, "num":I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v7, v6

    move v5, v4

    :goto_7
    if-ge v5, v7, :cond_18

    aget-wide v2, v6, v5

    .line 337
    .local v2, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_15

    .line 338
    add-int/lit8 v1, v1, 0x1

    .line 339
    long-to-float v8, v2

    add-float/2addr v0, v8

    .line 336
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 342
    .end local v2    # "interval":J
    :cond_18
    int-to-float v5, v1

    div-float/2addr v0, v5

    .line 343
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v7, v6

    move v5, v4

    :goto_1e
    if-ge v5, v7, :cond_32

    aget-wide v2, v6, v5

    .line 344
    .restart local v2    # "interval":J
    long-to-float v8, v2

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x437a0000    # 250.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2f

    .line 348
    .end local v2    # "interval":J
    :goto_2e
    return v4

    .line 343
    .restart local v2    # "interval":J
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 348
    .end local v2    # "interval":J
    :cond_32
    const/4 v4, 0x1

    goto :goto_2e
.end method

.method private isPeak()Z
    .registers 5

    .prologue
    .line 355
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 356
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1e

    .line 357
    if-eq v0, v1, :cond_1b

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    .line 358
    const/4 v2, 0x0

    .line 361
    :goto_1a
    return v2

    .line 356
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 361
    :cond_1e
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private isValley()Z
    .registers 5

    .prologue
    .line 368
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 369
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1e

    .line 370
    if-eq v0, v1, :cond_1b

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 371
    const/4 v2, 0x0

    .line 374
    :goto_1a
    return v2

    .line 369
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 374
    :cond_1e
    const/4 v2, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .registers 2
    .param p1, "cal"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    return-void
.end method

.method public CalibrateStrideLength()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public Distance()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .prologue
    .line 289
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_7

    .line 301
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 303
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method public GPSAvailable()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    return-void
.end method

.method public GPSLost()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    return-void
.end method

.method public Moving()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    .line 164
    return-void
.end method

.method public Reset()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 142
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 146
    return-void
.end method

.method public Resume()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 155
    return-void
.end method

.method public Save()V
    .registers 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .prologue
    .line 175
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pedometer.stridelength"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v2, "Pedometer.distance"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v2, "Pedometer.prevStepCount"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v2, :cond_41

    .line 181
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    :goto_2d
    const-string v2, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 183
    :cond_41
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 183
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2d
.end method

.method public SimpleStep(IF)V
    .registers 7
    .param p1, "simpleSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected."
    .end annotation

    .prologue
    .line 203
    const-string v0, "SimpleSteps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v0, "Distance"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public SimpleSteps()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 315
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    return v0
.end method

.method public Start()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_1f

    .line 114
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 115
    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 120
    :cond_1f
    return-void
.end method

.method public StartedMoving()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    return-void
.end method

.method public Stop()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_1f

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 133
    :cond_1f
    return-void
.end method

.method public StopDetectionTimeout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .prologue
    .line 268
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 269
    return-void
.end method

.method public StoppedMoving()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    return-void
.end method

.method public StrideLength()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .registers 2
    .param p1, "length"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .prologue
    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 243
    return-void
.end method

.method public UseGPS(Z)V
    .registers 2
    .param p1, "gps"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public WalkStep(IF)V
    .registers 7
    .param p1, "walkSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .prologue
    .line 221
    const-string v0, "WalkSteps"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const-string v0, "Distance"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public WalkSteps()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 326
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_54

    .line 562
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_10
    return-object v0

    .line 551
    :sswitch_11
    const-string v1, "SimpleSteps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_1b
    const-string v1, "WalkSteps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_25
    const-string v1, "Distance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    .line 553
    :pswitch_2f
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_10

    .line 556
    :pswitch_37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_10

    .line 559
    :pswitch_3f
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_10

    .line 551
    :sswitch_data_46
    .sparse-switch
        -0x33ecd942 -> :sswitch_1b
        0xe2e9875 -> :sswitch_11
        0x150bf015 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_37
        :pswitch_3f
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Pedometer;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 534
    .local v0, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 536
    .end local v0    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :cond_16
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 381
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method public onDelete()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 459
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 386
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Landroid/hardware/Sensor;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    .line 453
    :goto_b
    return-void

    .line 389
    :cond_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 390
    .local v11, "values":[F
    const/4 v6, 0x0

    .line 391
    .local v6, "magnitude":F
    array-length v13, v11

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v13, :cond_1d

    aget v10, v11, v12

    .local v10, "v":F
    mul-float v14, v10, v10

    add-float/2addr v6, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 394
    .end local v10    # "v":F
    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v12, v12, 0x32

    rem-int/lit8 v7, v12, 0x64

    .line 397
    .local v7, "mid":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v12, :cond_d7

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isPeak()Z

    move-result v12

    if-eqz v12, :cond_d7

    .line 398
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    if-eqz v12, :cond_d7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v12, v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_d7

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 401
    .local v8, "timestamp":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v14, v8, v14

    aput-wide v14, v12, v13

    .line 402
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 403
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v12

    if-eqz v12, :cond_134

    .line 405
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v12, :cond_97

    .line 406
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 407
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 408
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 410
    :cond_97
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 411
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 412
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 416
    :goto_bb
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 417
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 418
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 422
    .end local v8    # "timestamp":J
    :cond_d7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v12, :cond_f2

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isValley()Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 423
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v12, v12, v7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 427
    :cond_f2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    aput v6, v12, v13

    .line 428
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v13, v13

    rem-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v14, v13

    const/4 v12, 0x0

    :goto_11d
    if-ge v12, v14, :cond_13a

    aget v5, v13, v12

    .local v5, "m":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    add-float v17, v17, v5

    aput v17, v15, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_11d

    .line 414
    .end local v5    # "m":F
    .restart local v8    # "timestamp":J
    :cond_134
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    goto :goto_bb

    .line 431
    .end local v8    # "timestamp":J
    :cond_13a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v15, v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    aput v14, v12, v13

    .line 432
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_15a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_1dd

    .line 433
    :cond_15a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 434
    .local v4, "i":I
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_164

    add-int/lit8 v4, v4, 0x64

    .line 435
    :cond_164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v16, v0

    aget v16, v16, v4

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 436
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_183

    add-int/lit8 v4, v4, 0x64

    .line 437
    :cond_183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v15, v15, v4

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v14, v12, v13

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    .line 443
    .end local v4    # "i":I
    :cond_1a5
    :goto_1a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 444
    .local v2, "elapsedTimestamp":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v12, v2, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_1bc

    .line 445
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 448
    :cond_1bc
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v13, 0x63

    if-ne v12, v13, :cond_1cf

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_1cf

    .line 449
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 452
    :cond_1cf
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    goto/16 :goto_b

    .line 439
    .end local v2    # "elapsedTimestamp":J
    :cond_1dd
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v12, :cond_1a5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a5

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    aput v14, v12, v13

    goto :goto_1a5
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method
