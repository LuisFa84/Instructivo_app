.class Landroidx/fragment/app/FragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/fragment/app/FragmentManagerImpl;

    .prologue
    .line 1664
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1667
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1670
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v6

    .line 1671
    .local v6, "animator":Landroid/animation/Animator;
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1672
    if-eqz v6, :cond_2f

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_2f

    .line 1673
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1675
    :cond_2f
    return-void
.end method
