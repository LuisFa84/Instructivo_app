.class public final enum Lcom/google/appinventor/components/common/ScreenAnimation;
.super Ljava/lang/Enum;
.source "ScreenAnimation.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/ScreenAnimation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Default:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum None:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "Default"

    const-string v4, "default"

    invoke-direct {v2, v3, v1, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 17
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "Fade"

    const-string v4, "fade"

    invoke-direct {v2, v3, v6, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 18
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "Zoom"

    const-string v4, "zoom"

    invoke-direct {v2, v3, v7, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 19
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "SlideHorizontal"

    const-string v4, "slidehorizontal"

    invoke-direct {v2, v3, v8, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 20
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "SlideVertical"

    const-string v4, "slidevertical"

    invoke-direct {v2, v3, v9, v4}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 21
    new-instance v2, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v3, "None"

    const/4 v4, 0x5

    const-string v5, "none"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 15
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/appinventor/components/common/ScreenAnimation;

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v2, v1

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v2

    array-length v3, v2

    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    :goto_72
    if-ge v1, v3, :cond_82

    aget-object v0, v2, v1

    .line 37
    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 39
    :cond_82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "anim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->value:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .registers 2
    .param p0, "anim"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenAnimation;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->value:Ljava/lang/String;

    return-object v0
.end method
