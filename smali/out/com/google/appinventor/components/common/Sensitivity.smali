.class public final enum Lcom/google/appinventor/components/common/Sensitivity;
.super Ljava/lang/Enum;
.source "Sensitivity.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/Sensitivity;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/Sensitivity;

.field public static final enum Moderate:Lcom/google/appinventor/components/common/Sensitivity;

.field public static final enum Strong:Lcom/google/appinventor/components/common/Sensitivity;

.field public static final enum Weak:Lcom/google/appinventor/components/common/Sensitivity;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/Sensitivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/Sensitivity;

    const-string v3, "Weak"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Sensitivity;->Weak:Lcom/google/appinventor/components/common/Sensitivity;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/Sensitivity;

    const-string v3, "Moderate"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Sensitivity;->Moderate:Lcom/google/appinventor/components/common/Sensitivity;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/Sensitivity;

    const-string v3, "Strong"

    invoke-direct {v2, v3, v5, v6}, Lcom/google/appinventor/components/common/Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Sensitivity;->Strong:Lcom/google/appinventor/components/common/Sensitivity;

    .line 14
    new-array v2, v6, [Lcom/google/appinventor/components/common/Sensitivity;

    sget-object v3, Lcom/google/appinventor/components/common/Sensitivity;->Weak:Lcom/google/appinventor/components/common/Sensitivity;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/Sensitivity;->Moderate:Lcom/google/appinventor/components/common/Sensitivity;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/Sensitivity;->Strong:Lcom/google/appinventor/components/common/Sensitivity;

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/appinventor/components/common/Sensitivity;->$VALUES:[Lcom/google/appinventor/components/common/Sensitivity;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/Sensitivity;->lookup:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/google/appinventor/components/common/Sensitivity;->values()[Lcom/google/appinventor/components/common/Sensitivity;

    move-result-object v2

    array-length v3, v2

    .local v0, "sensitivity":Lcom/google/appinventor/components/common/Sensitivity;
    :goto_3b
    if-ge v1, v3, :cond_4b

    aget-object v0, v2, v1

    .line 33
    sget-object v4, Lcom/google/appinventor/components/common/Sensitivity;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Sensitivity;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 35
    :cond_4b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "sensitivity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/appinventor/components/common/Sensitivity;->value:I

    .line 23
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Sensitivity;
    .registers 2
    .param p0, "sensitivity"    # Ljava/lang/Integer;

    .prologue
    .line 38
    sget-object v0, Lcom/google/appinventor/components/common/Sensitivity;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Sensitivity;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Sensitivity;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Sensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Sensitivity;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Sensitivity;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Sensitivity;->$VALUES:[Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Sensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Sensitivity;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/google/appinventor/components/common/Sensitivity;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Sensitivity;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
