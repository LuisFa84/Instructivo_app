.class Landroidx/appcompat/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/view/menu/StandardMenuPopup;

    .prologue
    .line 61
    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 67
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    move-result v1

    if-nez v1, :cond_23

    .line 68
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 69
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_24

    .line 70
    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 76
    .end local v0    # "anchor":Landroid/view/View;
    :cond_23
    :goto_23
    return-void

    .line 73
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_24
    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;->this$0:Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v1, v1, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    goto :goto_23
.end method
