.class public final enum Lcom/google/appinventor/components/common/StartedStatus;
.super Ljava/lang/Enum;
.source "StartedStatus.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/StartedStatus;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/StartedStatus;

.field public static final enum Incoming:Lcom/google/appinventor/components/common/StartedStatus;

.field public static final enum Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/StartedStatus;",
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

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/StartedStatus;

    const-string v3, "Incoming"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/StartedStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/StartedStatus;

    const-string v3, "Outgoing"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/StartedStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    .line 14
    new-array v2, v5, [Lcom/google/appinventor/components/common/StartedStatus;

    sget-object v3, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    aput-object v3, v2, v4

    sput-object v2, Lcom/google/appinventor/components/common/StartedStatus;->$VALUES:[Lcom/google/appinventor/components/common/StartedStatus;

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/StartedStatus;->lookup:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/google/appinventor/components/common/StartedStatus;->values()[Lcom/google/appinventor/components/common/StartedStatus;

    move-result-object v2

    array-length v3, v2

    .local v0, "status":Lcom/google/appinventor/components/common/StartedStatus;
    :goto_2d
    if-ge v1, v3, :cond_3d

    aget-object v0, v2, v1

    .line 32
    sget-object v4, Lcom/google/appinventor/components/common/StartedStatus;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/StartedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 34
    :cond_3d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/appinventor/components/common/StartedStatus;->value:I

    .line 22
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StartedStatus;
    .registers 2
    .param p0, "status"    # Ljava/lang/Integer;

    .prologue
    .line 37
    sget-object v0, Lcom/google/appinventor/components/common/StartedStatus;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/StartedStatus;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/StartedStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/StartedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/StartedStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/StartedStatus;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/StartedStatus;->$VALUES:[Lcom/google/appinventor/components/common/StartedStatus;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/StartedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/StartedStatus;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/common/StartedStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/StartedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
