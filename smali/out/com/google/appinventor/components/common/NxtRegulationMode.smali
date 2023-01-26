.class public final enum Lcom/google/appinventor/components/common/NxtRegulationMode;
.super Ljava/lang/Enum;
.source "NxtRegulationMode.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/NxtRegulationMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtRegulationMode;

.field public static final enum Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field public static final enum Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtRegulationMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v3, "Disabled"

    invoke-direct {v2, v3, v1, v1}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 24
    new-instance v2, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v3, "Speed"

    invoke-direct {v2, v3, v4, v4}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 26
    new-instance v2, Lcom/google/appinventor/components/common/NxtRegulationMode;

    const-string v3, "Synchronization"

    invoke-direct {v2, v3, v5, v5}, Lcom/google/appinventor/components/common/NxtRegulationMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtRegulationMode;->Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 22
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v3, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/NxtRegulationMode;->Synchronization:Lcom/google/appinventor/components/common/NxtRegulationMode;

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/appinventor/components/common/NxtRegulationMode;->$VALUES:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/NxtRegulationMode;->lookup:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/google/appinventor/components/common/NxtRegulationMode;->values()[Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v2

    array-length v3, v2

    .local v0, "mode":Lcom/google/appinventor/components/common/NxtRegulationMode;
    :goto_3b
    if-ge v1, v3, :cond_4b

    aget-object v0, v2, v1

    .line 42
    sget-object v4, Lcom/google/appinventor/components/common/NxtRegulationMode;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 44
    :cond_4b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->value:I

    .line 32
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .registers 2
    .param p0, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 47
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtRegulationMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtRegulationMode;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/appinventor/components/common/NxtRegulationMode;->$VALUES:[Lcom/google/appinventor/components/common/NxtRegulationMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtRegulationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtRegulationMode;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/common/NxtRegulationMode;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtRegulationMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
