.class public Landroidx/core/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attr"    # I
    .param p2, "fallbackAttr"    # I

    .prologue
    .line 317
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 318
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 319
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_12

    .line 322
    .end local p1    # "attr":I
    :goto_11
    return p1

    .restart local p1    # "attr":I
    :cond_12
    move p1, p2

    goto :goto_11
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;IIZ)Z
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Z

    .prologue
    .line 227
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 228
    .local v0, "val":Z
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, "val":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_a

    .line 240
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    :cond_a
    return-object v0
.end method

.method public static getInt(Landroid/content/res/TypedArray;III)I
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 252
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    return v1
.end method

.method public static getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4, "defaultValue"    # Z

    .prologue
    .line 86
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 87
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 90
    .end local p4    # "defaultValue":Z
    :goto_6
    return p4

    .restart local p4    # "defaultValue":Z
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    goto :goto_6
.end method

.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4, "defaultValue"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 121
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 122
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 125
    .end local p4    # "defaultValue":I
    :goto_6
    return p4

    .restart local p4    # "defaultValue":I
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    goto :goto_6
.end method

.method public static getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;
    .registers 10
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p5, "defaultValue"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-static {p1, p3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 141
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 143
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_21

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_21

    .line 145
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroidx/core/content/res/ComplexColorCompat;->from(I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    .line 153
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_20
    :goto_20
    return-object v0

    .line 149
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_21
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p0, p4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 149
    invoke-static {v2, v3, p2}, Landroidx/core/content/res/ComplexColorCompat;->inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    .line 151
    .local v0, "complexColor":Landroidx/core/content/res/ComplexColorCompat;
    if-nez v0, :cond_20

    .line 153
    .end local v0    # "complexColor":Landroidx/core/content/res/ComplexColorCompat;
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_30
    invoke-static {p5}, Landroidx/core/content/res/ComplexColorCompat;->from(I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v0

    goto :goto_20
.end method

.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4, "defaultValue"    # F

    .prologue
    .line 69
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 70
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 73
    .end local p4    # "defaultValue":F
    :goto_6
    return p4

    .restart local p4    # "defaultValue":F
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    goto :goto_6
.end method

.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4, "defaultValue"    # I

    .prologue
    .line 103
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 104
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 107
    .end local p4    # "defaultValue":I
    :goto_6
    return p4

    .restart local p4    # "defaultValue":I
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    goto :goto_6
.end method

.method public static getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4, "defaultValue"    # I
        .annotation build Landroidx/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyRes;
    .end annotation

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 167
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 170
    .end local p4    # "defaultValue":I
    :goto_6
    return p4

    .restart local p4    # "defaultValue":I
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_6
.end method

.method public static getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, "hasAttr":Z
    if-nez v0, :cond_8

    .line 186
    const/4 v1, 0x0

    .line 188
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I
        .annotation build Landroidx/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyRes;
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 263
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public static getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 275
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_a
    return-object v0
.end method

.method public static getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .local v0, "val":Ljava/lang/CharSequence;
    if-nez v0, :cond_a

    .line 291
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    :cond_a
    return-object v0
.end method

.method public static getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 306
    .local v0, "val":[Ljava/lang/CharSequence;
    if-nez v0, :cond_a

    .line 307
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 309
    :cond_a
    return-object v0
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "set"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p1, :cond_8

    .line 216
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_7
.end method

.method public static peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    .registers 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resId"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    invoke-static {p1, p2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 201
    .local v0, "hasAttr":Z
    if-nez v0, :cond_8

    .line 202
    const/4 v1, 0x0

    .line 204
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    goto :goto_7
.end method
