.class public final enum Lcom/google/appinventor/components/common/ColorSensorMode;
.super Ljava/lang/Enum;
.source "ColorSensorMode.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ColorSensorMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ColorSensorMode;

.field public static final enum Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

.field public static final enum Color:Lcom/google/appinventor/components/common/ColorSensorMode;

.field public static final enum Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ColorSensorMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intValue:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v3, "Reflected"

    const-string v4, "reflected"

    invoke-direct {v2, v3, v1, v4, v1}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v3, "Ambient"

    const-string v4, "ambient"

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v3, "Color"

    const-string v4, "color"

    invoke-direct {v2, v3, v6, v4, v6}, Lcom/google/appinventor/components/common/ColorSensorMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 14
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    aput-object v3, v2, v6

    sput-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->$VALUES:[Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->lookup:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/google/appinventor/components/common/ColorSensorMode;->values()[Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v2

    array-length v3, v2

    .local v0, "mode":Lcom/google/appinventor/components/common/ColorSensorMode;
    :goto_41
    if-ge v1, v3, :cond_51

    aget-object v0, v2, v1

    .line 39
    sget-object v4, Lcom/google/appinventor/components/common/ColorSensorMode;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 41
    :cond_51
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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->value:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->intValue:I

    .line 25
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .registers 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ColorSensorMode;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->$VALUES:[Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ColorSensorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/ColorSensorMode;->value:Ljava/lang/String;

    return-object v0
.end method
