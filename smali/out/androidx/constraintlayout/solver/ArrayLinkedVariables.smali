.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .registers 6
    .param p1, "arrayRow"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 48
    const/16 v0, 0x8

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 108
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .registers 5
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    const/4 v0, 0x1

    .line 491
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    if-gt v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .registers 16
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 225
    cmpl-float v6, p2, v8

    if-nez v6, :cond_9

    .line 335
    :cond_8
    :goto_8
    return-void

    .line 229
    :cond_9
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v6, v9, :cond_4f

    .line 230
    iput v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 231
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v6, v7

    .line 232
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v8, v6, v7

    .line 233
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v9, v6, v7

    .line 234
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 235
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 237
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v6, :cond_8

    .line 239
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 240
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_8

    .line 241
    iput-boolean v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 242
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_8

    .line 247
    :cond_4f
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 248
    .local v2, "current":I
    const/4 v5, -0x1

    .line 249
    .local v5, "previous":I
    const/4 v1, 0x0

    .line 250
    .local v1, "counter":I
    :goto_53
    if-eq v2, v9, :cond_ae

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v6, :cond_ae

    .line 251
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v6, v2

    .line 252
    .local v4, "idx":I
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v6, :cond_9e

    .line 253
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v6, v2

    add-float/2addr v7, p2

    aput v7, v6, v2

    .line 255
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_8

    .line 256
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v2, v6, :cond_95

    .line 257
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v2

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 261
    :goto_7a
    if-eqz p3, :cond_81

    .line 262
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 264
    :cond_81
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_87

    .line 266
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 268
    :cond_87
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 269
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    goto/16 :goto_8

    .line 259
    :cond_95
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v7, v2

    aput v7, v6, v5

    goto :goto_7a

    .line 273
    :cond_9e
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v2

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_a7

    .line 274
    move v5, v2

    .line 276
    :cond_a7
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v6, v2

    add-int/lit8 v1, v1, 0x1

    .line 277
    goto :goto_53

    .line 282
    .end local v4    # "idx":I
    :cond_ae
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, v6, 0x1

    .line 283
    .local v0, "availableIndice":I
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_c0

    .line 286
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    aget v6, v6, v7

    if-ne v6, v9, :cond_150

    .line 287
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 292
    :cond_c0
    :goto_c0
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_d9

    .line 293
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-ge v6, v7, :cond_d9

    .line 295
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_cd
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v3, v6, :cond_d9

    .line 296
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v3

    if-ne v6, v9, :cond_155

    .line 297
    move v0, v3

    .line 304
    .end local v3    # "i":I
    :cond_d9
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_10b

    .line 305
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v6

    .line 306
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 307
    iput-boolean v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 308
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 309
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 310
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 311
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 315
    :cond_10b
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v7, v6, v0

    .line 316
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v6, v0

    .line 317
    if-eq v5, v9, :cond_159

    .line 318
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v7, v7, v5

    aput v7, v6, v0

    .line 319
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, v6, v5

    .line 324
    :goto_123
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 325
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 326
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 327
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v6, :cond_13e

    .line 329
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 331
    :cond_13e
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_8

    .line 332
    iput-boolean v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 333
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto/16 :goto_8

    .line 289
    :cond_150
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v6

    goto/16 :goto_c0

    .line 295
    .restart local v3    # "i":I
    :cond_155
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_cd

    .line 321
    .end local v3    # "i":I
    :cond_159
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v7, v6, v0

    .line 322
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_123
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 16
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .prologue
    .line 506
    const/4 v5, 0x0

    .line 507
    .local v5, "restrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v8, 0x0

    .line 508
    .local v8, "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v9, 0x0

    .line 509
    .local v9, "unrestrictedCandidateAmount":F
    const/4 v6, 0x0

    .line 510
    .local v6, "restrictedCandidateAmount":F
    const/4 v10, 0x0

    .line 511
    .local v10, "unrestrictedCandidateIsNew":Z
    const/4 v7, 0x0

    .line 512
    .local v7, "restrictedCandidateIsNew":Z
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 513
    .local v3, "current":I
    const/4 v2, 0x0

    .line 514
    .local v2, "counter":I
    const/4 v1, 0x0

    .line 515
    .local v1, "candidateAmount":F
    :goto_a
    const/4 v12, -0x1

    if-eq v3, v12, :cond_9f

    iget v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v12, :cond_9f

    .line 516
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v12, v3

    .line 517
    .local v0, "amount":F
    const v4, 0x3a83126f    # 0.001f

    .line 518
    .local v4, "epsilon":F
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v12, v12, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v13, v13, v3

    aget-object v11, v12, v13

    .line 519
    .local v11, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v12, 0x0

    cmpg-float v12, v0, v12

    if-gez v12, :cond_51

    .line 520
    neg-float v12, v4

    cmpl-float v12, v0, v12

    if-lez v12, :cond_37

    .line 521
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v13, 0x0

    aput v13, v12, v3

    .line 522
    const/4 v0, 0x0

    .line 523
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 532
    :cond_37
    :goto_37
    const/4 v12, 0x0

    cmpl-float v12, v0, v12

    if-eqz v12, :cond_4a

    .line 533
    iget-object v12, v11, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v12, v13, :cond_78

    .line 534
    if-nez v8, :cond_61

    .line 535
    move-object v8, v11

    .line 536
    move v9, v0

    .line 537
    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v10

    .line 565
    :cond_4a
    :goto_4a
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v12, v3

    add-int/lit8 v2, v2, 0x1

    .line 566
    goto :goto_a

    .line 526
    :cond_51
    cmpg-float v12, v0, v4

    if-gez v12, :cond_37

    .line 527
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v13, 0x0

    aput v13, v12, v3

    .line 528
    const/4 v0, 0x0

    .line 529
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_37

    .line 538
    :cond_61
    cmpl-float v12, v9, v0

    if-lez v12, :cond_6c

    .line 539
    move-object v8, v11

    .line 540
    move v9, v0

    .line 541
    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v10

    goto :goto_4a

    .line 542
    :cond_6c
    if-nez v10, :cond_4a

    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 543
    move-object v8, v11

    .line 544
    move v9, v0

    .line 545
    const/4 v10, 0x1

    goto :goto_4a

    .line 547
    :cond_78
    if-nez v8, :cond_4a

    .line 548
    const/4 v12, 0x0

    cmpg-float v12, v0, v12

    if-gez v12, :cond_4a

    .line 549
    if-nez v5, :cond_88

    .line 550
    move-object v5, v11

    .line 551
    move v6, v0

    .line 552
    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_4a

    .line 553
    :cond_88
    cmpl-float v12, v6, v0

    if-lez v12, :cond_93

    .line 554
    move-object v5, v11

    .line 555
    move v6, v0

    .line 556
    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_4a

    .line 557
    :cond_93
    if-nez v7, :cond_4a

    invoke-direct {p0, v11, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 558
    move-object v5, v11

    .line 559
    move v6, v0

    .line 560
    const/4 v7, 0x1

    goto :goto_4a

    .line 567
    .end local v0    # "amount":F
    .end local v4    # "epsilon":F
    .end local v11    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_9f
    if-eqz v8, :cond_a2

    .line 570
    .end local v8    # "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_a1
    return-object v8

    .restart local v8    # "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_a2
    move-object v8, v5

    goto :goto_a1
.end method

.method public final clear()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 385
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 386
    .local v1, "current":I
    const/4 v0, 0x0

    .line 387
    .local v0, "counter":I
    :goto_5
    if-eq v1, v5, :cond_23

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v3, :cond_23

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v1

    aget-object v2, v3, v4

    .line 389
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_1c

    .line 390
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 392
    :cond_1c
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    .line 393
    goto :goto_5

    .line 395
    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_23
    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 396
    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 397
    iput-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 398
    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 399
    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .registers 8
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 408
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v3, v5, :cond_7

    .line 419
    :cond_6
    :goto_6
    return v2

    .line 411
    :cond_7
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 412
    .local v1, "current":I
    const/4 v0, 0x0

    .line 413
    .local v0, "counter":I
    :goto_a
    if-eq v1, v5, :cond_6

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v3, :cond_6

    .line 414
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_1a

    .line 415
    const/4 v2, 0x1

    goto :goto_6

    .line 417
    :cond_1a
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public display()V
    .registers 7

    .prologue
    .line 779
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 780
    .local v0, "count":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "{ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_3c

    .line 782
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 783
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v2, :cond_15

    .line 781
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 786
    :cond_15
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_12

    .line 788
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3c
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method divideByAmount(F)V
    .registers 6
    .param p1, "amount"    # F

    .prologue
    .line 458
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 459
    .local v1, "current":I
    const/4 v0, 0x0

    .line 460
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_18

    .line 461
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    .line 462
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 464
    :cond_18
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .registers 6
    .param p1, "v"    # Landroidx/constraintlayout/solver/SolverVariable;

    .prologue
    .line 759
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 760
    .local v1, "current":I
    const/4 v0, 0x0

    .line 761
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1e

    .line 762
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v1

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 763
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 767
    :goto_16
    return v2

    .line 765
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 767
    :cond_1e
    const/4 v2, 0x0

    goto :goto_16
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 7

    .prologue
    .line 668
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v4, :cond_32

    .line 670
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 671
    .local v1, "current":I
    const/4 v0, 0x0

    .line 672
    .local v0, "counter":I
    const/4 v2, 0x0

    .line 673
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_8
    const/4 v4, -0x1

    if-eq v1, v4, :cond_34

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v4, :cond_34

    .line 674
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2b

    .line 678
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v3, v4, v5

    .line 679
    .local v3, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_2a

    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget v5, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_2b

    .line 680
    :cond_2a
    move-object v2, v3

    .line 683
    .end local v3    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2b
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 687
    .end local v0    # "counter":I
    .end local v1    # "current":I
    .end local v2    # "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_32
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    :cond_34
    return-object v2
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 11
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroidx/constraintlayout/solver/SolverVariable;

    .prologue
    .line 691
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 692
    .local v1, "current":I
    const/4 v0, 0x0

    .line 693
    .local v0, "counter":I
    const/4 v3, 0x0

    .line 694
    .local v3, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v5, 0x0

    .line 695
    .local v5, "value":F
    :goto_5
    const/4 v6, -0x1

    if-eq v1, v6, :cond_46

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v6, :cond_46

    .line 696
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v1

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3f

    .line 700
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    aget-object v4, v6, v7

    .line 701
    .local v4, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz p1, :cond_27

    iget v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_3f

    :cond_27
    if-eq v4, p2, :cond_3f

    .line 702
    iget-object v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v6, v7, :cond_35

    iget-object v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_3f

    .line 704
    :cond_35
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v6, v1

    .line 705
    .local v2, "currentValue":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_3f

    .line 706
    move v5, v2

    .line 707
    move-object v3, v4

    .line 712
    .end local v2    # "currentValue":F
    .end local v4    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_3f
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 714
    :cond_46
    return-object v3
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 724
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 725
    .local v1, "current":I
    const/4 v0, 0x0

    .line 726
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1e

    .line 727
    if-ne v0, p1, :cond_17

    .line 728
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 732
    :goto_16
    return-object v2

    .line 730
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 732
    :cond_1e
    const/4 v2, 0x0

    goto :goto_16
.end method

.method final getVariableValue(I)F
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 742
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 743
    .local v1, "current":I
    const/4 v0, 0x0

    .line 744
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_18

    .line 745
    if-ne v0, p1, :cond_11

    .line 746
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    .line 750
    :goto_10
    return v2

    .line 748
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 750
    :cond_18
    const/4 v2, 0x0

    goto :goto_10
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 5

    .prologue
    .line 428
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 429
    .local v1, "current":I
    const/4 v0, 0x0

    .line 430
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1c

    .line 431
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 432
    const/4 v2, 0x1

    .line 436
    :goto_14
    return v2

    .line 434
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 436
    :cond_1c
    const/4 v2, 0x0

    goto :goto_14
.end method

.method invert()V
    .registers 6

    .prologue
    .line 443
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 444
    .local v1, "current":I
    const/4 v0, 0x0

    .line 445
    .local v0, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v2, :cond_1a

    .line 446
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 447
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 449
    :cond_1a
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 13
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 117
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_c

    .line 118
    invoke-virtual {p0, p1, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 213
    :cond_b
    :goto_b
    return-void

    .line 122
    :cond_c
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v5, v8, :cond_52

    .line 123
    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 124
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v5, v6

    .line 125
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v7, v5, v6

    .line 126
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v8, v5, v6

    .line 127
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 128
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 129
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 130
    iget-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v5, :cond_b

    .line 132
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 133
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v5, v6, :cond_b

    .line 134
    iput-boolean v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 135
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_b

    .line 140
    :cond_52
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 141
    .local v2, "current":I
    const/4 v4, -0x1

    .line 142
    .local v4, "previous":I
    const/4 v1, 0x0

    .line 143
    .local v1, "counter":I
    :goto_56
    if-eq v2, v8, :cond_79

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v5, :cond_79

    .line 144
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_69

    .line 145
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v5, v2

    goto :goto_b

    .line 148
    :cond_69
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v5, v6, :cond_72

    .line 149
    move v4, v2

    .line 151
    :cond_72
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 157
    :cond_79
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, v5, 0x1

    .line 158
    .local v0, "availableIndice":I
    iget-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v5, :cond_8b

    .line 161
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    aget v5, v5, v6

    if-ne v5, v8, :cond_124

    .line 162
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 167
    :cond_8b
    :goto_8b
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_a4

    .line 168
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a4

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_98
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-ge v3, v5, :cond_a4

    .line 171
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v3

    if-ne v5, v8, :cond_129

    .line 172
    move v0, v3

    .line 179
    .end local v3    # "i":I
    :cond_a4
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_d6

    .line 180
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v5

    .line 181
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 182
    iput-boolean v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 183
    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 184
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 185
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 186
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 190
    :cond_d6
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, v5, v0

    .line 191
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v5, v0

    .line 192
    if-eq v4, v8, :cond_12d

    .line 193
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v6, v4

    aput v6, v5, v0

    .line 194
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, v5, v4

    .line 199
    :goto_ee
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 200
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 201
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 202
    iget-boolean v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v5, :cond_109

    .line 204
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 206
    :cond_109
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v5, v6, :cond_112

    .line 207
    iput-boolean v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 209
    :cond_112
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-lt v5, v6, :cond_b

    .line 210
    iput-boolean v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 211
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto/16 :goto_b

    .line 164
    :cond_124
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v5

    goto/16 :goto_8b

    .line 170
    .restart local v3    # "i":I
    :cond_129
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_98

    .line 196
    .end local v3    # "i":I
    :cond_12d
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v6, v5, v0

    .line 197
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_ee
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .registers 10
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 345
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v5, p1, :cond_9

    .line 346
    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 348
    :cond_9
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v5, v6, :cond_e

    .line 378
    :cond_d
    :goto_d
    return v4

    .line 351
    :cond_e
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 352
    .local v1, "current":I
    const/4 v3, -0x1

    .line 353
    .local v3, "previous":I
    const/4 v0, 0x0

    .line 354
    .local v0, "counter":I
    :goto_12
    if-eq v1, v6, :cond_d

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v5, :cond_d

    .line 355
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v5, v1

    .line 356
    .local v2, "idx":I
    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v5, :cond_55

    .line 357
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, v4, :cond_4c

    .line 358
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v1

    iput v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 363
    :goto_2a
    if-eqz p2, :cond_31

    .line 364
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 366
    :cond_31
    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 367
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 368
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v6, v4, v1

    .line 369
    iget-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_47

    .line 371
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 373
    :cond_47
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    goto :goto_d

    .line 360
    :cond_4c
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v5, v1

    aput v5, v4, v3

    goto :goto_2a

    .line 375
    :cond_55
    move v3, v1

    .line 376
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 377
    goto :goto_12
.end method

.method sizeInBytes()I
    .registers 3

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 774
    add-int/lit8 v0, v0, 0x24

    .line 775
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 798
    const-string v2, ""

    .line 799
    .local v2, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 800
    .local v1, "current":I
    const/4 v0, 0x0

    .line 801
    .local v0, "counter":I
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v3, :cond_5c

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 807
    :cond_5c
    return-object v2
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .registers 15
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .prologue
    const/4 v10, -0x1

    .line 583
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 584
    .local v1, "current":I
    const/4 v0, 0x0

    .line 585
    .local v0, "counter":I
    :goto_4
    if-eq v1, v10, :cond_5e

    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v8, :cond_5e

    .line 586
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v1

    iget-object v9, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_57

    .line 587
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v8, v1

    .line 588
    .local v7, "value":F
    iget-object v8, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v8, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 590
    iget-object v6, p2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 591
    .local v6, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v3, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 592
    .local v3, "definitionCurrent":I
    const/4 v2, 0x0

    .line 593
    .local v2, "definitionCounter":I
    :goto_24
    if-eq v3, v10, :cond_44

    iget v8, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v8, :cond_44

    .line 594
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v3

    aget-object v5, v8, v9

    .line 596
    .local v5, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v8, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v8, v3

    .line 597
    .local v4, "definitionValue":F
    mul-float v8, v4, v7

    invoke-virtual {p0, v5, v8, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 598
    iget-object v8, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v8, v3

    add-int/lit8 v2, v2, 0x1

    .line 599
    goto :goto_24

    .line 600
    .end local v4    # "definitionValue":F
    .end local v5    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_44
    iget v8, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v9, p2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 601
    if-eqz p3, :cond_53

    .line 602
    iget-object v8, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 608
    :cond_53
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 609
    const/4 v0, 0x0

    .line 610
    goto :goto_4

    .line 612
    .end local v2    # "definitionCounter":I
    .end local v3    # "definitionCurrent":I
    .end local v6    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v7    # "value":F
    :cond_57
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 614
    :cond_5e
    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 15
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "rows"    # [Landroidx/constraintlayout/solver/ArrayRow;

    .prologue
    .line 626
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 627
    .local v1, "current":I
    const/4 v0, 0x0

    .line 628
    .local v0, "counter":I
    :goto_3
    const/4 v10, -0x1

    if-eq v1, v10, :cond_6a

    iget v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v0, v10, :cond_6a

    .line 629
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v11, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v1

    aget-object v9, v10, v11

    .line 630
    .local v9, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_63

    .line 631
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v10, v1

    .line 632
    .local v8, "value":F
    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 634
    iget v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v2, p2, v10

    .line 635
    .local v2, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v10, :cond_52

    .line 636
    iget-object v7, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 637
    .local v7, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v4, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 638
    .local v4, "definitionCurrent":I
    const/4 v3, 0x0

    .line 639
    .local v3, "definitionCounter":I
    :goto_30
    const/4 v10, -0x1

    if-eq v4, v10, :cond_52

    iget v10, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v10, :cond_52

    .line 640
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v4

    aget-object v6, v10, v11

    .line 642
    .local v6, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v10, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v10, v4

    .line 643
    .local v5, "definitionValue":F
    mul-float v10, v5, v8

    const/4 v11, 0x1

    invoke-virtual {p0, v6, v10, v11}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 644
    iget-object v10, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v10, v4

    .line 645
    add-int/lit8 v3, v3, 0x1

    .line 646
    goto :goto_30

    .line 648
    .end local v3    # "definitionCounter":I
    .end local v4    # "definitionCurrent":I
    .end local v5    # "definitionValue":F
    .end local v6    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_52
    iget v10, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v11, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 649
    iget-object v10, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 654
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 655
    const/4 v0, 0x0

    .line 656
    goto :goto_3

    .line 658
    .end local v2    # "definition":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v8    # "value":F
    :cond_63
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v10, v1

    add-int/lit8 v0, v0, 0x1

    .line 659
    goto :goto_3

    .line 660
    .end local v9    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6a
    return-void
.end method
