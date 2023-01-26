.class public Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 89
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 79
    return-void
.end method

.method private setChildrenConnections()V
    .registers 16

    .prologue
    .line 481
    iget-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 482
    .local v1, "count":I
    const/4 v4, 0x0

    .line 483
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_e6

    .line 484
    iget-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 485
    .local v6, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v12

    add-int/2addr v4, v12

    .line 487
    iget v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int v0, v4, v12

    .line 488
    .local v0, "col":I
    iget v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v5, v4, v12

    .line 490
    .local v5, "row":I
    iget-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    .line 491
    .local v2, "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    iget-object v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 492
    .local v11, "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 493
    .local v8, "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v11, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 494
    .local v9, "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 495
    .local v10, "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 497
    .local v7, "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 498
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 499
    instance-of v12, v9, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_8e

    .line 500
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 501
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 508
    :goto_5d
    iget v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v12, :pswitch_data_e8

    .line 528
    :goto_62
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 529
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 530
    instance-of v12, v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v12, :cond_d4

    .line 531
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 532
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 538
    :goto_88
    add-int/lit8 v4, v4, 0x1

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 503
    :cond_8e
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 504
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_5d

    .line 510
    :pswitch_a0
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_62

    .line 514
    :pswitch_a6
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 516
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_62

    .line 521
    :pswitch_bd
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 523
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_62

    .line 534
    :cond_d4
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 535
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    iget v14, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_88

    .line 540
    .end local v0    # "col":I
    .end local v2    # "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    .end local v5    # "row":I
    .end local v6    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_e6
    return-void

    .line 508
    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_bd
        :pswitch_a0
    .end packed-switch
.end method

.method private setHorizontalSlices()V
    .registers 9

    .prologue
    .line 453
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 455
    .local v2, "increment":F
    move v3, v2

    .line 456
    .local v3, "percent":F
    move-object v4, p0

    .line 457
    .local v4, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v1, v6, :cond_45

    .line 458
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    .line 459
    .local v5, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    iput-object v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 460
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_42

    .line 461
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .line 462
    .local v0, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 463
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 464
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 465
    add-float/2addr v3, v2

    .line 466
    iput-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 467
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_38
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 472
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 469
    :cond_42
    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_38

    .line 474
    .end local v5    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    :cond_45
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 475
    return-void
.end method

.method private setVerticalSlices()V
    .registers 9

    .prologue
    .line 424
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 425
    move-object v4, p0

    .line 426
    .local v4, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 427
    .local v2, "increment":F
    move v3, v2

    .line 428
    .local v3, "percent":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v1, v6, :cond_45

    .line 429
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    invoke-direct {v5, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    .line 430
    .local v5, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iput-object v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 431
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_42

    .line 432
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .line 433
    .local v0, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 434
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 435
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 436
    add-float/2addr v3, v2

    .line 437
    iput-object v0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 438
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_38
    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 443
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 440
    :cond_42
    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_38

    .line 445
    .end local v5    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_45
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 446
    return-void
.end method

.method private updateDebugSolverNames()V
    .registers 7

    .prologue
    .line 406
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    if-nez v2, :cond_5

    .line 417
    :cond_4
    return-void

    .line 409
    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 410
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_39

    .line 411
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".VG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 413
    :cond_39
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 414
    const/4 v0, 0x0

    :goto_40
    if-ge v0, v1, :cond_4

    .line 415
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 11
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 316
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 317
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 318
    .local v1, "count":I
    if-nez v1, :cond_e

    .line 344
    :cond_d
    return-void

    .line 321
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 324
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v5, :cond_d

    .line 325
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 326
    .local v4, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v4, :cond_3a

    .line 327
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 329
    .local v2, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_38

    move v5, v6

    .line 328
    :goto_2f
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 330
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_38
    move v5, v7

    .line 329
    goto :goto_2f

    .line 332
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_3a
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 333
    const/4 v3, 0x0

    :goto_41
    if-ge v3, v4, :cond_5f

    .line 334
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 336
    .restart local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_5d

    move v5, v6

    .line 335
    :goto_54
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 337
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_5d
    move v5, v7

    .line 336
    goto :goto_54

    .line 339
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_5f
    const/4 v3, 0x0

    :goto_60
    if-ge v3, v1, :cond_d

    .line 340
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 341
    .local v0, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_60
.end method

.method public computeGuidelinesPercentPositions()V
    .registers 4

    .prologue
    .line 580
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 582
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 584
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 585
    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v1, :cond_2e

    .line 586
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 588
    :cond_2e
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 252
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 253
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v1, :pswitch_data_1e

    .line 264
    :goto_d
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 265
    return-void

    .line 255
    :pswitch_11
    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_d

    .line 258
    :pswitch_15
    const/4 v1, 0x1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_d

    .line 261
    :pswitch_19
    const/4 v1, 0x2

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_d

    .line 253
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .registers 5
    .param p1, "column"    # I

    .prologue
    .line 158
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 159
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 160
    const-string v1, "L"

    .line 168
    :goto_f
    return-object v1

    .line 161
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v1, :cond_17

    .line 162
    const-string v1, "C"

    goto :goto_f

    .line 163
    :cond_17
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    .line 164
    const-string v1, "F"

    goto :goto_f

    .line 165
    :cond_1f
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 166
    const-string v1, "R"

    goto :goto_f

    .line 168
    :cond_27
    const-string v1, "!"

    goto :goto_f
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .registers 7

    .prologue
    .line 134
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "numSlices":I
    const-string v2, ""

    .line 136
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_78

    .line 137
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 138
    .local v3, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 140
    :cond_2e
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v4, :cond_46

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 142
    :cond_46
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5f

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 144
    :cond_5f
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 148
    .end local v3    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_78
    return-object v2
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumCols()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    return v0
.end method

.method public getNumRows()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    return v0
.end method

.method public getPadding()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const-string v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public isVerticalGrowth()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    return v0
.end method

.method public setColumnAlignment(II)V
    .registers 5
    .param p1, "column"    # I
    .param p2, "alignment"    # I

    .prologue
    .line 239
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 240
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    .line 241
    .local v0, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 242
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 244
    .end local v0    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_15
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .registers 7
    .param p1, "alignment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_6
    if-ge v1, v2, :cond_35

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_17

    .line 276
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    .line 273
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 277
    :cond_17
    const/16 v3, 0x43

    if-ne v0, v3, :cond_1f

    .line 278
    invoke-virtual {p0, v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_14

    .line 279
    :cond_1f
    const/16 v3, 0x46

    if-ne v0, v3, :cond_28

    .line 280
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_14

    .line 281
    :cond_28
    const/16 v3, 0x52

    if-ne v0, v3, :cond_31

    .line 282
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_14

    .line 284
    :cond_31
    invoke-virtual {p0, v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_14

    .line 287
    .end local v0    # "c":C
    :cond_35
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 399
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 401
    return-void
.end method

.method public setNumCols(I)V
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 179
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    .line 180
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 181
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 184
    :cond_10
    return-void
.end method

.method public setNumRows(I)V
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 194
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v0, :cond_10

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-eq v0, p1, :cond_10

    .line 195
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 196
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 197
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 199
    :cond_10
    return-void
.end method

.method public setPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 227
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 229
    :cond_5
    return-void
.end method

.method public setTableDimensions()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "extra":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 353
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_1b

    .line 354
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 355
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v6

    add-int/2addr v2, v6

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 357
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1b
    add-int/2addr v1, v2

    .line 358
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v6, :cond_4c

    .line 359
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v6, :cond_27

    .line 360
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    .line 362
    :cond_27
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int v4, v1, v6

    .line 363
    .local v4, "rows":I
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    mul-int/2addr v6, v4

    if-ge v6, v1, :cond_32

    .line 364
    add-int/lit8 v4, v4, 0x1

    .line 366
    :cond_32
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ne v6, v4, :cond_43

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_43

    .line 388
    .end local v4    # "rows":I
    :cond_42
    :goto_42
    return-void

    .line 370
    .restart local v4    # "rows":I
    :cond_43
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 371
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 387
    .end local v4    # "rows":I
    :goto_48
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    goto :goto_42

    .line 373
    :cond_4c
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v6, :cond_53

    .line 374
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    .line 376
    :cond_53
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int v0, v1, v6

    .line 377
    .local v0, "cols":I
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    mul-int/2addr v6, v0

    if-ge v6, v1, :cond_5e

    .line 378
    add-int/lit8 v0, v0, 0x1

    .line 380
    :cond_5e
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ne v6, v0, :cond_6e

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_42

    .line 384
    :cond_6e
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 385
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    goto :goto_48
.end method

.method public setVerticalGrowth(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 218
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 6
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 552
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne p1, v3, :cond_35

    .line 553
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 554
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 555
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 556
    .local v0, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 558
    .end local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_1e
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v2, :cond_35

    .line 560
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 561
    .restart local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 564
    .end local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_35
    return-void
.end method
