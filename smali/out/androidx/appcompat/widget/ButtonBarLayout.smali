.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I

.field private mMinimumHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 51
    sget-object v1, Landroidx/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 140
    move v1, p1

    .local v1, "i":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 141
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 145
    .end local v1    # "i":I
    :goto_11
    return v1

    .line 140
    .restart local v1    # "i":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 145
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method private isStacked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 6
    .param p1, "stacked"    # Z

    .prologue
    .line 154
    if-eqz p1, :cond_2d

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setOrientation(I)V

    .line 155
    if-eqz p1, :cond_2f

    const/4 v3, 0x5

    :goto_9
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setGravity(I)V

    .line 157
    sget v3, Landroidx/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1b

    .line 159
    if-eqz p1, :cond_32

    const/16 v3, 0x8

    :goto_18
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1b
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 165
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 166
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 165
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 154
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_3

    .line 155
    :cond_2f
    const/16 v3, 0x50

    goto :goto_9

    .line 159
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_32
    const/4 v3, 0x4

    goto :goto_18

    .line 168
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .registers 3

    .prologue
    .line 150
    iget v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 70
    .local v11, "widthSize":I
    iget-boolean v12, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v12, :cond_18

    .line 71
    iget v12, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v11, v12, :cond_16

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 73
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 76
    :cond_16
    iput v11, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 79
    :cond_18
    const/4 v8, 0x0

    .line 85
    .local v8, "needsRemeasure":Z
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-nez v12, :cond_a8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_a8

    .line 86
    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 89
    .local v4, "initialWidthMeasureSpec":I
    const/4 v8, 0x1

    .line 94
    :goto_2e
    move/from16 v0, p2

    invoke-super {p0, v4, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    iget-boolean v12, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v12, :cond_51

    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-nez v12, :cond_51

    .line 99
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v5

    .line 100
    .local v5, "measuredWidth":I
    const/high16 v12, -0x1000000

    and-int v6, v5, v12

    .line 101
    .local v6, "measuredWidthState":I
    const/high16 v12, 0x1000000

    if-ne v6, v12, :cond_ab

    const/4 v10, 0x1

    .line 103
    .local v10, "stack":Z
    :goto_4a
    if-eqz v10, :cond_51

    .line 104
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 106
    const/4 v8, 0x1

    .line 110
    .end local v5    # "measuredWidth":I
    .end local v6    # "measuredWidthState":I
    .end local v10    # "stack":Z
    :cond_51
    if-eqz v8, :cond_56

    .line 111
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 116
    :cond_56
    const/4 v7, 0x0

    .line 117
    .local v7, "minHeight":I
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v3

    .line 118
    .local v3, "firstVisible":I
    if-ltz v3, :cond_9e

    .line 119
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "firstButton":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .local v2, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 123
    invoke-direct {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->isStacked()Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 124
    add-int/lit8 v12, v3, 0x1

    invoke-direct {p0, v12}, Landroidx/appcompat/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v9

    .line 125
    .local v9, "secondVisible":I
    if-ltz v9, :cond_9e

    .line 126
    invoke-virtual {p0, v9}, Landroidx/appcompat/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    const/high16 v13, 0x41800000    # 16.0f

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    .line 134
    .end local v1    # "firstButton":Landroid/view/View;
    .end local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "secondVisible":I
    :cond_9e
    :goto_9e
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v12

    if-eq v12, v7, :cond_a7

    .line 135
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 137
    :cond_a7
    return-void

    .line 91
    .end local v3    # "firstVisible":I
    .end local v4    # "initialWidthMeasureSpec":I
    .end local v7    # "minHeight":I
    :cond_a8
    move/from16 v4, p1

    .restart local v4    # "initialWidthMeasureSpec":I
    goto :goto_2e

    .line 101
    .restart local v5    # "measuredWidth":I
    .restart local v6    # "measuredWidthState":I
    :cond_ab
    const/4 v10, 0x0

    goto :goto_4a

    .line 130
    .end local v5    # "measuredWidth":I
    .end local v6    # "measuredWidthState":I
    .restart local v1    # "firstButton":Landroid/view/View;
    .restart local v2    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "firstVisible":I
    .restart local v7    # "minHeight":I
    :cond_ad
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_9e
.end method

.method public setAllowStacking(Z)V
    .registers 4
    .param p1, "allowStacking"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 58
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 59
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 62
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/widget/ButtonBarLayout;->requestLayout()V

    .line 64
    :cond_18
    return-void
.end method
