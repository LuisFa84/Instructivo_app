.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .registers 9
    .param p0, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v0, 0x0

    .line 49
    .local v0, "chainsArray":[Landroidx/constraintlayout/solver/widgets/ChainHead;
    if-nez p2, :cond_25

    .line 50
    const/4 v4, 0x0

    .line 51
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 59
    :goto_a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_2f

    .line 60
    aget-object v2, v0, v3

    .line 63
    .local v2, "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    .line 64
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 65
    invoke-static {p0, p1, p2, v4, v2}, Landroidx/constraintlayout/solver/widgets/Optimizer;->applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 66
    invoke-static {p0, p1, p2, v4, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    .line 59
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 54
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    .end local v3    # "i":I
    :cond_25
    const/4 v4, 0x2

    .line 55
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    goto :goto_a

    .line 69
    .restart local v2    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    .restart local v3    # "i":I
    :cond_2b
    invoke-static {p0, p1, p2, v4, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    goto :goto_22

    .line 72
    .end local v2    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    :cond_2f
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .registers 76
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;

    .prologue
    .line 86
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v50, v0

    .line 87
    .local v50, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v59, v0

    .line 88
    .local v59, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v52, v0

    .line 89
    .local v52, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v61, v0

    .line 90
    .local v61, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v53, v0

    .line 92
    .local v53, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v70, v50

    .line 93
    .local v70, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v65, 0x0

    .line 94
    .local v65, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v49, 0x0

    .line 96
    .local v49, "done":Z
    move-object/from16 v0, p4

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 97
    .local v5, "totalWeights":F
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v51, v0

    .line 98
    .local v51, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v67, v0

    .line 100
    .local v67, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_146

    const/16 v58, 0x1

    .line 101
    .local v58, "isWrapContent":Z
    :goto_40
    const/16 v56, 0x0

    .line 102
    .local v56, "isChainSpread":Z
    const/16 v57, 0x0

    .line 103
    .local v57, "isChainSpreadInside":Z
    const/16 v55, 0x0

    .line 105
    .local v55, "isChainPacked":Z
    if-nez p2, :cond_156

    .line 106
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v11, :cond_14a

    const/16 v56, 0x1

    .line 107
    :goto_50
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14e

    const/16 v57, 0x1

    .line 108
    :goto_59
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_152

    const/16 v55, 0x1

    .line 119
    :goto_62
    if-nez v49, :cond_19d

    .line 120
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 121
    .local v7, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v27, 0x4

    .line 122
    .local v27, "strength":I
    if-nez v58, :cond_70

    if-eqz v55, :cond_72

    .line 123
    :cond_70
    const/16 v27, 0x1

    .line 125
    :cond_72
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v63

    .line 127
    .local v63, "margin":I
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_88

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_88

    .line 128
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v63, v63, v11

    .line 131
    :cond_88
    if-eqz v55, :cond_17b

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_17b

    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_17b

    .line 132
    const/16 v27, 0x6

    .line 139
    :cond_98
    :goto_98
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_c2

    .line 140
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_183

    .line 141
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 147
    :goto_b3
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v27

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 151
    :cond_c2
    if-eqz v58, :cond_112

    .line 152
    invoke-virtual/range {v70 .. v70}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_f5

    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_f5

    .line 154
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v70

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 158
    :cond_f5
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 164
    :cond_112
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v66, v0

    .line 165
    .local v66, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v66, :cond_196

    .line 166
    move-object/from16 v0, v66

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v65, v0

    .line 167
    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_13e

    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v0, v70

    if-eq v11, v0, :cond_140

    .line 168
    :cond_13e
    const/16 v65, 0x0

    .line 173
    :cond_140
    :goto_140
    if-eqz v65, :cond_199

    .line 174
    move-object/from16 v70, v65

    goto/16 :goto_62

    .line 100
    .end local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .end local v55    # "isChainPacked":Z
    .end local v56    # "isChainSpread":Z
    .end local v57    # "isChainSpreadInside":Z
    .end local v58    # "isWrapContent":Z
    .end local v63    # "margin":I
    .end local v66    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_146
    const/16 v58, 0x0

    goto/16 :goto_40

    .line 106
    .restart local v55    # "isChainPacked":Z
    .restart local v56    # "isChainSpread":Z
    .restart local v57    # "isChainSpreadInside":Z
    .restart local v58    # "isWrapContent":Z
    :cond_14a
    const/16 v56, 0x0

    goto/16 :goto_50

    .line 107
    :cond_14e
    const/16 v57, 0x0

    goto/16 :goto_59

    .line 108
    :cond_152
    const/16 v55, 0x0

    goto/16 :goto_62

    .line 110
    :cond_156
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v11, :cond_172

    const/16 v56, 0x1

    .line 111
    :goto_15e
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_175

    const/16 v57, 0x1

    .line 112
    :goto_167
    move-object/from16 v0, v53

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_178

    const/16 v55, 0x1

    :goto_170
    goto/16 :goto_62

    .line 110
    :cond_172
    const/16 v56, 0x0

    goto :goto_15e

    .line 111
    :cond_175
    const/16 v57, 0x0

    goto :goto_167

    .line 112
    :cond_178
    const/16 v55, 0x0

    goto :goto_170

    .line 133
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v27    # "strength":I
    .restart local v63    # "margin":I
    :cond_17b
    if-eqz v56, :cond_98

    if-eqz v58, :cond_98

    .line 136
    const/16 v27, 0x4

    goto/16 :goto_98

    .line 144
    :cond_183
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v63

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_b3

    .line 171
    .restart local v66    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_196
    const/16 v65, 0x0

    goto :goto_140

    .line 176
    :cond_199
    const/16 v49, 0x1

    goto/16 :goto_62

    .line 181
    .end local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "strength":I
    .end local v63    # "margin":I
    .end local v66    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_19d
    if-eqz v61, :cond_1d5

    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_1d5

    .line 182
    move-object/from16 v0, v61

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 183
    .local v8, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 184
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 189
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1d5
    if-eqz v58, :cond_204

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v59

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v0

    add-int/lit8 v19, p3, 0x1

    aget-object v17, v17, v19

    .line 192
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x6

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 196
    :cond_204
    move-object/from16 v0, p4

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    .line 197
    .local v62, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    if-eqz v62, :cond_2cb

    .line 198
    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->size()I

    move-result v48

    .line 199
    .local v48, "count":I
    const/4 v11, 0x1

    move/from16 v0, v48

    if-le v0, v11, :cond_2cb

    .line 200
    const/16 v60, 0x0

    .line 201
    .local v60, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 203
    .local v4, "lastWeight":F
    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v11, :cond_229

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v11, :cond_229

    .line 204
    move-object/from16 v0, p4

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v5, v11

    .line 207
    :cond_229
    const/16 v54, 0x0

    .local v54, "i":I
    :goto_22b
    move/from16 v0, v54

    move/from16 v1, v48

    if-ge v0, v1, :cond_2cb

    .line 208
    move-object/from16 v0, v62

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 209
    .local v64, "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v6, v11, p2

    .line 211
    .local v6, "currentWeight":F
    const/4 v11, 0x0

    cmpg-float v11, v6, v11

    if-gez v11, :cond_270

    .line 212
    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v11, :cond_26e

    .line 213
    move-object/from16 v0, v64

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v64

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 207
    :goto_26b
    add-int/lit8 v54, v54, 0x1

    goto :goto_22b

    .line 217
    :cond_26e
    const/high16 v6, 0x3f800000    # 1.0f

    .line 219
    :cond_270
    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-nez v11, :cond_295

    .line 220
    move-object/from16 v0, v64

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v64

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_26b

    .line 225
    :cond_295
    if-eqz v60, :cond_2c7

    .line 226
    move-object/from16 v0, v60

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 227
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v60

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 228
    .local v8, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v9, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 229
    .local v9, "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v64

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v10, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 230
    .local v10, "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v3

    .line 231
    .local v3, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual/range {v3 .. v10}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    .line 233
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    .end local v3    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2c7
    move-object/from16 v60, v64

    .line 237
    move v4, v6

    goto :goto_26b

    .line 254
    .end local v4    # "lastWeight":F
    .end local v6    # "currentWeight":F
    .end local v48    # "count":I
    .end local v54    # "i":I
    .end local v60    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v64    # "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2cb
    if-eqz v52, :cond_3d1

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_2d5

    if-eqz v55, :cond_3d1

    .line 255
    :cond_2d5
    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 256
    .local v7, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 257
    .local v8, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_3c4

    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 258
    .local v13, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_2f7
    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_3c7

    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 259
    .local v16, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_311
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_325

    .line 260
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 261
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 263
    :cond_325
    if-eqz v13, :cond_346

    if-eqz v16, :cond_346

    .line 264
    const/high16 v15, 0x3f000000    # 0.5f

    .line 265
    .local v15, "bias":F
    if-nez p2, :cond_3cb

    .line 266
    move-object/from16 v0, v53

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 270
    :goto_331
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 271
    .local v14, "beginMargin":I
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 272
    .local v18, "endMargin":I
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 418
    .end local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_346
    :goto_346
    if-nez v56, :cond_34a

    if-eqz v57, :cond_3c3

    :cond_34a
    if-eqz v52, :cond_3c3

    .line 419
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 420
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v61

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 421
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_6a4

    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 422
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_362
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_6a7

    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 423
    .restart local v16    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_36c
    move-object/from16 v0, v59

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_388

    .line 424
    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v69, v11, v12

    .line 425
    .local v69, "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v69

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_6ab

    move-object/from16 v0, v69

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 427
    .end local v69    # "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_388
    :goto_388
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_39c

    .line 428
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 429
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 431
    :cond_39c
    if-eqz v13, :cond_3c3

    if-eqz v16, :cond_3c3

    .line 432
    const/high16 v15, 0x3f000000    # 0.5f

    .line 433
    .restart local v15    # "bias":F
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 434
    .restart local v14    # "beginMargin":I
    if-nez v61, :cond_3aa

    .line 436
    move-object/from16 v61, v59

    .line 438
    :cond_3aa
    move-object/from16 v0, v61

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 439
    .restart local v18    # "endMargin":I
    iget-object v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 443
    .end local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_3c3
    return-void

    .line 257
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_3c4
    const/4 v13, 0x0

    goto/16 :goto_2f7

    .line 258
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3c7
    const/16 v16, 0x0

    goto/16 :goto_311

    .line 268
    .restart local v15    # "bias":F
    .restart local v16    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3cb
    move-object/from16 v0, v53

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_331

    .line 275
    .end local v7    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3d1
    if-eqz v56, :cond_512

    if-eqz v52, :cond_512

    .line 277
    move-object/from16 v70, v52

    .line 278
    move-object/from16 v68, v52

    .line 279
    .local v68, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v11, :cond_404

    move-object/from16 v0, p4

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    move-object/from16 v0, p4

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v11, v12, :cond_404

    const/16 v45, 0x1

    .line 280
    .local v45, "applyFixedEquality":Z
    :goto_3eb
    if-eqz v70, :cond_346

    .line 281
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    .line 282
    :goto_3f3
    if-eqz v65, :cond_407

    invoke-virtual/range {v65 .. v65}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_407

    .line 283
    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    goto :goto_3f3

    .line 279
    .end local v45    # "applyFixedEquality":Z
    :cond_404
    const/16 v45, 0x0

    goto :goto_3eb

    .line 285
    .restart local v45    # "applyFixedEquality":Z
    :cond_407
    if-nez v65, :cond_40f

    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_4bb

    .line 286
    :cond_40f
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 287
    .local v46, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v46

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 288
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v46

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4c9

    move-object/from16 v0, v46

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 289
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_425
    move-object/from16 v0, v68

    move-object/from16 v1, v70

    if-eq v0, v1, :cond_4cc

    .line 290
    move-object/from16 v0, v68

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 295
    :cond_435
    :goto_435
    const/16 v47, 0x0

    .line 296
    .local v47, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 297
    .local v24, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v25, 0x0

    .line 298
    .local v25, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 299
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    .line 301
    .local v35, "nextMargin":I
    if-eqz v65, :cond_4f0

    .line 302
    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v47, v11, p3

    .line 303
    move-object/from16 v0, v47

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 304
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 313
    :goto_465
    if-eqz v47, :cond_46d

    .line 314
    invoke-virtual/range {v47 .. v47}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v35, v35, v11

    .line 316
    :cond_46d
    if-eqz v68, :cond_47c

    .line 317
    move-object/from16 v0, v68

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 319
    :cond_47c
    if-eqz v7, :cond_4bb

    if-eqz v13, :cond_4bb

    if-eqz v24, :cond_4bb

    if-eqz v25, :cond_4bb

    .line 320
    move/from16 v22, v14

    .line 321
    .local v22, "margin1":I
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_496

    .line 322
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 324
    :cond_496
    move/from16 v26, v35

    .line 325
    .local v26, "margin2":I
    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_4aa

    .line 326
    move-object/from16 v0, v61

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 328
    :cond_4aa
    const/16 v27, 0x4

    .line 329
    .restart local v27    # "strength":I
    if-eqz v45, :cond_4b0

    .line 330
    const/16 v27, 0x6

    .line 332
    :cond_4b0
    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v19, p1

    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v27}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 337
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v22    # "margin1":I
    .end local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v26    # "margin2":I
    .end local v27    # "strength":I
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4bb
    invoke-virtual/range {v70 .. v70}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_4c5

    .line 338
    move-object/from16 v68, v70

    .line 340
    :cond_4c5
    move-object/from16 v70, v65

    goto/16 :goto_3eb

    .line 288
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4c9
    const/4 v13, 0x0

    goto/16 :goto_425

    .line 291
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4cc
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_435

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    if-ne v0, v1, :cond_435

    .line 292
    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4ee

    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    :goto_4ec
    goto/16 :goto_435

    :cond_4ee
    const/4 v13, 0x0

    goto :goto_4ec

    .line 306
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v35    # "nextMargin":I
    .restart local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4f0
    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v47, v0

    .line 307
    if-eqz v47, :cond_504

    .line 308
    move-object/from16 v0, v47

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 310
    :cond_504
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v0

    goto/16 :goto_465

    .line 342
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v35    # "nextMargin":I
    .end local v45    # "applyFixedEquality":Z
    .end local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v68    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_512
    if-eqz v57, :cond_346

    if-eqz v52, :cond_346

    .line 344
    move-object/from16 v70, v52

    .line 345
    move-object/from16 v68, v52

    .line 346
    .restart local v68    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p4

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v11, :cond_545

    move-object/from16 v0, p4

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    move-object/from16 v0, p4

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v11, v12, :cond_545

    const/16 v45, 0x1

    .line 347
    .restart local v45    # "applyFixedEquality":Z
    :goto_52c
    if-eqz v70, :cond_61d

    .line 348
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    .line 349
    :goto_534
    if-eqz v65, :cond_548

    invoke-virtual/range {v65 .. v65}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_548

    .line 350
    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v65, v11, p2

    goto :goto_534

    .line 346
    .end local v45    # "applyFixedEquality":Z
    :cond_545
    const/16 v45, 0x0

    goto :goto_52c

    .line 352
    .restart local v45    # "applyFixedEquality":Z
    :cond_548
    move-object/from16 v0, v70

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_5e8

    move-object/from16 v0, v70

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_5e8

    if-eqz v65, :cond_5e8

    .line 353
    move-object/from16 v0, v65

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_55e

    .line 354
    const/16 v65, 0x0

    .line 356
    :cond_55e
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 357
    .restart local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v46

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 358
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v46

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_5f6

    move-object/from16 v0, v46

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 359
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_574
    move-object/from16 v0, v68

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 360
    const/16 v47, 0x0

    .line 361
    .restart local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 362
    .restart local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v25, 0x0

    .line 363
    .restart local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {v46 .. v46}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 364
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    .line 366
    .restart local v35    # "nextMargin":I
    if-eqz v65, :cond_5fc

    .line 367
    move-object/from16 v0, v65

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v47, v11, p3

    .line 368
    move-object/from16 v0, v47

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 369
    move-object/from16 v0, v47

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_5f9

    move-object/from16 v0, v47

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 378
    :goto_5b0
    if-eqz v47, :cond_5b8

    .line 379
    invoke-virtual/range {v47 .. v47}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v35, v35, v11

    .line 381
    :cond_5b8
    if-eqz v68, :cond_5c7

    .line 382
    move-object/from16 v0, v68

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 384
    :cond_5c7
    const/16 v27, 0x4

    .line 385
    .restart local v27    # "strength":I
    if-eqz v45, :cond_5cd

    .line 386
    const/16 v27, 0x6

    .line 388
    :cond_5cd
    if-eqz v7, :cond_5e8

    if-eqz v13, :cond_5e8

    if-eqz v24, :cond_5e8

    if-eqz v25, :cond_5e8

    .line 389
    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v28, p1

    move-object/from16 v29, v7

    move-object/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v36, v27

    invoke-virtual/range {v28 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 394
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "strength":I
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_5e8
    invoke-virtual/range {v70 .. v70}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5f2

    .line 395
    move-object/from16 v68, v70

    .line 397
    :cond_5f2
    move-object/from16 v70, v65

    goto/16 :goto_52c

    .line 358
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_5f6
    const/4 v13, 0x0

    goto/16 :goto_574

    .line 369
    .restart local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v35    # "nextMargin":I
    .restart local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_5f9
    const/16 v25, 0x0

    goto :goto_5b0

    .line 371
    :cond_5fc
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v47, v0

    .line 372
    if-eqz v47, :cond_610

    .line 373
    move-object/from16 v0, v47

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 375
    :cond_610
    move-object/from16 v0, v70

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v25, v0

    goto :goto_5b0

    .line 399
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v35    # "nextMargin":I
    .end local v46    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v47    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_61d
    move-object/from16 v0, v52

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 400
    .local v7, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v50

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 401
    .local v13, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v61

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 402
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    .line 403
    .local v16, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v13, :cond_65a

    .line 404
    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_67e

    .line 405
    iget-object v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 411
    :cond_65a
    :goto_65a
    if-eqz v16, :cond_346

    move-object/from16 v0, v52

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_346

    .line 412
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_346

    .line 406
    :cond_67e
    if-eqz v16, :cond_65a

    .line 407
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/high16 v40, 0x3f000000    # 0.5f

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v41, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v42, v0

    .line 408
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v43

    const/16 v44, 0x5

    move-object/from16 v36, p1

    .line 407
    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_65a

    .line 421
    .end local v13    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v16    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v45    # "applyFixedEquality":Z
    .end local v68    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6a4
    const/4 v13, 0x0

    goto/16 :goto_362

    .line 422
    .local v13, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6a7
    const/16 v16, 0x0

    goto/16 :goto_36c

    .line 425
    .local v16, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v69    # "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_6ab
    const/16 v16, 0x0

    goto/16 :goto_388
.end method
