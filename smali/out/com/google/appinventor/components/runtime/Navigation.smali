.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Navigation.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"

.field private static final TAG:Ljava/lang/String; = "Navigation"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private endLocation:Lorg/osmdroid/util/GeoPoint;

.field private language:Ljava/lang/String;

.field private lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private method:Lcom/google/appinventor/components/common/TransportMethod;

.field private serviceUrl:Ljava/lang/String;

.field private startLocation:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 68
    const-string v0, "https://api.openrouteservice.org/v2/directions/"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 69
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 81
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 82
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Navigation;
    .param p1, "x1"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "x2"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "x3"    # Lcom/google/appinventor/components/common/TransportMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Navigation;->performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Navigation;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object p1
.end method

.method private getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;
    .registers 9
    .param p1, "startLocation"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endLocation"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Double;

    .line 423
    .local v0, "coords":[[Ljava/lang/Double;
    aget-object v1, v0, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 424
    aget-object v1, v0, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    .line 425
    aget-object v1, v0, v5

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 426
    aget-object v1, v0, v5

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    .line 427
    return-object v0
.end method

.method private getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;
    .registers 5
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "properties"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "segments"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "steps"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "instruction"

    aput-object v2, v0, v1

    .line 438
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 437
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 431
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "geometry"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "coordinates"

    aput-object v3, v1, v2

    .line 432
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 433
    .local v0, "coords":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 399
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 401
    const-string v2, "UTF-8"

    .line 403
    :cond_9
    const-string v6, "Navigation"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 406
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_1f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 407
    .local v1, "contentLength":I
    if-eq v1, v8, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 410
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_2a
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 412
    .local v0, "buf":[C
    :goto_2e
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v8, :cond_44

    .line 413
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_2e

    .line 417
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_39
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 407
    .restart local v1    # "contentLength":I
    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2a

    .line 415
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_39

    move-result-object v6

    .line 417
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 415
    return-object v6
.end method

.method private performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .registers 32
    .param p1, "start"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "end"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "method"    # Lcom/google/appinventor/components/common/TransportMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/geojson/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 337
    .local v18, "finalUrl":Ljava/lang/String;
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 338
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 339
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 340
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 341
    const-string v5, "Content-Type"

    const-string v6, "application/json; charset=UTF-8"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 343
    const-string v5, "Authorization"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"coordinates\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    invoke-direct/range {p0 .. p2}, Lcom/google/appinventor/components/runtime/Navigation;->getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \"language\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 348
    .local v14, "coords":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v14, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 349
    .local v21, "postData":[B
    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 350
    new-instance v20, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_91} :catch_e0
    .catchall {:try_start_4b .. :try_end_91} :catchall_1ae

    .line 352
    .local v20, "out":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    :try_start_92
    move-object/from16 v0, v21

    array-length v6, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 353
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_db

    .line 355
    :try_start_9f
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 358
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_109

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa3

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 360
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 361
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 359
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d7} :catch_e0
    .catchall {:try_start_9f .. :try_end_d7} :catchall_1ae

    .line 394
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    .end local v14    # "coords":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :goto_da
    return-void

    .line 355
    .restart local v14    # "coords":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "postData":[B
    :catchall_db
    move-exception v5

    :try_start_dc
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    throw v5
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e0} :catch_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_1ae

    .line 389
    .end local v14    # "coords":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :catch_e0
    move-exception v15

    .line 390
    .local v15, "e":Ljava/lang/Exception;
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa2

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 391
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_105
    .catchall {:try_start_e1 .. :try_end_105} :catchall_1ae

    .line 394
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_da

    .line 364
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v14    # "coords":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "postData":[B
    :cond_109
    :try_start_109
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v19

    .line 365
    .local v19, "geoJson":Ljava/lang/String;
    const-string v5, "Navigation"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 367
    .local v7, "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "features"

    invoke-virtual {v7, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 368
    .local v17, "features":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-lez v5, :cond_194

    .line 369
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 370
    .local v16, "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v24, "properties"

    aput-object v24, v5, v6

    const/4 v6, 0x1

    const-string v24, "summary"

    aput-object v24, v5, v6

    .line 371
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 372
    .local v22, "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "distance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 373
    .local v10, "distance":D
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 374
    .local v12, "duration":D
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    .line 375
    .local v8, "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v9

    .line 377
    .local v9, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v24, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/Navigation$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_18f} :catch_e0
    .catchall {:try_start_109 .. :try_end_18f} :catchall_1ae

    .line 394
    .end local v8    # "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v9    # "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "distance":D
    .end local v12    # "duration":D
    .end local v16    # "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v22    # "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :goto_18f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_da

    .line 386
    :cond_194
    :try_start_194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa4

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1ad} :catch_e0
    .catchall {:try_start_194 .. :try_end_1ad} :catchall_1ae

    goto :goto_18f

    .line 394
    .end local v7    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v14    # "coords":Ljava/lang/String;
    .end local v17    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v19    # "geoJson":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :catchall_1ae
    move-exception v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v5
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key for Open Route Service."
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public EndLatitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLatitude(D)V
    .registers 10
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 194
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 200
    :goto_b
    return-void

    .line 197
    :cond_c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "EndLatitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 197
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 13
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 269
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 270
    .local v4, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 271
    .local v0, "latitude":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 272
    .local v2, "longitude":D
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    if-nez v5, :cond_28

    .line 273
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetEndLocation"

    const/16 v7, 0xd55

    new-array v8, v8, [Ljava/lang/Object;

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 273
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 281
    :goto_27
    return-void

    .line 275
    :cond_28
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_42

    .line 276
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetEndLocation"

    const/16 v7, 0xd56

    new-array v8, v8, [Ljava/lang/Object;

    .line 277
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 276
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_27

    .line 279
    :cond_42
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    goto :goto_27
.end method

.method public EndLongitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLongitude(D)V
    .registers 10
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 212
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 218
    :goto_b
    return-void

    .line 215
    :cond_c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "EndLongitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 216
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 215
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .registers 12
    .param p1, "directions"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "distance"    # D
    .param p5, "duration"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    .prologue
    .line 328
    const-string v0, "Navigation"

    const-string v1, "GotDirections"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "GotDirections"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public Language()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The language to use for textual directions."
    .end annotation

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public RequestDirections()V
    .registers 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .prologue
    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 95
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "Authorization"

    const/16 v5, 0xfa1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 116
    :goto_16
    return-void

    .line 98
    :cond_17
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 99
    .local v2, "startLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 100
    .local v0, "endLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 101
    .local v1, "method":Lcom/google/appinventor/components/common/TransportMethod;
    new-instance v3, Lcom/google/appinventor/components/runtime/Navigation$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_16
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public StartLatitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLatitude(D)V
    .registers 10
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 148
    :goto_b
    return-void

    .line 145
    :cond_c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "StartLatitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 145
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .registers 13
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 176
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 177
    .local v4, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 178
    .local v0, "latitude":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 179
    .local v2, "longitude":D
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    if-nez v5, :cond_28

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetStartLocation"

    const/16 v7, 0xd55

    new-array v8, v8, [Ljava/lang/Object;

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 180
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 188
    :goto_27
    return-void

    .line 182
    :cond_28
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_42

    .line 183
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetStartLocation"

    const/16 v7, 0xd56

    new-array v8, v8, [Ljava/lang/Object;

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 183
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_27

    .line 186
    :cond_42
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    goto :goto_27
.end method

.method public StartLongitude()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLongitude(D)V
    .registers 10
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 160
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 166
    :goto_b
    return-void

    .line 163
    :cond_c
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "StartLongitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 164
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 163
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public TransportationMethod()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/TransportMethod;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/TransportMethod;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .prologue
    .line 261
    invoke-static {p1}, Lcom/google/appinventor/components/common/TransportMethod;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    .line 262
    .local v0, "t":Lcom/google/appinventor/components/common/TransportMethod;
    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V

    .line 265
    :cond_9
    return-void
.end method

.method public TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V
    .registers 2
    .param p1, "method"    # Lcom/google/appinventor/components/common/TransportMethod;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 245
    return-void
.end method
