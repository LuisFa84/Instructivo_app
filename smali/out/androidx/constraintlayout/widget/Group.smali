.class public Landroidx/constraintlayout/widget/Group;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/Group;->mUseViewMeasure:Z

    .line 57
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 5
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 89
    .local v0, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 90
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 91
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 9
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .prologue
    const/16 v6, 0x15

    .line 65
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->getVisibility()I

    move-result v4

    .line 66
    .local v4, "visibility":I
    const/4 v0, 0x0

    .line 67
    .local v0, "elevation":F
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_f

    .line 68
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Group;->getElevation()F

    move-result v0

    .line 70
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget v5, p0, Landroidx/constraintlayout/widget/Group;->mCount:I

    if-ge v1, v5, :cond_30

    .line 71
    iget-object v5, p0, Landroidx/constraintlayout/widget/Group;->mIds:[I

    aget v2, v5, v1

    .line 72
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2d

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2d

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    .line 70
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 80
    .end local v2    # "id":I
    .end local v3    # "view":Landroid/view/View;
    :cond_30
    return-void
.end method
