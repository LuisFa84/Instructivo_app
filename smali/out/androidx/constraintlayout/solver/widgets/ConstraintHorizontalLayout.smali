.class public Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    }
.end annotation


# instance fields
.field private mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    .line 30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 46
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 16
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_66

    .line 64
    move-object v2, p0

    .line 65
    .local v2, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "mChildrenSize":I
    :goto_11
    if-ge v12, v13, :cond_4f

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 67
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v2, p0, :cond_3d

    .line 68
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 69
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 78
    :goto_2b
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 79
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 80
    move-object v2, v0

    .line 65
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 71
    :cond_3d
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 72
    .local v5, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v1, v3, :cond_47

    .line 73
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 75
    :cond_47
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2b

    .line 82
    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    :cond_4f
    if-eq v2, p0, :cond_66

    .line 83
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 84
    .restart local v5    # "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v1, v3, :cond_5b

    .line 85
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 87
    :cond_5b
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v6, v2

    move-object v8, p0

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 91
    .end local v2    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .end local v12    # "i":I
    .end local v13    # "mChildrenSize":I
    :cond_66
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 92
    return-void
.end method
