.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static final VECTOR_DRAWABLE_CLAZZ_NAME:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_15

    .line 55
    :try_start_d
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_15} :catch_16

    .line 60
    :cond_15
    :goto_15
    return-void

    .line 56
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xf

    const/4 v3, 0x0

    .line 129
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_c

    instance-of v4, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v4, :cond_c

    .line 163
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    :goto_b
    return v3

    .line 131
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_14

    instance-of v4, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_b

    .line 135
    :cond_14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1e

    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v4, :cond_b

    .line 139
    :cond_1e
    instance-of v4, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_40

    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 142
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v4, v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v4, :cond_6d

    move-object v1, v2

    .line 143
    check-cast v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 145
    .local v1, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_33
    if-ge v4, v6, :cond_6d

    aget-object v0, v5, v4

    .line 146
    .local v0, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 151
    .end local v0    # "child":Landroid/graphics/drawable/Drawable;
    .end local v1    # "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_40
    instance-of v3, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v3, :cond_4f

    .line 152
    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 154
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_b

    .line 155
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4f
    instance-of v3, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v3, :cond_5e

    .line 156
    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    .line 158
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 156
    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_b

    .line 159
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5e
    instance-of v3, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_6d

    .line 160
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    goto :goto_b

    .line 163
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6d
    const/4 v3, 0x1

    goto :goto_b
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_19

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 120
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_19
    return-void
.end method

.method private static fixVectorDrawableTinting(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 172
    .local v0, "originalState":[I
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_12

    .line 174
    :cond_9
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 180
    :goto_e
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    return-void

    .line 177
    :cond_12
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_e
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 13
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 69
    sget-object v5, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v5, :cond_7a

    .line 73
    :try_start_5
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getOpticalInsets"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 77
    .local v2, "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    .local v3, "insets":Ljava/lang/Object;
    if-eqz v3, :cond_7a

    .line 81
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v4, "result":Landroid/graphics/Rect;
    sget-object v5, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_2c
    if-ge v7, v9, :cond_7c

    aget-object v1, v8, v7

    .line 84
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v5, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_92

    :cond_3c
    :goto_3c
    packed-switch v5, :pswitch_data_a4

    .line 83
    :goto_3f
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2c

    .line 84
    :sswitch_43
    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    move v5, v6

    goto :goto_3c

    :sswitch_4d
    const-string v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v5, 0x1

    goto :goto_3c

    :sswitch_57
    const-string v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v5, 0x2

    goto :goto_3c

    :sswitch_61
    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v5, 0x3

    goto :goto_3c

    .line 86
    :pswitch_6b
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_72

    goto :goto_3f

    .line 101
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "insets":Ljava/lang/Object;
    .end local v4    # "result":Landroid/graphics/Rect;
    :catch_72
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DrawableUtils"

    const-string v6, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7a
    sget-object v4, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_7c
    return-object v4

    .line 89
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "getOpticalInsetsMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "insets":Ljava/lang/Object;
    .restart local v4    # "result":Landroid/graphics/Rect;
    :pswitch_7d
    :try_start_7d
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_3f

    .line 92
    :pswitch_84
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_3f

    .line 95
    :pswitch_8b
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_91} :catch_72

    goto :goto_3f

    .line 84
    :sswitch_data_92
    .sparse-switch
        -0x527265d5 -> :sswitch_61
        0x1c155 -> :sswitch_4d
        0x32a007 -> :sswitch_43
        0x677c21c -> :sswitch_57
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_7d
        :pswitch_84
        :pswitch_8b
    .end packed-switch
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_16

    .line 194
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_3
    :pswitch_3
    return-object p1

    .line 188
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 189
    :pswitch_7
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 190
    :pswitch_a
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 191
    :pswitch_d
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 192
    :pswitch_10
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 193
    :pswitch_13
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 187
    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method
