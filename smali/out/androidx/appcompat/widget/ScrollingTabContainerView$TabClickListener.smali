.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .registers 2

    .prologue
    .line 552
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 557
    move-object v3, p1

    check-cast v3, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 558
    .local v3, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 559
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    .line 560
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_28

    .line 561
    iget-object v4, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v4, v4, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_26

    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 562
    :cond_26
    const/4 v4, 0x0

    goto :goto_20

    .line 564
    .end local v0    # "child":Landroid/view/View;
    :cond_28
    return-void
.end method
