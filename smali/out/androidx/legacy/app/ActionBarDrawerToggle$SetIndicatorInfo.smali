.class Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field mSetHomeActionContentDescription:Ljava/lang/reflect/Method;

.field mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field mUpIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const v13, 0x102002c

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    :try_start_8
    const-class v6, Landroid/app/ActionBar;

    const-string v7, "setHomeAsUpIndicator"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 510
    const-class v6, Landroid/app/ActionBar;

    const-string v7, "setHomeActionContentDescription"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mSetHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d

    .line 540
    :cond_2c
    :goto_2c
    return-void

    .line 515
    :catch_2d
    move-exception v6

    .line 519
    invoke-virtual {p1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 520
    .local v2, "home":Landroid/view/View;
    if-eqz v2, :cond_2c

    .line 525
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 526
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 527
    .local v0, "childCount":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2c

    .line 532
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 533
    .local v1, "first":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 534
    .local v4, "second":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v13, :cond_59

    move-object v5, v4

    .line 536
    .local v5, "up":Landroid/view/View;
    :goto_50
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_2c

    .line 538
    check-cast v5, Landroid/widget/ImageView;

    .end local v5    # "up":Landroid/view/View;
    iput-object v5, p0, Landroidx/legacy/app/ActionBarDrawerToggle$SetIndicatorInfo;->mUpIndicatorView:Landroid/widget/ImageView;

    goto :goto_2c

    :cond_59
    move-object v5, v1

    .line 534
    goto :goto_50
.end method
