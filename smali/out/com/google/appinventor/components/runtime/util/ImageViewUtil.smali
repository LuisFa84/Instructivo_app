.class public final Lcom/google/appinventor/components/runtime/util/ImageViewUtil;
.super Ljava/lang/Object;
.source "ImageViewUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOverflowMenuView(Landroid/app/Activity;)Landroid/widget/ImageView;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 39
    .local v3, "vg":Landroid/view/ViewGroup;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .local v1, "children":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/ViewGroup;>;"
    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_12
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v4

    if-lez v4, :cond_3c

    .line 42
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vg":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 43
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 44
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_30

    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :goto_2f
    return-object v0

    .line 47
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_30
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_39

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 52
    .end local v2    # "i":I
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static setMenuButtonColor(Landroid/app/Activity;I)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v5, [[I

    new-array v3, v4, [I

    aput-object v3, v2, v4

    new-array v3, v5, [I

    aput p1, v3, v4

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 30
    .local v0, "stateList":Landroid/content/res/ColorStateList;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->findOverflowMenuView(Landroid/app/Activity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/widget/ImageView;
    if-eqz v1, :cond_1f

    .line 32
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    invoke-static {v1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 35
    :cond_1f
    return-void
.end method
