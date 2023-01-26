.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 189
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    if-eqz v0, :cond_d

    .line 190
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .end local p1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseIntegerOrString(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth(I)V

    .line 192
    :cond_d
    return-void
.end method
