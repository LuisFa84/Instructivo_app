.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInventorLocationSensorAdapter"
.end annotation


# instance fields
.field private consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private enabled:Z

.field private lastLocation:Landroid/location/Location;

.field private source:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 210
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onDistanceIntervalChanged(I)V
    .registers 2
    .param p1, "distance"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 170
    :cond_b
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 182
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 174
    return-void
.end method

.method public onTimeIntervalChanged(I)V
    .registers 2
    .param p1, "time"    # I

    .prologue
    .line 158
    return-void
.end method

.method public setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .registers 4
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_5

    .line 154
    :cond_4
    :goto_4
    return-void

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 150
    :cond_f
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    goto :goto_4
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .registers 4
    .param p1, "consumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .prologue
    const/4 v1, 0x1

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_e

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 189
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 191
    :cond_e
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return v0
.end method

.method public stopLocationProvider()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 199
    :cond_a
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 200
    return-void
.end method
