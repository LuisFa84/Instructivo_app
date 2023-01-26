.class public final enum Lcom/google/appinventor/components/common/PointStyle;
.super Ljava/lang/Enum;
.source "PointStyle.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/PointStyle;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Circle:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Cross:Lcom/google/appinventor/components/common/PointStyle;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/PointStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Square:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Triangle:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum X:Lcom/google/appinventor/components/common/PointStyle;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 12
    new-instance v2, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "Circle"

    invoke-direct {v2, v3, v1, v1}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->Circle:Lcom/google/appinventor/components/common/PointStyle;

    .line 13
    new-instance v2, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "Square"

    invoke-direct {v2, v3, v4, v4}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->Square:Lcom/google/appinventor/components/common/PointStyle;

    .line 14
    new-instance v2, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "Triangle"

    invoke-direct {v2, v3, v5, v5}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->Triangle:Lcom/google/appinventor/components/common/PointStyle;

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "Cross"

    invoke-direct {v2, v3, v6, v6}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->Cross:Lcom/google/appinventor/components/common/PointStyle;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "X"

    invoke-direct {v2, v3, v7, v7}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->X:Lcom/google/appinventor/components/common/PointStyle;

    .line 11
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/appinventor/components/common/PointStyle;

    sget-object v3, Lcom/google/appinventor/components/common/PointStyle;->Circle:Lcom/google/appinventor/components/common/PointStyle;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/PointStyle;->Square:Lcom/google/appinventor/components/common/PointStyle;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/PointStyle;->Triangle:Lcom/google/appinventor/components/common/PointStyle;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/PointStyle;->Cross:Lcom/google/appinventor/components/common/PointStyle;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/PointStyle;->X:Lcom/google/appinventor/components/common/PointStyle;

    aput-object v3, v2, v7

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->$VALUES:[Lcom/google/appinventor/components/common/PointStyle;

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/PointStyle;->values()[Lcom/google/appinventor/components/common/PointStyle;

    move-result-object v2

    array-length v3, v2

    .local v0, "style":Lcom/google/appinventor/components/common/PointStyle;
    :goto_57
    if-ge v1, v3, :cond_67

    aget-object v0, v2, v1

    .line 22
    sget-object v4, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/PointStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 24
    :cond_67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/appinventor/components/common/PointStyle;->value:I

    .line 30
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 38
    sget-object v0, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/PointStyle;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/PointStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/google/appinventor/components/common/PointStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/PointStyle;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/PointStyle;->$VALUES:[Lcom/google/appinventor/components/common/PointStyle;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/PointStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/common/PointStyle;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/PointStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
