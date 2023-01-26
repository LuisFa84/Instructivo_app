.class public final enum Lcom/google/appinventor/components/common/LineType;
.super Ljava/lang/Enum;
.source "LineType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/LineType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/LineType;

.field public static final enum Curved:Lcom/google/appinventor/components/common/LineType;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/LineType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Linear:Lcom/google/appinventor/components/common/LineType;

.field public static final enum Stepped:Lcom/google/appinventor/components/common/LineType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 12
    new-instance v2, Lcom/google/appinventor/components/common/LineType;

    const-string v3, "Linear"

    invoke-direct {v2, v3, v1, v1}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/LineType;->Linear:Lcom/google/appinventor/components/common/LineType;

    .line 13
    new-instance v2, Lcom/google/appinventor/components/common/LineType;

    const-string v3, "Curved"

    invoke-direct {v2, v3, v4, v4}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/LineType;->Curved:Lcom/google/appinventor/components/common/LineType;

    .line 14
    new-instance v2, Lcom/google/appinventor/components/common/LineType;

    const-string v3, "Stepped"

    invoke-direct {v2, v3, v5, v5}, Lcom/google/appinventor/components/common/LineType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/LineType;->Stepped:Lcom/google/appinventor/components/common/LineType;

    .line 11
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/appinventor/components/common/LineType;

    sget-object v3, Lcom/google/appinventor/components/common/LineType;->Linear:Lcom/google/appinventor/components/common/LineType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/LineType;->Curved:Lcom/google/appinventor/components/common/LineType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/LineType;->Stepped:Lcom/google/appinventor/components/common/LineType;

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/appinventor/components/common/LineType;->$VALUES:[Lcom/google/appinventor/components/common/LineType;

    .line 16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/google/appinventor/components/common/LineType;->values()[Lcom/google/appinventor/components/common/LineType;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/google/appinventor/components/common/LineType;
    :goto_3b
    if-ge v1, v3, :cond_4b

    aget-object v0, v2, v1

    .line 20
    sget-object v4, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/LineType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 22
    :cond_4b
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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/LineType;->value:I

    .line 28
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LineType;
    .registers 2
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 36
    sget-object v0, Lcom/google/appinventor/components/common/LineType;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LineType;

    return-object v0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/LineType;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/LineType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LineType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LineType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/google/appinventor/components/common/LineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LineType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LineType;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/LineType;->$VALUES:[Lcom/google/appinventor/components/common/LineType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LineType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/appinventor/components/common/LineType;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LineType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
