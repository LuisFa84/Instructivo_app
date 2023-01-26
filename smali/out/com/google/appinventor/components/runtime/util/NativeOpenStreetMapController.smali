.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL:[F

.field private static final ANCHOR_VERTICAL:[F

.field private static final SPECIFIED_FILL:J = 0x1L

.field private static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field private static final SPECIFIED_STROKE:J = 0x8L

.field private static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field private static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private caches:Z

.field private compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

.field private containerView:Landroid/widget/RelativeLayout;

.field private defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

.field private defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

.field private eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private featureOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            "Lorg/osmdroid/views/overlay/OverlayWithIW;",
            ">;"
        }
    .end annotation
.end field

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private hiddenFeatureCollections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private lastAzimuth:F

.field private final locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

.field private ready:Z

.field private rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

.field private scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private tileType:Lcom/google/appinventor/components/common/MapType;

.field private touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

.field private final userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private view:Lorg/osmdroid/views/MapView;

.field private zoomControlEnabled:Z

.field private zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 99
    const-class v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    .line 132
    new-array v0, v1, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    .line 133
    new-array v0, v1, [F

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    return-void

    .line 132
    :array_18
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 133
    :array_24
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 9
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 109
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 110
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    .line 112
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 113
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 114
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 116
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 117
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 123
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 130
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    .line 284
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->setUserAgentValue(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "osmdroid"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v0, "osmdroid":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 287
    :cond_57
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 288
    new-instance v1, Ljava/io/File;

    const-string v2, "tiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v1, "osmdroidTiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 290
    :cond_71
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 291
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->caches:Z

    .line 294
    .end local v1    # "osmdroidTiles":Ljava/io/File;
    :cond_7a
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 295
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-direct {v2, p0, v4}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 296
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    .line 297
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    invoke-direct {v2, v4}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    .line 298
    new-instance v2, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 299
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/MapView;->setTilesScaledToDpi(Z)V

    .line 300
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 301
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    new-instance v3, Lorg/osmdroid/views/overlay/CopyrightOverlay;

    invoke-direct {v3, p1}, Lorg/osmdroid/views/overlay/CopyrightOverlay;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/MapView;->addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V

    .line 318
    new-instance v2, Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 319
    new-instance v2, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 320
    new-instance v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v2, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 321
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 322
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2, v5}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 323
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    .line 324
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v2, v3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    .line 327
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 328
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "x2"    # Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/overlay/compass/CompassOverlay;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 665
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 715
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 716
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 720
    :goto_1e
    return-void

    .line 718
    :cond_1f
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_1e
.end method

.method private createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;
    .registers 8
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 1156
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1157
    .local v0, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1158
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1159
    return-object v0
.end method

.method private createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 9
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/osmdroid/views/overlay/Marker;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 1105
    .local v0, "osmMarker":Lorg/osmdroid/views/overlay/Marker;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 1107
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 1108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1109
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 1110
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 1111
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1123
    return-void
.end method

.method private createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    .registers 4
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 1148
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;-><init>()V

    .line 1149
    .local v0, "osmPolygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1150
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 1151
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 1152
    return-object v0
.end method

.method private createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;
    .registers 4
    .param p1, "aiLineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 1126
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 1127
    .local v0, "osmLine":Lorg/osmdroid/views/overlay/Polyline;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setDraggable(Z)V

    .line 1128
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 1129
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 1130
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 1131
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 1132
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 1133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1134
    return-object v0
.end method

.method private createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;
    .registers 12
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 1163
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    .line 1164
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 1165
    .local v1, "bbox":Lorg/osmdroid/util/BoundingBox;
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1166
    .local v0, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1167
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1168
    return-object v0
.end method

.method private createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "osmPolygon"    # Lorg/osmdroid/views/overlay/Polygon;
    .param p2, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1138
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1139
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1140
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    move-object v0, p2

    .line 1141
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    move-object v0, p2

    .line 1142
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1143
    check-cast p2, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .end local p2    # "aiFeature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1145
    return-void
.end method

.method private static getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F
    .registers 2
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_b

    .line 1033
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    .line 1037
    :goto_a
    return v0

    .line 1034
    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_14

    .line 1035
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    goto :goto_a

    .line 1037
    :cond_14
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_a
.end method

.method private static getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F
    .registers 2
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_b

    .line 1023
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    .line 1027
    :goto_a
    return v0

    .line 1024
    :cond_b
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_14

    .line 1025
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    goto :goto_a

    .line 1027
    :cond_14
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_a
.end method

.method private getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 5
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 945
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 949
    :goto_17
    return-void

    .line 947
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_17
.end method

.method private getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 8
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v2

    .line 1003
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 1002
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1015
    return-void
.end method

.method private getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 9
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    const/4 v3, 0x0

    .line 954
    .local v3, "markerSvg":Lcom/caverock/androidsvg/SVG;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-nez v4, :cond_3d

    .line 956
    :try_start_5
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "marker.svg"

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;
    :try_end_17
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5 .. :try_end_17} :catch_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_34

    .line 962
    :goto_17
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 963
    :cond_23
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to load SVG from assets"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 957
    :catch_2b
    move-exception v0

    .line 958
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 959
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_34
    move-exception v0

    .line 960
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 966
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3d
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, "markerAsset":Ljava/lang/String;
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_69

    .line 969
    :try_start_49
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    :try_end_56
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_49 .. :try_end_56} :catch_75
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_7e

    move-result-object v3

    .line 975
    :goto_57
    if-nez v3, :cond_69

    .line 977
    const/4 v1, 0x0

    .line 979
    .local v1, "is":Ljava/io/InputStream;
    :try_start_5a
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 980
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    :try_end_63
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5a .. :try_end_63} :catch_87
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_95
    .catchall {:try_start_5a .. :try_end_63} :catchall_a3

    move-result-object v3

    .line 986
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 990
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_69
    :goto_69
    if-nez v3, :cond_6d

    .line 991
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 994
    :cond_6d
    :try_start_6d
    invoke-direct {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_aa

    .line 998
    :goto_74
    return-void

    .line 970
    :catch_75
    move-exception v0

    .line 971
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 972
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_7e
    move-exception v0

    .line 973
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 981
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_87
    move-exception v0

    .line 982
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    :try_start_88
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Invalid SVG in Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_a3

    .line 986
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_69

    .line 983
    .end local v0    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :catch_95
    move-exception v0

    .line 984
    .local v0, "e":Ljava/io/IOException;
    :try_start_96
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    const-string v5, "Unable to read Marker asset"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_a3

    .line 986
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_69

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a3
    move-exception v4

    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v4

    .line 995
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_aa
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_74
.end method

.method private rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;
    .registers 29
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "markerSvg"    # Lcom/caverock/androidsvg/SVG;

    .prologue
    .line 1042
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v17

    .line 1043
    .local v17, "svg":Lcom/caverock/androidsvg/SVG$Svg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1044
    .local v5, "density":F
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v19

    if-gtz v19, :cond_241

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v8

    .line 1045
    .local v8, "height":F
    :goto_24
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v19

    if-gtz v19, :cond_24a

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v18

    .line 1046
    .local v18, "width":F
    :goto_2e
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v19

    div-float v12, v8, v19

    .line 1047
    .local v12, "scaleH":F
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v19

    div-float v13, v18, v19

    .line 1048
    .local v13, "scaleW":F
    mul-float v19, v12, v12

    mul-float v20, v13, v13

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v11, v0

    .line 1051
    .local v11, "scale":F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1052
    .local v7, "fillPaint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1053
    .local v15, "strokePaint":Landroid/graphics/Paint;
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillColor()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v7, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1054
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeColor()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1055
    new-instance v16, Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v11

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 1056
    .local v16, "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual/range {v17 .. v17}, Lcom/caverock/androidsvg/SVG$Svg;->getChildren()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_84
    :goto_84
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_255

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1057
    .local v6, "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v0, v6, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    move/from16 v20, v0

    if-eqz v20, :cond_84

    move-object v9, v6

    .line 1058
    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    .line 1059
    .local v9, "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1060
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1061
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1062
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1063
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1064
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x3d

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1065
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    if-eqz v20, :cond_84

    .line 1066
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_14c

    .line 1067
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1068
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1070
    :cond_14c
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x4

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_18f

    .line 1071
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1072
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1074
    :cond_18f
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x8

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_1ca

    .line 1075
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    new-instance v21, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v15}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    invoke-direct/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1076
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x8

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1078
    :cond_1ca
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x10

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_20d

    .line 1079
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Landroid/graphics/Paint;->getAlpha()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1080
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x10

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1082
    :cond_20d
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x20

    and-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_84

    .line 1083
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1084
    iget-object v0, v9, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x20

    or-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_84

    .line 1044
    .end local v6    # "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v7    # "fillPaint":Landroid/graphics/Paint;
    .end local v8    # "height":F
    .end local v9    # "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    .end local v11    # "scale":F
    .end local v12    # "scaleH":F
    .end local v13    # "scaleW":F
    .end local v15    # "strokePaint":Landroid/graphics/Paint;
    .end local v16    # "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    .end local v18    # "width":F
    :cond_241
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v8, v0

    goto/16 :goto_24

    .line 1045
    .restart local v8    # "height":F
    :cond_24a
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_2e

    .line 1091
    .restart local v7    # "fillPaint":Landroid/graphics/Paint;
    .restart local v11    # "scale":F
    .restart local v12    # "scaleH":F
    .restart local v13    # "scaleW":F
    .restart local v15    # "strokePaint":Landroid/graphics/Paint;
    .restart local v16    # "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    .restart local v18    # "width":F
    :cond_255
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v10

    .line 1092
    .local v10, "picture":Landroid/graphics/Picture;
    new-instance v14, Landroid/graphics/Picture;

    invoke-direct {v14}, Landroid/graphics/Picture;-><init>()V

    .line 1093
    .local v14, "scaledPicture":Landroid/graphics/Picture;
    const/high16 v19, 0x40000000    # 2.0f

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v19, v19, v18

    mul-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    .line 1094
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v20, v20, v8

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1093
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v4

    .line 1095
    .local v4, "canvas":Landroid/graphics/Canvas;
    mul-float v19, v5, v13

    mul-float v20, v5, v12

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1096
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1097
    invoke-virtual {v10, v4}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1098
    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    .line 1099
    new-instance v19, Landroid/graphics/drawable/PictureDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v19
.end method


# virtual methods
.method public addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_11
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 522
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    .line 524
    :cond_22
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .registers 3
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 730
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .registers 4
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    .line 592
    .local v0, "polyline":Lorg/osmdroid/views/overlay/Polyline;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V

    .line 613
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V

    .line 636
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Visible()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 637
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 641
    :goto_22
    return-void

    .line 639
    :cond_23
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_22
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .registers 3
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 528
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 587
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .registers 3
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 725
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .registers 3
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 735
    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .registers 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    .registers 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    return-object v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .registers 3

    .prologue
    .line 387
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public getOverlayCount()I
    .registers 3

    .prologue
    .line 1289
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .registers 3

    .prologue
    .line 1331
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 1337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :pswitch_19
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1335
    :goto_1b
    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    goto :goto_1b

    .line 1331
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .registers 3

    .prologue
    .line 1358
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 1364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :pswitch_19
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    .line 1362
    :goto_1b
    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    goto :goto_1b

    .line 1358
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getZoom()I
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1186
    return-void
.end method

.method public hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1245
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    .line 1246
    return-void
.end method

.method protected hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .registers 3
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 1190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1191
    return-void
.end method

.method public isCompassEnabled()Z
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z
    .registers 3
    .param p1, "collection"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1196
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1251
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isPanEnabled()Z
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->access$800(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isScaleVisible()Z
    .registers 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowUserEnabled()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isZoomControlEnabled()Z
    .registers 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    return v0
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .registers 5
    .param p1, "event"    # Lorg/osmdroid/events/ScrollEvent;

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1268
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onBoundsChanged()V

    goto :goto_6

    .line 1270
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .registers 5
    .param p1, "event"    # Lorg/osmdroid/events/ZoomEvent;

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 1276
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1277
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onZoom()V

    goto :goto_b

    .line 1279
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public panTo(DDID)V
    .registers 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoom"    # I
    .param p6, "seconds"    # D

    .prologue
    .line 508
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 509
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    int-to-double v2, p5

    invoke-interface {v1, v2, v3}, Lorg/osmdroid/api/IMapController;->zoomTo(D)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 510
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 511
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2d

    .line 512
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p6

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 515
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2d
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .registers 8
    .param p1, "bbox"    # Lorg/osmdroid/util/BoundingBox;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 1262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/osmdroid/api/IMapController;->zoomToSpan(DD)V

    .line 1263
    return-void
.end method

.method public setCenter(DD)V
    .registers 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 351
    return-void
.end method

.method public setCompassEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 413
    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-nez v0, :cond_2e

    .line 414
    new-instance v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 415
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_2e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_49

    .line 426
    if-eqz p1, :cond_5b

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    .line 432
    :goto_41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    .line 438
    :cond_49
    :goto_49
    return-void

    .line 430
    :cond_4a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    new-instance v1, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    goto :goto_41

    .line 434
    :cond_5b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientation()F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    goto :goto_49
.end method

.method public setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V
    .registers 6
    .param p1, "collection"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;
    .param p2, "visible"    # Z

    .prologue
    .line 1206
    if-nez p2, :cond_a

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_a
    if-eqz p2, :cond_15

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 1207
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1226
    :cond_14
    return-void

    .line 1211
    :cond_15
    if-eqz p2, :cond_3b

    .line 1212
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1213
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1214
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1215
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1216
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_20

    .line 1220
    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_3b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1222
    .restart local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_44
.end method

.method public setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
    .registers 4
    .param p1, "type"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    .line 380
    .local v0, "mapType":Lcom/google/appinventor/components/common/MapType;
    if-eqz v0, :cond_11

    .line 381
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    .line 383
    :cond_11
    return-void
.end method

.method public setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .registers 4
    .param p1, "type"    # Lcom/google/appinventor/components/common/MapType;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    .line 393
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 404
    :goto_d
    return-void

    .line 395
    :pswitch_e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_d

    .line 398
    :pswitch_16
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_d

    .line 401
    :pswitch_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_d

    .line 393
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public setPanEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->access$802(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)Z

    .line 499
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "Rotation"    # F

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 1296
    return-void
.end method

.method public setRotationEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 478
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-nez v0, :cond_f

    .line 479
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 481
    :cond_f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_25

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    .line 483
    if-eqz p1, :cond_26

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_25
    :goto_25
    return-void

    .line 486
    :cond_26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method public setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
    .registers 5
    .param p1, "units"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .prologue
    .line 1316
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 1324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowable unit system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1318
    :pswitch_24
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1326
    :goto_2b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1327
    return-void

    .line 1321
    :pswitch_31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_2b

    .line 1316
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_31
    .end packed-switch
.end method

.method public setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .registers 4
    .param p1, "units"    # Lcom/google/appinventor/components/common/ScaleUnits;

    .prologue
    .line 1343
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 1353
    :goto_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1354
    return-void

    .line 1345
    :pswitch_11
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_b

    .line 1348
    :pswitch_19
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    goto :goto_b

    .line 1343
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method public setScaleVisible(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 1306
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1307
    return-void
.end method

.method public setShowUserEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setEnabled(Z)V

    .line 462
    if-eqz p1, :cond_18

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 469
    :goto_17
    return-void

    .line 466
    :cond_18
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public setZoom(I)V
    .registers 6
    .param p1, "zoom"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v2, p1

    invoke-interface {v0, v2, v3}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 357
    return-void
.end method

.method public setZoomControlEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    if-eq v0, p1, :cond_13

    .line 448
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 449
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 452
    :cond_13
    return-void

    .line 448
    :cond_14
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setZoomEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 370
    return-void
.end method

.method public showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1176
    :cond_13
    return-void
.end method

.method public showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 5
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 1230
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1231
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    instance-of v2, v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v2, :cond_10

    .line 1232
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->showInfoWindow()V

    .line 1240
    :goto_f
    return-void

    .line 1233
    :cond_10
    instance-of v2, v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v2, :cond_1f

    move-object v1, v0

    .line 1234
    check-cast v1, Lorg/osmdroid/views/overlay/Polyline;

    .line 1235
    .local v1, "polyOverlay":Lorg/osmdroid/views/overlay/Polyline;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_f

    .end local v1    # "polyOverlay":Lorg/osmdroid/views/overlay/Polyline;
    :cond_1f
    move-object v1, v0

    .line 1237
    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1238
    .local v1, "polyOverlay":Lorg/osmdroid/views/overlay/Polygon;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_f
.end method

.method protected showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .registers 3
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1181
    return-void
.end method

.method public updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 895
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 896
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_11

    .line 897
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setDraggable(Z)V

    .line 899
    :cond_11
    return-void
.end method

.method public updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .registers 4
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .prologue
    .line 806
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 807
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_b

    .line 839
    :goto_a
    return-void

    .line 810
    :cond_b
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    goto :goto_a
.end method

.method public updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .registers 4
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 774
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 775
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_16

    .line 776
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 777
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 779
    :cond_16
    return-void
.end method

.method public updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .registers 4
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 903
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 904
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_b

    .line 919
    :goto_a
    return-void

    .line 907
    :cond_b
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_a
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .registers 10
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 783
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 784
    .local v0, "center":Lorg/osmdroid/util/GeoPoint;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 785
    .local v2, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v2, :cond_27

    .line 786
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v1

    .line 787
    .local v1, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 788
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 790
    .end local v1    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_27
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .registers 4
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 756
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    .line 757
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Polyline;
    if-eqz v0, :cond_16

    .line 758
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 759
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 761
    :cond_16
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .registers 8
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 745
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 746
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-eqz v0, :cond_32

    .line 747
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    .line 748
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v3

    aget v2, v2, v3

    .line 747
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 749
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 750
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 752
    :cond_32
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .registers 4
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 765
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 766
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_16

    .line 767
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 768
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 770
    :cond_16
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .registers 13
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 795
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osmdroid/views/overlay/Polygon;

    .line 796
    .local v10, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v10, :cond_2b

    .line 797
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    .line 798
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 797
    invoke-static {v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v0

    .line 799
    .local v0, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v10, v0}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 800
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 802
    .end local v0    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_2b
    return-void
.end method

.method public updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .registers 4
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 923
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 924
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_b

    .line 939
    :goto_a
    return-void

    .line 927
    :cond_b
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_a
.end method

.method public updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .registers 4
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .prologue
    .line 843
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 844
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_b

    .line 882
    :goto_a
    return-void

    .line 847
    :cond_b
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    goto :goto_a
.end method

.method public updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 4
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 886
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 887
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_18

    .line 888
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setTitle(Ljava/lang/String;)V

    .line 889
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setSnippet(Ljava/lang/String;)V

    .line 891
    :cond_18
    return-void
.end method
