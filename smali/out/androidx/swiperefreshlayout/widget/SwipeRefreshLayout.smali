.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 341
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
    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 114
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 122
    new-array v2, v6, [I

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 123
    new-array v2, v6, [I

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 132
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 145
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 178
    new-instance v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1117
    new-instance v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1141
    new-instance v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 352
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 354
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 357
    invoke-virtual {p0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 358
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 360
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 361
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42200000    # 40.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 363
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->createProgressView()V

    .line 364
    invoke-virtual {p0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 366
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 367
    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 368
    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 370
    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 371
    invoke-virtual {p0, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 373
    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 374
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 376
    sget-object v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 378
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1089
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1090
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1091
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1092
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1093
    if-eqz p2, :cond_1c

    .line 1094
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1096
    :cond_1c
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1097
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1098
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1101
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_8

    .line 1103
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1115
    :goto_7
    return-void

    .line 1105
    :cond_8
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1106
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1107
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1108
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1109
    if-eqz p2, :cond_24

    .line 1110
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1112
    :cond_24
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1113
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method private createProgressView()V
    .registers 4

    .prologue
    .line 398
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    .line 399
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 400
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 401
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method private ensureTarget()V
    .registers 4

    .prologue
    .line 587
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_19

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 589
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 591
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 596
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_19
    return-void

    .line 588
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private finishSpinner(F)V
    .registers 7
    .param p1, "overscrollTop"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 968
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_d

    .line 969
    invoke-direct {p0, v4, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 998
    :goto_c
    return-void

    .line 972
    :cond_d
    iput-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 973
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1e

    .line 976
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;

    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 995
    .restart local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1e
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 996
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    goto :goto_c
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 912
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private moveSpinner(F)V
    .registers 22
    .param p1, "overscrollTop"    # F

    .prologue
    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 917
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v13

    .line 919
    .local v6, "originalDragPercent":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 920
    .local v3, "dragPercent":F
    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    .line 921
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v5, v13, v14

    .line 922
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    if-lez v13, :cond_120

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    int-to-float v8, v13

    .line 927
    .local v8, "slingshotDist":F
    :goto_43
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 929
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    .line 931
    .local v11, "tensionPercent":F
    mul-float v13, v8, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v4, v13, v14

    .line 933
    .local v4, "extraMove":F
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    add-int v10, v13, v14

    .line 935
    .local v10, "targetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v13}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_8b

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 938
    :cond_8b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v13, :cond_a3

    .line 939
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 943
    :cond_a3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v13, :cond_ba

    .line 944
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v14, p1, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 946
    :cond_ba
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_137

    .line 947
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-le v13, v14, :cond_dd

    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 948
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_dd

    .line 950
    invoke-direct/range {p0 .. p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 958
    :cond_dd
    :goto_dd
    const v13, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v13

    .line 959
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v14, 0x0

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 960
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 962
    const/high16 v13, -0x41800000    # -0.25f

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 963
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v13, v7}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 964
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v13, v10, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 965
    return-void

    .line 922
    .end local v4    # "extraMove":F
    .end local v7    # "rotation":F
    .end local v8    # "slingshotDist":F
    .end local v9    # "strokeStart":F
    .end local v10    # "targetY":I
    .end local v11    # "tensionPercent":F
    .end local v12    # "tensionSlingshotPercent":F
    :cond_120
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v13, :cond_132

    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    move-object/from16 v0, p0

    iget v14, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v13, v14

    :goto_12f
    int-to-float v8, v13

    goto/16 :goto_43

    :cond_132
    move-object/from16 v0, p0

    iget v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_12f

    .line 953
    .restart local v4    # "extraMove":F
    .restart local v8    # "slingshotDist":F
    .restart local v10    # "targetY":I
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "tensionSlingshotPercent":F
    :cond_137
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v13}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_dd

    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_dd

    .line 955
    invoke-direct/range {p0 .. p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_dd
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1176
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1177
    .local v1, "pointerId":I
    iget v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_15

    .line 1180
    if-nez v2, :cond_16

    const/4 v0, 0x1

    .line 1181
    .local v0, "newPointerIndex":I
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1183
    .end local v0    # "newPointerIndex":I
    :cond_15
    return-void

    .line 1180
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setColorViewAlpha(I)V
    .registers 3
    .param p1, "targetAlpha"    # I

    .prologue
    .line 234
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 236
    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 5
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 465
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_16

    .line 466
    iput-boolean p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 467
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 468
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 469
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_17

    .line 470
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 475
    :cond_16
    :goto_16
    return-void

    .line 472
    :cond_17
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    .line 499
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    .line 506
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 508
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 509
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 510
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 511
    return-object v0
.end method

.method private startDragging(F)V
    .registers 5
    .param p1, "y"    # F

    .prologue
    .line 1080
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v1

    .line 1081
    .local v0, "yDiff":F
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_21

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_21

    .line 1082
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1083
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1084
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1086
    :cond_21
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 496
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 492
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1150
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    .line 1151
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1152
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$8;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1160
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1161
    if-eqz p2, :cond_1f

    .line 1162
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1164
    :cond_1f
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 1165
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1166
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 439
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 441
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$2;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 447
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 448
    if-eqz p1, :cond_23

    .line 449
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 451
    :cond_23
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 452
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 672
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_e

    .line 673
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    .line 678
    :goto_d
    return v0

    .line 675
    :cond_e
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1d

    .line 676
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v1}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    goto :goto_d

    .line 678
    :cond_1d
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_d
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 903
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 908
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 885
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 879
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 383
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_5

    .line 393
    .end local p2    # "i":I
    :cond_4
    :goto_4
    return p2

    .line 385
    .restart local p2    # "i":I
    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_c

    .line 387
    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_4

    .line 388
    :cond_c
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_4

    .line 390
    add-int/lit8 p2, p2, 0x1

    goto :goto_4
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .registers 2

    .prologue
    .line 581
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .registers 7
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 1135
    const/4 v1, 0x0

    .line 1136
    .local v1, "targetTop":I
    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    iget v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1137
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1138
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1139
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 230
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 231
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 692
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 697
    .local v0, "action":I
    iget-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v4, :cond_11

    if-nez v0, :cond_11

    .line 698
    iput-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 701
    :cond_11
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_29

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v4

    if-nez v4, :cond_29

    iget-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_29

    iget-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v4, :cond_2a

    .line 745
    :cond_29
    :goto_29
    return v3

    .line 707
    :cond_2a
    packed-switch v0, :pswitch_data_78

    .line 745
    :goto_2d
    :pswitch_2d
    iget-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_29

    .line 709
    :pswitch_30
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 710
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 711
    iput-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 713
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 714
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_29

    .line 717
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_2d

    .line 721
    .end local v1    # "pointerIndex":I
    :pswitch_53
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v4, v5, :cond_5f

    .line 722
    sget-object v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 726
    :cond_5f
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 727
    .restart local v1    # "pointerIndex":I
    if-ltz v1, :cond_29

    .line 730
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 731
    .local v2, "y":F
    invoke-direct {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    goto :goto_2d

    .line 735
    .end local v1    # "pointerIndex":I
    .end local v2    # "y":F
    :pswitch_6f
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2d

    .line 740
    :pswitch_73
    iput-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 741
    iput v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2d

    .line 707
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_30
        :pswitch_73
        :pswitch_53
        :pswitch_73
        :pswitch_2d
        :pswitch_2d
        :pswitch_6f
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 609
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 610
    .local v8, "width":I
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 611
    .local v7, "height":I
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_f

    .line 630
    :cond_e
    :goto_e
    return-void

    .line 614
    :cond_f
    iget-object v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v9, :cond_16

    .line 615
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 617
    :cond_16
    iget-object v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_e

    .line 620
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 621
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 622
    .local v2, "childLeft":I
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 623
    .local v3, "childTop":I
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 624
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 625
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 626
    iget-object v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredWidth()I

    move-result v6

    .line 627
    .local v6, "circleWidth":I
    iget-object v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v9}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getMeasuredHeight()I

    move-result v5

    .line 628
    .local v5, "circleHeight":I
    iget-object v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/swiperefreshlayout/widget/CircleImageView;->layout(IIII)V

    goto :goto_e
.end method

.method public onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 634
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 635
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_c

    .line 636
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 638
    :cond_c
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_11

    .line 655
    :cond_10
    :goto_10
    return-void

    .line 641
    :cond_11
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 642
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 641
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 644
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 643
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 641
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 645
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 646
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 645
    invoke-virtual {v1, v2, v3}, Landroidx/swiperefreshlayout/widget/CircleImageView;->measure(II)V

    .line 647
    const/4 v1, -0x1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 649
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_4f
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 650
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    if-ne v1, v2, :cond_60

    .line 651
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_10

    .line 649
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 898
    invoke-virtual {p0, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 892
    invoke-virtual {p0, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 783
    if-lez p3, :cond_20

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_20

    .line 784
    int-to-float v1, p3

    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5d

    .line 785
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 786
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 791
    :goto_1b
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 798
    :cond_20
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_3d

    if-lez p3, :cond_3d

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3d

    aget v1, p4, v4

    sub-int v1, p3, v1

    .line 799
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_3d

    .line 800
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 804
    :cond_3d
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 805
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 806
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 807
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 809
    :cond_5c
    return-void

    .line 788
    .end local v0    # "parentConsumed":[I
    :cond_5d
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 789
    aput p3, p4, v4

    goto :goto_1b
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 834
    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 842
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    .line 843
    .local v6, "dy":I
    if-gez v6, :cond_28

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_28

    .line 844
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 845
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 847
    :cond_28
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 772
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 774
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 777
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 765
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_14

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 822
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 823
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 824
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 827
    :cond_16
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 828
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1003
    .local v0, "action":I
    const/4 v2, -0x1

    .line 1005
    .local v2, "pointerIndex":I
    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_10

    if-nez v0, :cond_10

    .line 1006
    iput-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1009
    :cond_10
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_28

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_28

    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_28

    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_29

    .line 1076
    :cond_28
    :goto_28
    :pswitch_28
    return v4

    .line 1015
    :cond_29
    packed-switch v0, :pswitch_data_a2

    .line 1076
    :cond_2c
    :goto_2c
    :pswitch_2c
    const/4 v4, 0x1

    goto :goto_28

    .line 1017
    :pswitch_2e
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1018
    iput-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_2c

    .line 1022
    :pswitch_37
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1023
    if-gez v2, :cond_47

    .line 1024
    sget-object v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1028
    :cond_47
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1029
    .local v3, "y":F
    invoke-direct {p0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1031
    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_2c

    .line 1032
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1033
    .local v1, "overscrollTop":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_28

    .line 1034
    invoke-direct {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_2c

    .line 1042
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :pswitch_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1043
    if-gez v2, :cond_6f

    .line 1044
    sget-object v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1048
    :cond_6f
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2c

    .line 1053
    :pswitch_76
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2c

    .line 1057
    :pswitch_7a
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1058
    if-gez v2, :cond_8a

    .line 1059
    sget-object v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1063
    :cond_8a
    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_9d

    .line 1064
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1065
    .restart local v3    # "y":F
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1066
    .restart local v1    # "overscrollTop":F
    iput-boolean v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1067
    invoke-direct {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1069
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :cond_9d
    const/4 v5, -0x1

    iput v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_28

    .line 1015
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_7a
        :pswitch_37
        :pswitch_28
        :pswitch_2c
        :pswitch_61
        :pswitch_76
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .param p1, "b"    # Z

    .prologue
    .line 753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 754
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 759
    :cond_18
    :goto_18
    return-void

    .line 757
    :cond_19
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18
.end method

.method reset()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 207
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 208
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setVisibility(I)V

    .line 209
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 211
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_27

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 216
    :goto_1e
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 217
    return-void

    .line 214
    :cond_27
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    goto :goto_1e
.end method

.method setAnimationProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .prologue
    .line 460
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleX(F)V

    .line 461
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setScaleY(F)V

    .line 462
    return-void
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .param p1, "colors"    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 546
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .param p1, "colors"    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 572
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 573
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 574
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6
    .param p1, "colorResIds"    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 556
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 557
    .local v1, "context":Landroid/content/Context;
    array-length v3, p1

    new-array v0, v3, [I

    .line 558
    .local v0, "colorRes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 559
    aget v3, p1, v2

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v2

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 561
    :cond_16
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 562
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 3
    .param p1, "distance"    # I

    .prologue
    .line 604
    int-to-float v0, p1

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 605
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 222
    if-nez p1, :cond_8

    .line 223
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 225
    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 853
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 854
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .registers 2
    .param p1, "callback"    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 687
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 688
    return-void
.end method

.method public setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 411
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mListener:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 412
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 520
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 537
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setBackgroundColor(I)V

    .line 538
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3
    .param p1, "colorRes"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 528
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 529
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 4
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .prologue
    .line 296
    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 297
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 298
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->invalidate()V

    .line 299
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .registers 5
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 258
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    .line 259
    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 260
    iput p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 262
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 264
    return-void
.end method

.method public setRefreshing(Z)V
    .registers 6
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 421
    if-eqz p1, :cond_26

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_26

    .line 423
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "endTarget":I
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_23

    .line 426
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int v0, v1, v2

    .line 430
    :goto_14
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 431
    iput-boolean v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNotify:Z

    .line 432
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    .end local v0    # "endTarget":I
    :goto_22
    return-void

    .line 428
    .restart local v0    # "endTarget":I
    :cond_23
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_14

    .line 434
    .end local v0    # "endTarget":I
    :cond_26
    invoke-direct {p0, p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_22
.end method

.method public setSize(I)V
    .registers 5
    .param p1, "size"    # I

    .prologue
    .line 317
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    .line 332
    :goto_5
    return-void

    .line 320
    :cond_6
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 321
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_2b

    .line 322
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 329
    :goto_18
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    .line 331
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 324
    :cond_2b
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_18
.end method

.method public setSlingshotDistance(I)V
    .registers 2
    .param p1, "slingshotDistance"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 310
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCustomSlingshotDistance:I

    .line 311
    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 1169
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->bringToFront()V

    .line 1170
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1171
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1172
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .prologue
    .line 863
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 478
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$3;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 484
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 485
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 486
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircleImageView;->clearAnimation()V

    .line 487
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mCircleView:Landroidx/swiperefreshlayout/widget/CircleImageView;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 869
    return-void
.end method
