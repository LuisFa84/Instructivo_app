.class public abstract Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WrappedDrawableApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/WrappedDrawableApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "orig"    # Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 361
    sget-object v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 364
    if-eqz p1, :cond_1c

    .line 365
    iget v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iput v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 366
    iget-object v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 367
    iget-object v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 368
    iget-object v0, p1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 370
    :cond_1c
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 384
    iget v1, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 385
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    :goto_c
    or-int/2addr v0, v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
