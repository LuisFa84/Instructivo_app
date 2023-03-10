.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 71
    const/16 v1, 0xff

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 73
    iput-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 74
    iput-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 89
    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 90
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .local v0, "density":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    .line 96
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    .line 97
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    .line 98
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    .line 100
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    .line 101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    .line 104
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    .line 105
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    .line 107
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    .line 109
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v2, Landroidx/viewpager/widget/PagerTabStrip$1;

    invoke-direct {v2, p0}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 118
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v2, Landroidx/viewpager/widget/PagerTabStrip$2;

    invoke-direct {v2, p0}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_a8

    .line 126
    iput-boolean v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 128
    :cond_a8
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .registers 3

    .prologue
    .line 223
    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, 0xffffff

    .line 265
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v7

    .line 268
    .local v7, "height":I
    move v6, v7

    .line 269
    .local v6, "bottom":I
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int v8, v0, v1

    .line 270
    .local v8, "left":I
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int v9, v0, v1

    .line 271
    .local v9, "right":I
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v10, v6, v0

    .line 273
    .local v10, "top":I
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v6

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v0, :cond_64

    .line 277
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    .line 279
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 229
    .local v0, "action":I
    if-eqz v0, :cond_d

    iget-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v5, :cond_d

    .line 260
    :goto_c
    return v3

    .line 235
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 236
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 237
    .local v2, "y":F
    packed-switch v0, :pswitch_data_7a

    :cond_18
    :goto_18
    move v3, v4

    .line 260
    goto :goto_c

    .line 239
    :pswitch_1a
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    .line 240
    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    .line 241
    iput-boolean v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_18

    .line 245
    :pswitch_21
    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_3f

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    sub-float v3, v2, v3

    .line 246
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    .line 247
    :cond_3f
    iput-boolean v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_18

    .line 252
    :pswitch_42
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5e

    .line 253
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_18

    .line 254
    :cond_5e
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_18

    .line 255
    iget-object v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_18

    .line 237
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_42
        :pswitch_21
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    .line 185
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_f

    .line 186
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 188
    :cond_f
    return-void

    .line 186
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_c

    .line 178
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 180
    :cond_c
    return-void

    .line 178
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    .line 193
    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_c

    .line 194
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 196
    :cond_c
    return-void

    .line 194
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDrawFullUnderline(Z)V
    .registers 3
    .param p1, "drawFull"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 207
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 208
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 160
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v0, :cond_6

    .line 161
    iget p4, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    .line 163
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    .line 164
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .registers 4
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 136
    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 137
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    .line 139
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 147
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 148
    return-void
.end method

.method public setTextSpacing(I)V
    .registers 3
    .param p1, "textSpacing"    # I

    .prologue
    .line 168
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_6

    .line 169
    iget p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    .line 171
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    .line 172
    return-void
.end method

.method updateTextPositions(IFZ)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .prologue
    .line 285
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 286
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v0

    .line 287
    .local v0, "bottom":I
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    .line 288
    .local v1, "left":I
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    .line 289
    .local v3, "right":I
    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v4, v0, v5

    .line 291
    .local v4, "top":I
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 294
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    .line 296
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    .line 297
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    .line 298
    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 300
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 301
    return-void
.end method
