.class public final Landroidx/appcompat/view/menu/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenu"    # Landroidx/core/internal/view/SupportMenu;

    .prologue
    .line 41
    new-instance v0, Landroidx/appcompat/view/menu/MenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    return-object v0
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportMenuItem"    # Landroidx/core/internal/view/SupportMenuItem;

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 46
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperJB;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    .line 48
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    goto :goto_b
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "supportSubMenu"    # Landroidx/core/internal/view/SupportSubMenu;

    .prologue
    .line 53
    new-instance v0, Landroidx/appcompat/view/menu/SubMenuWrapperICS;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    return-object v0
.end method
