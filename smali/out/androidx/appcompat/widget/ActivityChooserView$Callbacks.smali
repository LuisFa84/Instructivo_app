.class Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .registers 2

    .prologue
    .line 575
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    return-void
.end method

.method private notifyOnDismissListener()V
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_d

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 657
    :cond_d
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 613
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_3c

    .line 614
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 615
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 616
    .local v0, "defaultActivity":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 617
    .local v1, "index":I
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 618
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3b

    .line 619
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 620
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    .end local v0    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v1    # "index":I
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_3b
    :goto_3b
    return-void

    .line 622
    :cond_3c
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_51

    .line 623
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 624
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    goto :goto_3b

    .line 626
    :cond_51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public onDismiss()V
    .registers 3

    .prologue
    .line 647
    invoke-direct {p0}, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 648
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_11

    .line 649
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 651
    :cond_11
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 582
    .local v0, "adapter":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 583
    .local v1, "itemViewType":I
    packed-switch v1, :pswitch_data_60

    .line 606
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 585
    :pswitch_13
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 608
    :cond_1b
    :goto_1b
    return-void

    .line 588
    :pswitch_1c
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    .line 589
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz v3, :cond_35

    .line 591
    if-lez p3, :cond_1b

    .line 592
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_1b

    .line 597
    :cond_35
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 598
    :goto_3f
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 599
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1b

    .line 600
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    .line 597
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_5c
    add-int/lit8 p3, p3, 0x1

    goto :goto_3f

    .line 583
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1f

    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 635
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iput-boolean v2, v0, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 641
    :cond_1e
    return v2

    .line 639
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
