.class public final enum Lcom/google/appinventor/components/common/GyroSensorMode;
.super Ljava/lang/Enum;
.source "GyroSensorMode.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/GyroSensorMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/GyroSensorMode;

.field public static final enum Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

.field public static final enum Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/GyroSensorMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intValue:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/GyroSensorMode;

    const-string v3, "Angle"

    const-string v4, "angle"

    invoke-direct {v2, v3, v1, v4, v1}, Lcom/google/appinventor/components/common/GyroSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/GyroSensorMode;

    const-string v3, "Rate"

    const-string v4, "rate"

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/appinventor/components/common/GyroSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 14
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/appinventor/components/common/GyroSensorMode;

    sget-object v3, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/appinventor/components/common/GyroSensorMode;->$VALUES:[Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/GyroSensorMode;->lookup:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/GyroSensorMode;->values()[Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v2

    array-length v3, v2

    .local v0, "mode":Lcom/google/appinventor/components/common/GyroSensorMode;
    :goto_31
    if-ge v1, v3, :cond_41

    aget-object v0, v2, v1

    .line 38
    sget-object v4, Lcom/google/appinventor/components/common/GyroSensorMode;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 40
    :cond_41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "intMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/common/GyroSensorMode;->value:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/google/appinventor/components/common/GyroSensorMode;->intValue:I

    .line 24
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .registers 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/GyroSensorMode;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->$VALUES:[Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/GyroSensorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/GyroSensorMode;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/GyroSensorMode;->value:Ljava/lang/String;

    return-object v0
.end method
