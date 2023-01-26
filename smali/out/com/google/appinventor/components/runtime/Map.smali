.class public Lcom/google/appinventor/components/runtime/Map;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "Map.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x8
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional container that renders map tiles in the background and allows for multiple Marker elements to identify points on the map. Map tiles are supplied by OpenStreetMap contributors and the United States Geological Survey.</p><p>The Map component provides three utilities for manipulating its boundaries within App Inventor. First, a locking mechanism is provided to allow the map to be moved relative to other components on the Screen. Second, when unlocked, the user can pan the Map to any location. At this new location, the &quot;Set Initial Boundary&quot; button can be pressed to save the current Map coordinates to its properties. Lastly, if the Map is moved to a different location, for example to add Markers off-screen, then the &quot;Reset Map to Initial Bounds&quot; button can be used to re-center the Map at the starting location.</p>"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "location.png, marker.svg"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "osmdroid.aar, osmdroid.jar, androidsvg.jar, jts.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION"
    }
.end annotation


# static fields
.field private static final ERROR_INVALID_NUMBER:Ljava/lang/String; = "%s is not a valid number."

.field private static final ERROR_LATITUDE_OUT_OF_BOUNDS:Ljava/lang/String; = "Latitude %f is out of bounds."

.field private static final ERROR_LONGITUDE_OUT_OF_BOUNDS:Ljava/lang/String; = "Longitude %f is out of bounds."

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

.field private sensor:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-class v0, Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 105
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 107
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 116
    sget-object v0, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v1, "Map.<init>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 118
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Width(I)V

    .line 119
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->Height(I)V

    .line 120
    const-string v0, "42.359144, -71.093612"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->CenterFromString(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ZoomLevel(I)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Map;->EnableZoom(Z)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Map;->EnablePan(Z)V

    .line 124
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowCompass(Z)V

    .line 126
    new-instance v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowUser(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowZoom(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->EnableRotation(Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Map;->ShowScale(Z)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Map;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Map;->doSave(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private doSave(Ljava/util/List;Ljava/io/File;)V
    .registers 6
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 646
    :goto_7
    return-void

    .line 637
    :catch_8
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Map$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Map$3;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7
.end method


# virtual methods
.method public BoundingBox()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Bounding box for the map stored as [[North, West], [South, East]]."
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 483
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 484
    .local v0, "bbox":Lorg/osmdroid/util/BoundingBox;
    new-array v3, v8, [Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 485
    .local v1, "northwest":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v3, v8, [Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 486
    .local v2, "southeast":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v3, v8, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method public BoundingBox(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 13
    .param p1, "boundingbox"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    .line 468
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 469
    .local v2, "latNorth":D
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v8

    .line 470
    .local v8, "longWest":D
    invoke-virtual {p1, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 471
    .local v6, "latSouth":D
    invoke-virtual {p1, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 472
    .local v4, "longEast":D
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V

    .line 473
    return-void
.end method

.method public BoundsChange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the map bounds by panning or zooming the map."
    .end annotation

    .prologue
    .line 663
    const-string v0, "BoundsChange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method public CenterFromString(Ljava/lang/String;)V
    .registers 14
    .param p1, "center"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "42.359144, -71.093612"
        editorType = "geographic_point"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "<p>Set the initial center coordinate of the map. The value is specified as a comma-separated pair of decimal latitude and longitude coordinates, for example, <code>42.359144, -71.093612</code>.</p><p>In blocks code, it is recommended for performance reasons to use SetCenter with numerical latitude and longitude rather than convert to the string representation for use with this property.</p>"
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 163
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "parts":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3b

    .line 165
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid point."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid point."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    .line 193
    :goto_3a
    return-void

    .line 172
    :cond_3b
    const/4 v6, 0x0

    :try_start_3c
    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_45} :catch_75

    move-result-wide v2

    .line 179
    .local v2, "latitude":D
    const/4 v6, 0x1

    :try_start_47
    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_50} :catch_97

    move-result-wide v4

    .line 185
    .local v4, "longitude":D
    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_63

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_b9

    .line 186
    :cond_63
    const-string v6, "Latitude %f is out of bounds."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_3a

    .line 173
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :catch_75
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v7, "%s is not a valid number."

    new-array v8, v11, [Ljava/lang/Object;

    aget-object v9, v1, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v6, "%s is not a valid number."

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v1, v10

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_3a

    .line 180
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "latitude":D
    :catch_97
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    const-string v7, "%s is not a valid number."

    new-array v8, v11, [Ljava/lang/Object;

    aget-object v9, v1, v11

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v6, "%s is not a valid number."

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v1, v11

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto :goto_3a

    .line 187
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "longitude":D
    :cond_b9
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_cb

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_de

    .line 188
    :cond_cb
    const-string v6, "Longitude %f is out of bounds."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Map;->InvalidPoint(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 190
    :cond_de
    sget-object v6, Lcom/google/appinventor/components/runtime/Map;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting center to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v6, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCenter(DD)V

    goto/16 :goto_3a
.end method

.method public CreateMarker(DD)Lcom/google/appinventor/components/runtime/Marker;
    .registers 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new marker with default properties at the specified latitude and longitude."
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 602
    .local v0, "marker":Lcom/google/appinventor/components/runtime/Marker;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Marker;->SetLocation(DD)V

    .line 603
    return-object v0
.end method

.method public DoubleTapAtPoint(DD)V
    .registers 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user double-tapped at a point on the map. This event will be followed by a ZoomChanged event if zooming gestures are enabled and the map is not at the highest possible zoom level."
    .end annotation

    .prologue
    .line 708
    const-string v0, "DoubleTapAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 709
    return-void
.end method

.method public EnablePan(Z)V
    .registers 3
    .param p1, "pan"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setPanEnabled(Z)V

    .line 455
    return-void
.end method

.method public EnablePan()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable two-finger panning of the Map"
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isPanEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableRotation(Z)V
    .registers 3
    .param p1, "rotation"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotationEnabled(Z)V

    .line 437
    return-void
.end method

.method public EnableRotation()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, the user can use multitouch gestures to rotate the map around its current center."
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isRotationEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableZoom(Z)V
    .registers 3
    .param p1, "zoom"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomEnabled(Z)V

    .line 267
    return-void
.end method

.method public EnableZoom()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If this property is set to true, multitouch zoom gestures are allowed on the map. Otherwise, the map zoom cannot be changed by the user except via the zoom control buttons."
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 492
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->Features()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public InvalidPoint(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An invalid coordinate was supplied during a maps operation. The message parameter will have more details about the issue."
    .end annotation

    .prologue
    .line 686
    const-string v0, "InvalidPoint"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method public Latitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the map."
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public LocationSensor()Lcom/google/appinventor/components/runtime/LocationSensor;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    return-object v0
.end method

.method public LocationSensor(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .registers 4
    .param p1, "sensor"    # Lcom/google/appinventor/components/runtime/LocationSensor;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "component:com.google.appinventor.components.runtime.LocationSensor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Uses the provided LocationSensor for user location data rather than the built-in location provider."
    .end annotation

    .prologue
    .line 504
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    move-result-object v0

    .line 505
    .local v0, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_f

    .line 506
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 508
    :cond_f
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 509
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v1, :cond_1a

    .line 510
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V

    .line 512
    :cond_1a
    return-void
.end method

.method public LongPressAtPoint(DD)V
    .registers 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed at a point on the map."
    .end annotation

    .prologue
    .line 719
    const-string v0, "LongPressAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 720
    return-void
.end method

.method public Longitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the map."
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public MapType()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/MapType;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The type of tile layer to use as the base of the map. Valid values are: 1 (Roads), 2 (Aerial), 3 (Terrain)"
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract()Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public MapType(I)V
    .registers 4
    .param p1, "type"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/MapType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    .line 311
    .local v0, "mapType":Lcom/google/appinventor/components/common/MapType;
    if-eqz v0, :cond_d

    .line 312
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    .line 314
    :cond_d
    return-void
.end method

.method public MapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    return-object v0
.end method

.method public MapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .registers 3
    .param p1, "type"    # Lcom/google/appinventor/components/common/MapType;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    .line 350
    return-void
.end method

.method public PanTo(DDI)V
    .registers 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pans the map center to the given latitude and longitude and adjust the zoom level to the specified zoom."
    .end annotation

    .prologue
    .line 588
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->panTo(DDID)V

    .line 589
    return-void
.end method

.method public Ready()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Map has been initialized and is ready for user interaction."
    .end annotation

    .prologue
    .line 654
    const-string v0, "Ready"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method public Rotation()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets or gets the rotation of the map in decimal degrees if any"
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getRotation()F

    move-result v0

    return v0
.end method

.method public Rotation(F)V
    .registers 3
    .param p1, "rotation"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setRotation(F)V

    .line 286
    return-void
.end method

.method public Save(Ljava/lang/String;)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Save the contents of the Map to the specified path."
    .end annotation

    .prologue
    .line 611
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 613
    .local v9, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 614
    :cond_17
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v10, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 616
    .local v10, "target":Ljava/io/File;
    :goto_28
    new-instance v0, Lcom/google/appinventor/components/runtime/Map$1;

    invoke-direct {v0, p0, v9, v10}, Lcom/google/appinventor/components/runtime/Map$1;-><init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 632
    .end local v10    # "target":Ljava/io/File;
    :goto_30
    return-void

    .line 614
    :cond_31
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_28

    .line 623
    :cond_37
    new-instance v0, Lcom/google/appinventor/components/runtime/Map$2;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v4, "Save"

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/Map$2;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/util/List;)V

    .line 630
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map$2;->run()V

    goto :goto_30
.end method

.method public ScaleUnits()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScaleUnits;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->ScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScaleUnits;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ScaleUnits(I)V
    .registers 9
    .param p1, "units"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScaleUnits;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "map_unit_system"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/common/ScaleUnits;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    .line 544
    .local v0, "scaleUnits":Lcom/google/appinventor/components/common/ScaleUnits;
    if-nez v0, :cond_20

    .line 545
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "ScaleUnits"

    const/16 v3, 0xd5d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 545
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 550
    :goto_1f
    return-void

    .line 549
    :cond_20
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Map;->ScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V

    goto :goto_1f
.end method

.method public ScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    return-object v0
.end method

.method public ScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .registers 3
    .param p1, "units"    # Lcom/google/appinventor/components/common/ScaleUnits;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V

    .line 571
    return-void
.end method

.method public ShowCompass(Z)V
    .registers 3
    .param p1, "compass"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setCompassEnabled(Z)V

    .line 363
    return-void
.end method

.method public ShowCompass()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show a compass icon rotated based on user orientation."
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowScale(Z)V
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setScaleVisible(Z)V

    .line 526
    return-void
.end method

.method public ShowScale()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Shows a scale reference on the map."
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isScaleVisible()Z

    move-result v0

    return v0
.end method

.method public ShowUser(Z)V
    .registers 3
    .param p1, "user"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setShowUserEnabled(Z)V

    .line 413
    return-void
.end method

.method public ShowUser()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show the user\'s location on the map."
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isShowUserEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowZoom(Z)V
    .registers 3
    .param p1, "zoom"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoomControlEnabled(Z)V

    .line 387
    return-void
.end method

.method public ShowZoom()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show zoom buttons on the map."
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isZoomControlEnabled()Z

    move-result v0

    return v0
.end method

.method public TapAtPoint(DD)V
    .registers 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user tapped at a point on the map."
    .end annotation

    .prologue
    .line 696
    const-string v0, "TapAtPoint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method public UserLatitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s latitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_a

    const-wide v0, -0x3f70c80000000000L    # -999.0

    :goto_9
    return-wide v0

    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Latitude()D

    move-result-wide v0

    goto :goto_9
.end method

.method public UserLongitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the user\'s longitude if ShowUser is enabled."
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-nez v0, :cond_a

    const-wide v0, -0x3f70c80000000000L    # -999.0

    :goto_9
    return-wide v0

    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->sensor:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Longitude()D

    move-result-wide v0

    goto :goto_9
.end method

.method public ZoomChange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User has changed the zoom level of the map."
    .end annotation

    .prologue
    .line 672
    const-string v0, "ZoomChange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 673
    return-void
.end method

.method public ZoomLevel()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom level of the map. Valid values of ZoomLevel are dependent on the tile provider and the latitude and longitude of the map. For example, zoom levels are more constrained over oceans than dense city centers to conserve space for storing tiles, so valid values may be 1-7 over ocean and 1-18 over cities. Tile providers may send warning or error tiles if the zoom level is too great for the server to support."
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getZoom()I

    move-result v0

    return v0
.end method

.method public ZoomLevel(I)V
    .registers 3
    .param p1, "zoom"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "13"
        editorType = "map_zoom"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setZoom(I)V

    .line 236
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .registers 3
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 876
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 877
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .registers 3
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 856
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .registers 3
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 848
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 849
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .registers 3
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 862
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 863
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .registers 3
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 870
    return-void
.end method

.method public getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    return-object v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .registers 1

    .prologue
    .line 839
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    if-nez v0, :cond_15

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory;->newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V

    .line 139
    :cond_15
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBoundsChanged()V
    .registers 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$5;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public onDoubleTap(DD)V
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$8;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$8;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 775
    return-void
.end method

.method public onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$10;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method

.method public onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$13;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$13;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method public onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$11;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    return-void
.end method

.method public onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$12;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$14;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Map$14;-><init>(Lcom/google/appinventor/components/runtime/Map;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method

.method public onLongPress(DD)V
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$9;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$9;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 785
    return-void
.end method

.method public onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V
    .registers 4
    .param p1, "map"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$4;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 735
    return-void
.end method

.method public onSingleTap(DD)V
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v0, Lcom/google/appinventor/components/runtime/Map$7;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Map$7;-><init>(Lcom/google/appinventor/components/runtime/Map;DD)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 765
    return-void
.end method

.method public onZoom()V
    .registers 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Map$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Map$6;-><init>(Lcom/google/appinventor/components/runtime/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map;->mapController:Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 883
    return-void
.end method
