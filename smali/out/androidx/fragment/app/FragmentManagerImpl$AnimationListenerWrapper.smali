.class Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListenerWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "wrapped"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3969
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    .line 3970
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3983
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 3984
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3986
    :cond_9
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3991
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 3992
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 3994
    :cond_9
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 3975
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 3976
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3978
    :cond_9
    return-void
.end method
