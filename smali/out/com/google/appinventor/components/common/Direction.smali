.class public final enum Lcom/google/appinventor/components/common/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/Direction;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/Direction;

.field public static final enum East:Lcom/google/appinventor/components/common/Direction;

.field public static final enum North:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum South:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum West:Lcom/google/appinventor/components/common/Direction;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/Direction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 15
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "North"

    invoke-direct {v2, v3, v1, v6}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "Northeast"

    invoke-direct {v2, v3, v6, v7}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "East"

    invoke-direct {v2, v3, v7, v8}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "Southeast"

    invoke-direct {v2, v3, v8, v9}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    .line 19
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "South"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v9, v4}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    .line 20
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "Southwest"

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    .line 21
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "West"

    const/4 v4, 0x6

    const/4 v5, -0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    .line 22
    new-instance v2, Lcom/google/appinventor/components/common/Direction;

    const-string v3, "Northwest"

    const/4 v4, 0x7

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    .line 14
    const/16 v2, 0x8

    new-array v2, v2, [Lcom/google/appinventor/components/common/Direction;

    sget-object v3, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->$VALUES:[Lcom/google/appinventor/components/common/Direction;

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/Direction;->values()[Lcom/google/appinventor/components/common/Direction;

    move-result-object v2

    array-length v3, v2

    .local v0, "dir":Lcom/google/appinventor/components/common/Direction;
    :goto_89
    if-ge v1, v3, :cond_99

    aget-object v0, v2, v1

    .line 38
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 40
    :cond_99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "dir"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/Direction;->value:I

    .line 28
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;
    .registers 2
    .param p0, "dir"    # Ljava/lang/Integer;

    .prologue
    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Direction;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->$VALUES:[Lcom/google/appinventor/components/common/Direction;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/Direction;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
