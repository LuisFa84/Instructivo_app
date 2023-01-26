.class public final enum Lcom/google/appinventor/components/common/ScreenOrientation;
.super Ljava/lang/Enum;
.source "ScreenOrientation.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ScreenOrientation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum User:Lcom/google/appinventor/components/common/ScreenOrientation;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private orientationConst:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Unspecified"

    const-string v4, "unspecified"

    invoke-direct {v2, v3, v1, v4, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Landscape"

    const-string v4, "landscape"

    invoke-direct {v2, v3, v8, v4, v1}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Portrait"

    const-string v4, "portrait"

    invoke-direct {v2, v3, v9, v4, v8}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Sensor"

    const-string v4, "sensor"

    invoke-direct {v2, v3, v10, v4, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 19
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "User"

    const-string v4, "user"

    invoke-direct {v2, v3, v7, v4, v9}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 20
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "Behind"

    const/4 v4, 0x5

    const-string v5, "behind"

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 21
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "NoSensor"

    const/4 v4, 0x6

    const-string v5, "nosensor"

    const/4 v6, 0x5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 22
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "FullSensor"

    const/4 v4, 0x7

    const-string v5, "fullSensor"

    const/16 v6, 0xa

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "ReverseLandscape"

    const/16 v4, 0x8

    const-string v5, "reverseLandscape"

    const/16 v6, 0x8

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 24
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "ReversePortrait"

    const/16 v4, 0x9

    const-string v5, "reversePortrait"

    const/16 v6, 0x9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 25
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "SensorLandscape"

    const/16 v4, 0xa

    const-string v5, "sensorLandscape"

    const/4 v6, 0x6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 26
    new-instance v2, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v3, "SensorPortrait"

    const/16 v4, 0xb

    const-string v5, "sensorPortrait"

    const/4 v6, 0x7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 14
    const/16 v2, 0xc

    new-array v2, v2, [Lcom/google/appinventor/components/common/ScreenOrientation;

    sget-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v3, v2, v9

    sget-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v3, v2, v10

    sget-object v3, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v3, v2, v7

    const/4 v3, 0x5

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenOrientation;->values()[Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v2

    array-length v3, v2

    .local v0, "orientation":Lcom/google/appinventor/components/common/ScreenOrientation;
    :goto_ea
    if-ge v1, v3, :cond_fe

    aget-object v0, v2, v1

    .line 48
    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    .line 50
    :cond_fe
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "val"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->value:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->orientationConst:I

    .line 34
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .registers 3
    .param p0, "orientation"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenOrientation;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method


# virtual methods
.method public getOrientationConstant()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->orientationConst:I

    return v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->value:Ljava/lang/String;

    return-object v0
.end method
