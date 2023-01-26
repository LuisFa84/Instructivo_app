.class public final enum Lcom/google/appinventor/components/common/NxtSensorPort;
.super Ljava/lang/Enum;
.source "NxtSensorPort.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/NxtSensorPort;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtSensorPort;

.field public static final enum Port1:Lcom/google/appinventor/components/common/NxtSensorPort;

.field public static final enum Port2:Lcom/google/appinventor/components/common/NxtSensorPort;

.field public static final enum Port3:Lcom/google/appinventor/components/common/NxtSensorPort;

.field public static final enum Port4:Lcom/google/appinventor/components/common/NxtSensorPort;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/NxtSensorPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intValue:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/NxtSensorPort;

    const-string v3, "Port1"

    const-string v4, "1"

    invoke-direct {v2, v3, v1, v4, v1}, Lcom/google/appinventor/components/common/NxtSensorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->Port1:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/NxtSensorPort;

    const-string v3, "Port2"

    const-string v4, "2"

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/appinventor/components/common/NxtSensorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->Port2:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/NxtSensorPort;

    const-string v3, "Port3"

    const-string v4, "3"

    invoke-direct {v2, v3, v6, v4, v6}, Lcom/google/appinventor/components/common/NxtSensorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->Port3:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/NxtSensorPort;

    const-string v3, "Port4"

    const-string v4, "4"

    invoke-direct {v2, v3, v7, v4, v7}, Lcom/google/appinventor/components/common/NxtSensorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->Port4:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 14
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorPort;->Port1:Lcom/google/appinventor/components/common/NxtSensorPort;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorPort;->Port2:Lcom/google/appinventor/components/common/NxtSensorPort;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorPort;->Port3:Lcom/google/appinventor/components/common/NxtSensorPort;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorPort;->Port4:Lcom/google/appinventor/components/common/NxtSensorPort;

    aput-object v3, v2, v7

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->$VALUES:[Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/NxtSensorPort;->lookup:Ljava/util/Map;

    .line 39
    invoke-static {}, Lcom/google/appinventor/components/common/NxtSensorPort;->values()[Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v2

    array-length v3, v2

    .local v0, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    :goto_51
    if-ge v1, v3, :cond_61

    aget-object v0, v2, v1

    .line 40
    sget-object v4, Lcom/google/appinventor/components/common/NxtSensorPort;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/NxtSensorPort;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 42
    :cond_61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "intPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/appinventor/components/common/NxtSensorPort;->value:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/google/appinventor/components/common/NxtSensorPort;->intValue:I

    .line 26
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;
    .registers 2
    .param p0, "port"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorPort;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorPort;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorPort;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtSensorPort;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorPort;->$VALUES:[Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtSensorPort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtSensorPort;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/appinventor/components/common/NxtSensorPort;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtSensorPort;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/common/NxtSensorPort;->value:Ljava/lang/String;

    return-object v0
.end method
