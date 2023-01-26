.class public final enum Lcom/google/appinventor/components/common/MapFeature;
.super Ljava/lang/Enum;
.source "MapFeature.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/MapFeature;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Circle:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum LineString:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Marker:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Polygon:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Rectangle:Lcom/google/appinventor/components/common/MapFeature;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/MapFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/MapFeature;

    const-string v3, "Circle"

    const-string v4, "Circle"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->Circle:Lcom/google/appinventor/components/common/MapFeature;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/MapFeature;

    const-string v3, "LineString"

    const-string v4, "LineString"

    invoke-direct {v2, v3, v5, v4}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->LineString:Lcom/google/appinventor/components/common/MapFeature;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/MapFeature;

    const-string v3, "Marker"

    const-string v4, "Marker"

    invoke-direct {v2, v3, v6, v4}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->Marker:Lcom/google/appinventor/components/common/MapFeature;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/MapFeature;

    const-string v3, "Polygon"

    const-string v4, "Polygon"

    invoke-direct {v2, v3, v7, v4}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    .line 19
    new-instance v2, Lcom/google/appinventor/components/common/MapFeature;

    const-string v3, "Rectangle"

    const-string v4, "Rectangle"

    invoke-direct {v2, v3, v8, v4}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    .line 14
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/appinventor/components/common/MapFeature;

    sget-object v3, Lcom/google/appinventor/components/common/MapFeature;->Circle:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/MapFeature;->LineString:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/MapFeature;->Marker:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v3, v2, v8

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->$VALUES:[Lcom/google/appinventor/components/common/MapFeature;

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/google/appinventor/components/common/MapFeature;->values()[Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v2

    array-length v3, v2

    .local v0, "feat":Lcom/google/appinventor/components/common/MapFeature;
    :goto_61
    if-ge v1, v3, :cond_71

    aget-object v0, v2, v1

    .line 35
    sget-object v4, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 37
    :cond_71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "feat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/appinventor/components/common/MapFeature;->value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapFeature;
    .registers 2
    .param p0, "feat"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapFeature;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/MapFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/MapFeature;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->$VALUES:[Lcom/google/appinventor/components/common/MapFeature;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/MapFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/MapFeature;->value:Ljava/lang/String;

    return-object v0
.end method
