.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 13
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 391
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 393
    .local v1, "frameCount":I
    if-eqz p2, :cond_3c

    add-int/lit8 v2, v1, -0x1

    .line 394
    .local v2, "fromFrame":I
    :goto_e
    if-eqz p2, :cond_3e

    move v4, v5

    .line 395
    .local v4, "toFrame":I
    :goto_11
    new-instance v3, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;

    invoke-direct {v3, p1, p2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 397
    .local v3, "interp":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    const-string v6, "currentIndex"

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v2, v7, v5

    aput v4, v7, v8

    .line 398
    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 399
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_2c

    .line 400
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 402
    :cond_2c
    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;->getTotalDuration()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    .line 405
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    .line 406
    return-void

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "fromFrame":I
    .end local v3    # "interp":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$FrameInterpolator;
    .end local v4    # "toFrame":I
    :cond_3c
    move v2, v5

    .line 393
    goto :goto_e

    .line 394
    .restart local v2    # "fromFrame":I
    :cond_3e
    add-int/lit8 v4, v1, -0x1

    goto :goto_11
.end method


# virtual methods
.method public canReverse()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public reverse()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 421
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 416
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 426
    return-void
.end method
