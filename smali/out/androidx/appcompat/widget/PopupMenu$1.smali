.class Landroidx/appcompat/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/PopupMenu;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/widget/PopupMenu;

    .prologue
    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Landroidx/appcompat/widget/PopupMenu;

    iget-object v0, v0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 115
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .prologue
    .line 120
    return-void
.end method
