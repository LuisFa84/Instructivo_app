.class public final Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 15
    .param p0, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 45
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v8, v11, :cond_d

    .line 46
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v10

    .line 104
    :cond_c
    :goto_c
    return v10

    .line 48
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 50
    .local v3, "length":I
    if-ne v3, v9, :cond_1f

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1f

    move v10, v9

    .line 52
    goto :goto_c

    .line 55
    :cond_1f
    const-string v8, "\udb3f\udffd"

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 56
    .local v4, "missingGlyphWidth":F
    const-string v8, "m"

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 58
    .local v1, "emGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 60
    .local v7, "width":F
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_c

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    if-le v8, v9, :cond_5e

    .line 68
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v1

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_c

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "sumWidth":F
    const/4 v2, 0x0

    .line 84
    .local v2, "i":I
    :goto_47
    if-ge v2, v3, :cond_5a

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 86
    .local v0, "charCount":I
    add-int v8, v2, v0

    invoke-virtual {p0, p1, v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    add-float/2addr v6, v8

    .line 87
    add-int/2addr v2, v0

    .line 88
    goto :goto_47

    .line 89
    .end local v0    # "charCount":I
    :cond_5a
    cmpl-float v8, v7, v6

    if-gez v8, :cond_c

    .line 94
    .end local v2    # "i":I
    .end local v6    # "sumWidth":F
    :cond_5e
    cmpl-float v8, v7, v4

    if-eqz v8, :cond_64

    move v10, v9

    .line 96
    goto :goto_c

    .line 101
    :cond_64
    invoke-static {}, Landroidx/core/graphics/PaintCompat;->obtainEmptyRects()Landroidx/core/util/Pair;

    move-result-object v5

    .line 102
    .local v5, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    const-string v11, "\udb3f\udffd"

    const-string v8, "\udb3f\udffd"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v8, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v10, v12, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    iget-object v8, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v10, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    iget-object v8, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    iget-object v11, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    move v8, v9

    :goto_8b
    move v10, v8

    goto :goto_c

    :cond_8d
    move v8, v10

    goto :goto_8b
.end method

.method private static obtainEmptyRects()Landroidx/core/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 109
    .local v0, "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_1f

    .line 110
    new-instance v0, Landroidx/core/util/Pair;

    .end local v0    # "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .restart local v0    # "rects":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    sget-object v1, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    :goto_1e
    return-object v0

    .line 113
    :cond_1f
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 114
    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1e
.end method
