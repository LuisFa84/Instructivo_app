.class public final enum Lcom/google/appinventor/components/common/FileScope;
.super Ljava/lang/Enum;
.source "FileScope.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/FileScope;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/FileScope;

.field public static final enum App:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Asset:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Cache:Lcom/google/appinventor/components/common/FileScope;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Legacy:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Private:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Shared:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "App"

    invoke-direct {v2, v3, v1}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Asset"

    invoke-direct {v2, v3, v5}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 34
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Cache"

    invoke-direct {v2, v3, v6}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    .line 40
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Legacy"

    invoke-direct {v2, v3, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    .line 45
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Private"

    invoke-direct {v2, v3, v8}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 51
    new-instance v2, Lcom/google/appinventor/components/common/FileScope;

    const-string v3, "Shared"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/appinventor/components/common/FileScope;

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->$VALUES:[Lcom/google/appinventor/components/common/FileScope;

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/common/FileScope;->values()[Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    array-length v3, v2

    .local v0, "scope":Lcom/google/appinventor/components/common/FileScope;
    :goto_66
    if-ge v1, v3, :cond_76

    aget-object v0, v2, v1

    .line 57
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 59
    :cond_76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .registers 2
    .param p0, "scope"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileScope;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->$VALUES:[Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
