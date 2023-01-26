.class public Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionAnchor.java"


# static fields
.field public static final BARRIER_CONNECTION:I = 0x5

.field public static final CENTER_CONNECTION:I = 0x2

.field public static final CHAIN_CONNECTION:I = 0x4

.field public static final DIRECT_CONNECTION:I = 0x1

.field public static final MATCH_CONNECTION:I = 0x3

.field public static final UNCONNECTED:I


# instance fields
.field computedValue:F

.field private dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .registers 5
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 46
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 47
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 48
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 49
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 53
    return-void
.end method


# virtual methods
.method addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 6
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 304
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 306
    .local v0, "sv":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v2, :cond_14

    .line 307
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 312
    :goto_13
    return-void

    .line 309
    :cond_14
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 310
    .local v1, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_13
.end method

.method public dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p3, "offset"    # I

    .prologue
    .line 262
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 263
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 264
    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 265
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 269
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .registers 4
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # I

    .prologue
    .line 272
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 273
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 278
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .registers 5
    .param p1, "node"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .prologue
    .line 281
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 282
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 283
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 284
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 285
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 290
    return-void
.end method

.method public getResolvedValue()F
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    return v0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .registers 5
    .param p1, "resolutionDimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-ne v0, p1, :cond_10

    .line 57
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 58
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 63
    :cond_c
    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve()V

    .line 64
    return-void

    .line 59
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-ne v0, v1, :cond_c

    .line 60
    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 61
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    goto :goto_c
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 229
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    .line 230
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 231
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 232
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 233
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 234
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 235
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 236
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 237
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 238
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->computedValue:F

    .line 239
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 240
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 242
    return-void
.end method

.method public resolve()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 110
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_a

    .line 221
    :cond_9
    :goto_9
    return-void

    .line 113
    :cond_a
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_9

    .line 116
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v5, :cond_23

    .line 117
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-ne v5, v1, :cond_9

    .line 120
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v5, v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 122
    :cond_23
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v5, :cond_37

    .line 123
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-ne v5, v1, :cond_9

    .line 126
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v5, v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 128
    :cond_37
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-ne v5, v1, :cond_63

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_45

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_63

    .line 133
    :cond_45
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v5, :cond_53

    .line 134
    iput-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 135
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 140
    :goto_4f
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto :goto_9

    .line 137
    :cond_53
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 138
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_4f

    .line 141
    :cond_63
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_16d

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_16d

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_16d

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_16d

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_16d

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_16d

    .line 149
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    if-eqz v5, :cond_93

    .line 150
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    iget-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    add-long/2addr v6, v10

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    .line 152
    :cond_93
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 153
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "distance":F
    const/high16 v4, 0x3f000000    # 0.5f

    .line 158
    .local v4, "percent":F
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v5, v6, :cond_b6

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_131

    .line 160
    .local v1, "isEndAnchor":Z
    :cond_b6
    :goto_b6
    if-eqz v1, :cond_133

    .line 162
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float v0, v5, v6

    .line 167
    :goto_c4
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v5, v6, :cond_d4

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_140

    .line 169
    :cond_d4
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    .line 170
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 175
    :goto_e4
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    .line 176
    .local v2, "margin":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 177
    .local v3, "oppositeMargin":I
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    if-ne v5, v6, :cond_106

    .line 178
    const/high16 v4, 0x3f000000    # 0.5f

    .line 179
    const/4 v2, 0x0

    .line 180
    const/4 v3, 0x0

    .line 183
    :cond_106
    int-to-float v5, v2

    sub-float/2addr v0, v5

    .line 184
    int-to-float v5, v3

    sub-float/2addr v0, v5

    .line 186
    if-eqz v1, :cond_151

    .line 188
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    mul-float v7, v0, v4

    add-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 190
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v6, v2

    sub-float/2addr v5, v6

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 197
    :goto_127
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 198
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_9

    .line 158
    .end local v1    # "isEndAnchor":Z
    .end local v2    # "margin":I
    .end local v3    # "oppositeMargin":I
    :cond_131
    const/4 v1, 0x0

    goto :goto_b6

    .line 164
    .restart local v1    # "isEndAnchor":Z
    :cond_133
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float v0, v5, v6

    goto :goto_c4

    .line 172
    :cond_140
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    .line 173
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_e4

    .line 192
    .restart local v2    # "margin":I
    .restart local v3    # "oppositeMargin":I
    :cond_151
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v6, v2

    add-float/2addr v5, v6

    mul-float v6, v0, v4

    add-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 193
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    int-to-float v7, v3

    sub-float/2addr v6, v7

    sub-float v7, v8, v4

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_127

    .line 199
    .end local v0    # "distance":F
    .end local v1    # "isEndAnchor":Z
    .end local v2    # "margin":I
    .end local v3    # "oppositeMargin":I
    .end local v4    # "percent":F
    :cond_16d
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1cf

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_1cf

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_1cf

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_1cf

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v5, :cond_1cf

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v1, :cond_1cf

    .line 207
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    if-eqz v5, :cond_19d

    .line 208
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v5

    iget-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    add-long/2addr v6, v10

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    .line 210
    :cond_19d
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 211
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 213
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 214
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v6, v7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 217
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_9

    .line 218
    :cond_1cf
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    .line 219
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolve()V

    goto/16 :goto_9
.end method

.method public resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .registers 5
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "offset"    # F

    .prologue
    .line 79
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eq v0, p1, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    .line 80
    :cond_e
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 81
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 82
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->invalidate()V

    .line 85
    :cond_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 87
    :cond_1d
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 91
    const-string v0, "DIRECT"

    .line 101
    :goto_5
    return-object v0

    .line 92
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 93
    const-string v0, "CENTER"

    goto :goto_5

    .line 94
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 95
    const-string v0, "MATCH"

    goto :goto_5

    .line 96
    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 97
    const-string v0, "CHAIN"

    goto :goto_5

    .line 98
    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    .line 99
    const-string v0, "BARRIER"

    goto :goto_5

    .line 101
    :cond_1e
    const-string v0, "UNCONNECTED"

    goto :goto_5
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .registers 3
    .param p1, "opposite"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "oppositeOffset"    # F

    .prologue
    .line 293
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 294
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 295
    return-void
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .registers 4
    .param p1, "opposite"    # Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .param p2, "multiplier"    # I
    .param p3, "dimension"    # Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .prologue
    .line 298
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 299
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 300
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 301
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 224
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_79

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-ne v0, p0, :cond_3b

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_3a
    return-object v0

    .line 72
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RESOLVED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 73
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 75
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public update()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 245
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 246
    .local v1, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-nez v1, :cond_a

    .line 259
    :goto_9
    return-void

    .line 249
    :cond_a
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v2, v3, :cond_1a

    .line 250
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 251
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v4, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 253
    :cond_1a
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 254
    .local v0, "margin":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_30

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_31

    .line 256
    :cond_30
    neg-int v0, v0

    .line 258
    :cond_31
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_9
.end method
