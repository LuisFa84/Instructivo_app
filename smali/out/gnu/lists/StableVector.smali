.class public Lgnu/lists/StableVector;
.super Lgnu/lists/GapVector;
.source "StableVector.java"


# static fields
.field static final END_POSITION:I = 0x1

.field protected static final FREE_POSITION:I = -0x2

.field static final START_POSITION:I


# instance fields
.field protected free:I

.field protected positions:[I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lgnu/lists/GapVector;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .registers 6
    .param p1, "base"    # Lgnu/lists/SimpleVector;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Lgnu/lists/GapVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 79
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    .line 80
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aput v2, v1, v2

    .line 81
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    invoke-virtual {p1}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    or-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lgnu/lists/StableVector;->free:I

    .line 83
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v1

    .local v0, "i":I
    :goto_21
    add-int/lit8 v0, v0, -0x1

    if-le v0, v3, :cond_2e

    .line 85
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget v2, p0, Lgnu/lists/StableVector;->free:I

    aput v2, v1, v0

    .line 86
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_21

    .line 88
    :cond_2e
    return-void
.end method


# virtual methods
.method protected addPos(ILjava/lang/Object;)I
    .registers 7
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 286
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, p1

    .line 287
    .local v1, "ppos":I
    ushr-int/lit8 v0, v1, 0x1

    .line 288
    .local v0, "index":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v2, :cond_10

    .line 289
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 291
    :cond_10
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1c

    .line 293
    if-nez p1, :cond_20

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 298
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0, p2}, Lgnu/lists/StableVector;->add(ILjava/lang/Object;)V

    .line 299
    return p1

    .line 296
    :cond_20
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v1, 0x1

    aput v3, v2, p1

    goto :goto_1c
.end method

.method protected adjustPositions(III)V
    .registers 10
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "delta"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 263
    iget v3, p0, Lgnu/lists/StableVector;->free:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_a

    .line 264
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 269
    :cond_a
    xor-int/2addr p1, v5

    .line 270
    xor-int/2addr p2, v5

    .line 272
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v3

    .local v0, "i":I
    :cond_f
    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_27

    .line 274
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v3, v0

    .line 275
    .local v2, "pos":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_f

    .line 277
    xor-int v1, v2, v5

    .line 278
    .local v1, "index":I
    if-lt v1, p1, :cond_f

    if-gt v1, p2, :cond_f

    .line 279
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    add-int v4, v2, p3

    aput v4, v3, v0

    goto :goto_f

    .line 282
    .end local v1    # "index":I
    .end local v2    # "pos":I
    :cond_27
    return-void
.end method

.method protected allocPositionIndex()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 96
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_9

    .line 97
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 98
    :cond_9
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    if-gez v4, :cond_28

    .line 100
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v4

    .line 101
    .local v1, "oldLength":I
    mul-int/lit8 v4, v1, 0x2

    new-array v3, v4, [I

    .line 102
    .local v3, "tmp":[I
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    invoke-static {v4, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    mul-int/lit8 v0, v1, 0x2

    .local v0, "i":I
    :goto_1b
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_26

    .line 105
    iget v4, p0, Lgnu/lists/StableVector;->free:I

    aput v4, v3, v0

    .line 106
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_1b

    .line 108
    :cond_26
    iput-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    .line 110
    .end local v0    # "i":I
    .end local v1    # "oldLength":I
    .end local v3    # "tmp":[I
    :cond_28
    iget v2, p0, Lgnu/lists/StableVector;->free:I

    .line 111
    .local v2, "pos":I
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    iget v5, p0, Lgnu/lists/StableVector;->free:I

    aget v4, v4, v5

    iput v4, p0, Lgnu/lists/StableVector;->free:I

    .line 112
    return v2
.end method

.method protected chainFreelist()V
    .registers 5

    .prologue
    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lgnu/lists/StableVector;->free:I

    .line 42
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v2

    .local v0, "i":I
    :cond_6
    :goto_6
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1b

    .line 44
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, v0

    .line 45
    .local v1, "pos":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 47
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    iget v3, p0, Lgnu/lists/StableVector;->free:I

    aput v3, v2, v0

    .line 48
    iput v0, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_6

    .line 51
    .end local v1    # "pos":I
    :cond_1b
    return-void
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 6
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 341
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-super {p0, v0, v1, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 342
    return-void
.end method

.method public copyPos(I)I
    .registers 5
    .param p1, "ipos"    # I

    .prologue
    .line 180
    const/4 v1, 0x1

    if-le p1, v1, :cond_10

    .line 182
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 183
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v2, p1

    aput v2, v1, v0

    .line 184
    move p1, v0

    .line 186
    .end local v0    # "i":I
    :cond_10
    return p1
.end method

.method public createPos(IZ)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 125
    :goto_6
    return v2

    .line 119
    :cond_7
    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lgnu/lists/StableVector;->size()I

    move-result v3

    if-ne p1, v3, :cond_11

    move v2, v1

    .line 120
    goto :goto_6

    .line 121
    :cond_11
    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    if-gt p1, v3, :cond_1b

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    if-ne p1, v3, :cond_21

    if-eqz p2, :cond_21

    .line 122
    :cond_1b
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 123
    :cond_21
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 124
    .local v0, "ipos":I
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    shl-int/lit8 v4, p1, 0x1

    if-eqz p2, :cond_30

    :goto_2b
    or-int/2addr v1, v4

    aput v1, v3, v0

    move v2, v0

    .line 125
    goto :goto_6

    :cond_30
    move v1, v2

    .line 124
    goto :goto_2b
.end method

.method public endPos()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .registers 6
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 191
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/StableVector;->fillPosRange(IILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected gapReserve(II)V
    .registers 11
    .param p1, "where"    # I
    .param p2, "needed"    # I

    .prologue
    .line 227
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 228
    .local v1, "oldGapEnd":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 229
    .local v2, "oldGapStart":I
    sub-int v4, v1, v2

    if-le p2, v4, :cond_43

    .line 231
    iget-object v4, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v3, v4, Lgnu/lists/SimpleVector;->size:I

    .line 232
    .local v3, "oldLength":I
    invoke-super {p0, p1, p2}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 233
    iget-object v4, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v4, Lgnu/lists/SimpleVector;->size:I

    .line 234
    .local v0, "newLength":I
    if-ne p1, v2, :cond_23

    .line 235
    shl-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v0, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v0, v3

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 248
    .end local v0    # "newLength":I
    .end local v3    # "oldLength":I
    :cond_22
    :goto_22
    return-void

    .line 241
    .restart local v0    # "newLength":I
    .restart local v3    # "oldLength":I
    :cond_23
    shl-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v2, v1

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 243
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v0, 0x1

    or-int/lit8 v5, v5, 0x1

    iget v6, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v7, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_22

    .line 246
    .end local v0    # "newLength":I
    .end local v3    # "oldLength":I
    :cond_43
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    if-eq p1, v4, :cond_22

    .line 247
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->shiftGap(I)V

    goto :goto_22
.end method

.method public hasNext(I)Z
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    .line 135
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, p1

    .line 136
    .local v1, "ppos":I
    ushr-int/lit8 v0, v1, 0x1

    .line 137
    .local v0, "index":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v2, :cond_10

    .line 138
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 139
    :cond_10
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    if-ge v0, v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method protected isAfterPos(I)Z
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public nextIndex(I)I
    .registers 5
    .param p1, "ipos"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p1

    ushr-int/lit8 v0, v1, 0x1

    .line 162
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-le v0, v1, :cond_10

    .line 163
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 164
    :cond_10
    return v0
.end method

.method public nextPos(I)I
    .registers 7
    .param p1, "ipos"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v3, p1

    .line 145
    .local v1, "ppos":I
    ushr-int/lit8 v0, v1, 0x1

    .line 146
    .local v0, "index":I
    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v0, v3, :cond_11

    .line 147
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 148
    :cond_11
    iget-object v3, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v3}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v3

    if-lt v0, v3, :cond_1d

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->releasePos(I)V

    .line 156
    :goto_1c
    return v2

    .line 153
    :cond_1d
    if-nez p1, :cond_24

    .line 154
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 155
    :cond_24
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v1, 0x1

    aput v3, v2, p1

    move v2, p1

    .line 156
    goto :goto_1c
.end method

.method public releasePos(I)V
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 169
    const/4 v0, 0x2

    if-lt p1, v0, :cond_13

    .line 171
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 172
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 173
    :cond_b
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    iget v1, p0, Lgnu/lists/StableVector;->free:I

    aput v1, v0, p1

    .line 174
    iput p1, p0, Lgnu/lists/StableVector;->free:I

    .line 176
    :cond_13
    return-void
.end method

.method protected removePosRange(II)V
    .registers 11
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .prologue
    .line 304
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    aget v6, v6, p1

    iget-object v7, p0, Lgnu/lists/StableVector;->positions:[I

    aget v7, v7, p2

    invoke-super {p0, v6, v7}, Lgnu/lists/GapVector;->removePosRange(II)V

    .line 307
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 308
    .local v4, "low":I
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 309
    .local v0, "high":I
    iget v6, p0, Lgnu/lists/StableVector;->free:I

    const/4 v7, -0x1

    if-lt v6, v7, :cond_17

    .line 310
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 311
    :cond_17
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v6

    .local v1, "i":I
    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_4c

    .line 313
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    aget v5, v6, v1

    .line 314
    .local v5, "pos":I
    const/4 v6, -0x2

    if-eq v5, v6, :cond_1a

    .line 316
    shr-int/lit8 v2, v5, 0x1

    .line 317
    .local v2, "index":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_3d

    const/4 v3, 0x1

    .line 318
    .local v3, "isAfter":Z
    :goto_2c
    if-eqz v3, :cond_3f

    .line 320
    if-lt v2, v4, :cond_1a

    if-ge v2, v0, :cond_1a

    .line 321
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    iget v7, p0, Lgnu/lists/StableVector;->gapEnd:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    goto :goto_1a

    .line 317
    .end local v3    # "isAfter":Z
    :cond_3d
    const/4 v3, 0x0

    goto :goto_2c

    .line 325
    .restart local v3    # "isAfter":Z
    :cond_3f
    if-le v2, v4, :cond_1a

    if-gt v2, v0, :cond_1a

    .line 326
    iget-object v6, p0, Lgnu/lists/StableVector;->positions:[I

    iget v7, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v7, v7, 0x1

    aput v7, v6, v1

    goto :goto_1a

    .line 330
    .end local v2    # "index":I
    .end local v3    # "isAfter":Z
    .end local v5    # "pos":I
    :cond_4c
    return-void
.end method

.method protected shiftGap(I)V
    .registers 8
    .param p1, "newGapStart"    # I

    .prologue
    .line 196
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 197
    .local v4, "oldGapStart":I
    sub-int v1, p1, v4

    .line 199
    .local v1, "delta":I
    if-lez v1, :cond_1b

    .line 201
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 202
    .local v3, "low":I
    add-int v2, v3, v1

    .line 203
    .local v2, "high":I
    sub-int v5, v4, v3

    shl-int/lit8 v0, v5, 0x1

    .line 206
    .local v0, "adjust":I
    shl-int/lit8 v3, v3, 0x1

    .line 207
    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v2, v5, -0x1

    .line 218
    :goto_14
    invoke-super {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 220
    invoke-virtual {p0, v3, v2, v0}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 221
    .end local v0    # "adjust":I
    .end local v2    # "high":I
    .end local v3    # "low":I
    :cond_1a
    return-void

    .line 209
    :cond_1b
    if-eq p1, v4, :cond_1a

    .line 214
    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 215
    .restart local v3    # "low":I
    shl-int/lit8 v2, v4, 0x1

    .line 216
    .restart local v2    # "high":I
    iget v5, p0, Lgnu/lists/StableVector;->gapEnd:I

    sub-int/2addr v5, v4

    shl-int/lit8 v0, v5, 0x1

    .restart local v0    # "adjust":I
    goto :goto_14
.end method

.method public startPos()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected unchainFreelist()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 56
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_f

    .line 58
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v2, v0

    .line 59
    .local v1, "next":I
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aput v3, v2, v0

    .line 60
    move v0, v1

    .line 61
    goto :goto_3

    .line 62
    .end local v1    # "next":I
    :cond_f
    iput v3, p0, Lgnu/lists/StableVector;->free:I

    .line 63
    return-void
.end method
