.class Landroidx/appcompat/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private final mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 42
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 43
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 44
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 173
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    if-nez v4, :cond_c

    .line 174
    new-instance v4, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 176
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 177
    .local v0, "info":Landroidx/appcompat/widget/TintInfo;
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintInfo;->clear()V

    .line 179
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 180
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1d

    .line 181
    iput-boolean v3, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 182
    iput-object v2, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 184
    :cond_1d
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 185
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_29

    .line 186
    iput-boolean v3, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 187
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 190
    :cond_29
    iget-boolean v4, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_31

    iget-boolean v4, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_3b

    .line 191
    :cond_31
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 195
    :goto_3a
    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .local v0, "sdk":I
    if-le v0, v3, :cond_f

    .line 155
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v3, :cond_d

    .line 163
    :cond_c
    :goto_c
    return v1

    :cond_d
    move v1, v2

    .line 155
    goto :goto_c

    .line 156
    :cond_f
    if-eq v0, v3, :cond_c

    move v1, v2

    .line 163
    goto :goto_c
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .registers 4

    .prologue
    .line 118
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 120
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 135
    :cond_14
    :goto_14
    return-void

    .line 127
    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_25

    .line 128
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_14

    .line 130
    :cond_25
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_14

    .line 131
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_14
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 47
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, p2, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    :try_start_d
    sget v2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 51
    sget v2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 53
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 55
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_31

    .line 56
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 59
    .end local v1    # "tint":Landroid/content/res/ColorStateList;
    :cond_31
    sget v2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 60
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 61
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_44
    sget v2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 64
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v4, -0x1

    .line 66
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 65
    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_61

    .line 70
    :cond_5d
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 72
    return-void

    .line 70
    :catchall_61
    move-exception v2

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    throw v2
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 88
    return-void
.end method

.method onSetBackgroundResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 75
    iput p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 77
    :goto_12
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 81
    return-void

    .line 78
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 138
    if-eqz p1, :cond_1a

    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_d

    .line 140
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 142
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 143
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 147
    :goto_16
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 148
    return-void

    .line 145
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    goto :goto_16
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 92
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 94
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 95
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 97
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 104
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    .line 107
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 111
    return-void
.end method
