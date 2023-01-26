.class public final enum Lcom/google/appinventor/components/common/NxtMotorMode;
.super Ljava/lang/Enum;
.source "NxtMotorMode.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/NxtMotorMode;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum Coast:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum On:Lcom/google/appinventor/components/common/NxtMotorMode;

.field public static final enum Regulated:Lcom/google/appinventor/components/common/NxtMotorMode;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtMotorMode;",
            ">;"
        }
    .end annotation
.end field


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

    .line 21
    new-instance v2, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v3, "On"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 22
    new-instance v2, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v3, "Brake"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v3, "Regulated"

    invoke-direct {v2, v3, v5, v7}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->Regulated:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 25
    new-instance v2, Lcom/google/appinventor/components/common/NxtMotorMode;

    const-string v3, "Coast"

    invoke-direct {v2, v3, v6, v1}, Lcom/google/appinventor/components/common/NxtMotorMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->Coast:Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 20
    new-array v2, v7, [Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v3, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/NxtMotorMode;->Regulated:Lcom/google/appinventor/components/common/NxtMotorMode;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/NxtMotorMode;->Coast:Lcom/google/appinventor/components/common/NxtMotorMode;

    aput-object v3, v2, v6

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->$VALUES:[Lcom/google/appinventor/components/common/NxtMotorMode;

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMotorMode;->lookup:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/google/appinventor/components/common/NxtMotorMode;->values()[Lcom/google/appinventor/components/common/NxtMotorMode;

    move-result-object v2

    array-length v3, v2

    .local v0, "mode":Lcom/google/appinventor/components/common/NxtMotorMode;
    :goto_49
    if-ge v1, v3, :cond_59

    aget-object v0, v2, v1

    .line 41
    sget-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 43
    :cond_59
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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/google/appinventor/components/common/NxtMotorMode;->value:I

    .line 31
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMotorMode;
    .registers 2
    .param p0, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 46
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/google/appinventor/components/common/NxtMotorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtMotorMode;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorMode;->$VALUES:[Lcom/google/appinventor/components/common/NxtMotorMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtMotorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtMotorMode;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/appinventor/components/common/NxtMotorMode;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtMotorMode;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
