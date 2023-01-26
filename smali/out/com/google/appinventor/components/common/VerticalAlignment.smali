.class public final enum Lcom/google/appinventor/components/common/VerticalAlignment;
.super Ljava/lang/Enum;
.source "VerticalAlignment.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/VerticalAlignment;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/VerticalAlignment;

.field public static final enum Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

.field public static final enum Center:Lcom/google/appinventor/components/common/VerticalAlignment;

.field public static final enum Top:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/VerticalAlignment;",
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

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v3, "Top"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v3, "Center"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->Center:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/VerticalAlignment;

    const-string v3, "Bottom"

    invoke-direct {v2, v3, v5, v6}, Lcom/google/appinventor/components/common/VerticalAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 15
    new-array v2, v6, [Lcom/google/appinventor/components/common/VerticalAlignment;

    sget-object v3, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/VerticalAlignment;->Center:Lcom/google/appinventor/components/common/VerticalAlignment;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/appinventor/components/common/VerticalAlignment;->Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->$VALUES:[Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->lookup:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/VerticalAlignment;->values()[Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v2

    array-length v3, v2

    .local v0, "alignment":Lcom/google/appinventor/components/common/VerticalAlignment;
    :goto_3b
    if-ge v1, v3, :cond_4b

    aget-object v0, v2, v1

    .line 34
    sget-object v4, Lcom/google/appinventor/components/common/VerticalAlignment;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 36
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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/appinventor/components/common/VerticalAlignment;->value:I

    .line 24
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;
    .registers 2
    .param p0, "alignment"    # Ljava/lang/Integer;

    .prologue
    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/VerticalAlignment;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/VerticalAlignment;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/VerticalAlignment;->$VALUES:[Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/appinventor/components/common/VerticalAlignment;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
