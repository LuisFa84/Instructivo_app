.class public final enum Lcom/google/appinventor/components/common/TransportMethod;
.super Ljava/lang/Enum;
.source "TransportMethod.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/TransportMethod;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Car:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Foot:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/TransportMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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
    new-instance v2, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "Foot"

    const-string v4, "foot-walking"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "Car"

    const-string v4, "driving-car"

    invoke-direct {v2, v3, v5, v4}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "Bicycle"

    const-string v4, "cycling-regular"

    invoke-direct {v2, v3, v6, v4}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v3, "Wheelchair"

    const-string v4, "wheelchair"

    invoke-direct {v2, v3, v7, v4}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    .line 14
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/appinventor/components/common/TransportMethod;

    sget-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v3, v2, v7

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->$VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/TransportMethod;->values()[Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v2

    array-length v3, v2

    .local v0, "method":Lcom/google/appinventor/components/common/TransportMethod;
    :goto_51
    if-ge v1, v3, :cond_61

    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 36
    :cond_61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/TransportMethod;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/TransportMethod;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->$VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/TransportMethod;->value:Ljava/lang/String;

    return-object v0
.end method
