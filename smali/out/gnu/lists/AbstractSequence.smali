.class public abstract Lgnu/lists/AbstractSequence;
.super Ljava/lang/Object;
.source "AbstractSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I
    .registers 5
    .param p0, "seq1"    # Lgnu/lists/AbstractSequence;
    .param p1, "pos1"    # I
    .param p2, "seq2"    # Lgnu/lists/AbstractSequence;
    .param p3, "pos2"    # I

    .prologue
    .line 696
    if-ne p0, p2, :cond_7

    .line 697
    invoke-virtual {p0, p1, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    .line 698
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v0

    goto :goto_6
.end method

.method public static unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 245
    .local v0, "pos":I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    .line 246
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 247
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "changed":Z
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v2

    .line 261
    .local v2, "pos":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v2

    .line 264
    const/4 v0, 0x1

    goto :goto_a

    .line 266
    :cond_1a
    invoke-virtual {p0, v2}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 267
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 253
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .registers 4
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 231
    const-string v0, "addPos"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 380
    return-void
.end method

.method public compare(II)I
    .registers 6
    .param p1, "ipos1"    # I
    .param p2, "ipos2"    # I

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 641
    .local v0, "i1":I
    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    .line 642
    .local v1, "i2":I
    if-ge v0, v1, :cond_c

    const/4 v2, -0x1

    :goto_b
    return v2

    :cond_c
    if-le v0, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public final compare(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)I
    .registers 5
    .param p1, "i1"    # Lgnu/lists/SeqPosition;
    .param p2, "i2"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 647
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget v1, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    return v0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .registers 5
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 808
    instance-of v0, p0, Lgnu/lists/Sequence;

    .line 809
    .local v0, "isSequence":Z
    if-eqz v0, :cond_9

    .line 810
    const-string v1, "#sequence"

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 811
    :cond_9
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 812
    if-eqz v0, :cond_19

    .line 813
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    .line 814
    :cond_19
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 785
    .local v0, "next":I
    if-nez v0, :cond_8

    .line 786
    const/4 v1, 0x0

    .line 788
    :goto_7
    return v1

    .line 787
    :cond_8
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 788
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 6
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 793
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 804
    :goto_6
    return-void

    .line 795
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    .line 796
    .local v0, "it":I
    :goto_b
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->equals(II)Z

    move-result v1

    if-nez v1, :cond_29

    .line 798
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 800
    :cond_1d
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 801
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_b

    .line 803
    :cond_29
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    goto :goto_6
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    .local v1, "i":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 183
    const/4 v2, 0x0

    .line 185
    .end local v0    # "e":Ljava/lang/Object;
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x1

    goto :goto_15
.end method

.method public copyPos(I)I
    .registers 2
    .param p1, "ipos"    # I

    .prologue
    .line 426
    return p1
.end method

.method public abstract createPos(IZ)I
.end method

.method public createRelativePos(IIZ)I
    .registers 5
    .param p1, "pos"    # I
    .param p2, "delta"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    return v0
.end method

.method public final elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public endPos()I
    .registers 2

    .prologue
    .line 404
    const/4 v0, -0x1

    return v0
.end method

.method public equals(II)Z
    .registers 4
    .param p1, "ipos1"    # I
    .param p2, "ipos2"    # I

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 718
    instance-of v8, p0, Ljava/util/List;

    if-eqz v8, :cond_a

    instance-of v8, p1, Ljava/util/List;

    if-nez v8, :cond_10

    .line 720
    :cond_a
    if-ne p0, p1, :cond_e

    :goto_c
    move v7, v6

    .line 758
    .end local p1    # "o":Ljava/lang/Object;
    :cond_d
    :goto_d
    return v7

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_e
    move v6, v7

    .line 720
    goto :goto_c

    .line 721
    :cond_10
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 722
    .local v2, "it1":Ljava/util/Iterator;
    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 733
    .local v3, "it2":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 734
    .local v4, "more1":Z
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 740
    .local v5, "more2":Z
    if-ne v4, v5, :cond_d

    .line 742
    if-nez v4, :cond_28

    move v7, v6

    .line 743
    goto :goto_d

    .line 745
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 746
    .local v0, "e1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 752
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_35

    .line 754
    if-eqz v1, :cond_1a

    goto :goto_d

    .line 757
    :cond_35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_d
.end method

.method public fill(IILjava/lang/Object;)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 106
    .local v0, "i":I
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    .line 107
    .local v1, "limit":I
    :goto_a
    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v2

    if-gez v2, :cond_18

    .line 108
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_a

    .line 109
    :cond_18
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 110
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 111
    return-void
.end method

.method public fill(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    goto :goto_4

    .line 93
    :cond_e
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .registers 6
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    .line 98
    .local v0, "i":I
    :goto_4
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    if-gez v1, :cond_12

    .line 99
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_4

    .line 100
    :cond_12
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 101
    return-void
.end method

.method public firstAttributePos(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public firstChildPos(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public firstChildPos(ILgnu/lists/ItemPredicate;)I
    .registers 6
    .param p1, "ipos"    # I
    .param p2, "predicate"    # Lgnu/lists/ItemPredicate;

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 540
    .local v0, "child":I
    if-nez v0, :cond_9

    move v0, v1

    .line 545
    .end local v0    # "child":I
    :cond_8
    :goto_8
    return v0

    .line 542
    .restart local v0    # "child":I
    :cond_9
    invoke-interface {p2, p0, v0}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 545
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2, v1}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    goto :goto_8
.end method

.method protected fromEndIndex(I)I
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 445
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public get([I)Ljava/lang/Object;
    .registers 3
    .param p1, "indexes"    # [I

    .prologue
    .line 50
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeLength()I
    .registers 2

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method protected getContainingSequenceSize(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    return v0
.end method

.method public getEffectiveIndex([I)I
    .registers 3
    .param p1, "indexes"    # [I

    .prologue
    .line 45
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method protected getIndexDifference(II)I
    .registers 5
    .param p1, "ipos1"    # I
    .param p2, "ipos0"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getIterator()Lgnu/lists/SeqPosition;
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 201
    new-instance v0, Lgnu/lists/SeqPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    return-object v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 206
    new-instance v0, Lgnu/lists/SeqPosition;

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method

.method public getLowBound(I)I
    .registers 3
    .param p1, "dim"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getNextKind(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 595
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 596
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 605
    .local v0, "index":I
    if-gtz v0, :cond_9

    .line 606
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 607
    :goto_8
    return-object v1

    :cond_9
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8
.end method

.method public getSize(I)I
    .registers 3
    .param p1, "dim"    # I

    .prologue
    .line 65
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .registers 3
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public final gotoChildrenStart(Lgnu/lists/TreePosition;)Z
    .registers 4
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .prologue
    .line 519
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->getPos()I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 520
    .local v0, "ipos":I
    if-nez v0, :cond_c

    .line 521
    const/4 v1, 0x0

    .line 523
    :goto_b
    return v1

    .line 522
    :cond_c
    invoke-virtual {p1, p0, v0}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 523
    const/4 v1, 0x1

    goto :goto_b
.end method

.method protected gotoParent(Lgnu/lists/TreePosition;)Z
    .registers 3
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .prologue
    .line 567
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_6

    .line 568
    const/4 v0, 0x0

    .line 570
    :goto_5
    return v0

    .line 569
    :cond_6
    invoke-virtual {p1}, Lgnu/lists/TreePosition;->pop()V

    .line 570
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasNext(I)Z
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected hasPrevious(I)Z
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 704
    const/4 v0, 0x1

    .line 705
    .local v0, "hash":I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1c

    .line 707
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 708
    .local v2, "obj":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_17

    const/4 v3, 0x0

    :goto_14
    add-int v0, v4, v3

    .line 709
    goto :goto_5

    .line 708
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_14

    .line 710
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1c
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "i":I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, "iter":I
    :goto_5
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_20

    .line 122
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "v":Ljava/lang/Object;
    if-nez p1, :cond_17

    if-nez v2, :cond_1d

    .line 125
    :cond_13
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 129
    .end local v0    # "i":I
    .end local v2    # "v":Ljava/lang/Object;
    :goto_16
    return v0

    .line 123
    .restart local v0    # "i":I
    .restart local v2    # "v":Ljava/lang/Object;
    :cond_17
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 120
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 129
    .end local v2    # "v":Ljava/lang/Object;
    :cond_20
    const/4 v0, -0x1

    goto :goto_16
.end method

.method protected isAfterPos(I)Z
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 387
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->getIterator()Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    .local v1, "n":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    .line 138
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "e":Ljava/lang/Object;
    if-nez p1, :cond_11

    if-nez v0, :cond_4

    .line 142
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "n":I
    :goto_10
    return v1

    .line 139
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "n":I
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_10

    .line 142
    .end local v0    # "e":Ljava/lang/Object;
    :cond_18
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method protected nextIndex(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 440
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public final nextIndex(Lgnu/lists/SeqPosition;)I
    .registers 3
    .param p1, "pos"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 628
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .registers 7
    .param p1, "startPos"    # I
    .param p2, "type"    # Lgnu/lists/ItemPredicate;
    .param p3, "endPos"    # I
    .param p4, "descend"    # Z

    .prologue
    .line 155
    if-eqz p4, :cond_9

    .line 156
    const-string v1, "nextMatching with descend"

    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 157
    :cond_9
    move v0, p1

    .line 160
    .local v0, "ipos":I
    :cond_a
    invoke-virtual {p0, v0, p3}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    if-ltz v1, :cond_12

    .line 161
    const/4 v1, 0x0

    .line 164
    :goto_11
    return v1

    .line 162
    :cond_12
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 163
    invoke-interface {p2, p0, v0}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    .line 164
    goto :goto_11
.end method

.method public nextPos(I)I
    .registers 5
    .param p1, "ipos"    # I

    .prologue
    const/4 v2, 0x1

    .line 491
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 492
    const/4 v0, 0x0

    .line 495
    :goto_8
    return v0

    .line 493
    :cond_9
    invoke-virtual {p0, p1, v2, v2}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 494
    .local v0, "next":I
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    goto :goto_8
.end method

.method public parentPos(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 562
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    return v0
.end method

.method public previousPos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 509
    :goto_7
    return v0

    .line 507
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 508
    .local v0, "next":I
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    goto :goto_7
.end method

.method public rank()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected releasePos(I)V
    .registers 2
    .param p1, "ipos"    # I

    .prologue
    .line 412
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 325
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v2

    if-lt p1, v2, :cond_e

    .line 326
    :cond_8
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 327
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    .line 328
    .local v0, "ipos":I
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 330
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 331
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 337
    .local v0, "index":I
    if-gez v0, :cond_9

    .line 342
    :goto_8
    return v2

    .line 339
    :cond_9
    invoke-virtual {p0, v0, v2}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    .line 340
    .local v1, "ipos":I
    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 341
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    move v2, v3

    .line 342
    goto :goto_8
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "changed":Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, "iter":I
    :cond_5
    :goto_5
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 351
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 354
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 355
    const/4 v0, 0x1

    goto :goto_5

    .line 358
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1b
    return v0
.end method

.method public removePos(II)V
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "count"    # I

    .prologue
    .line 303
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    .line 304
    .local v0, "rpos":I
    if-ltz p2, :cond_e

    .line 305
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 308
    :goto_a
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 309
    return-void

    .line 307
    :cond_e
    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    goto :goto_a
.end method

.method protected removePosRange(II)V
    .registers 4
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .prologue
    .line 320
    const-string v0, "removePosRange"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "changed":Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v1

    .local v1, "iter":I
    :cond_5
    :goto_5
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 366
    invoke-virtual {p0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    .line 367
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 369
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 370
    const/4 v0, 0x1

    goto :goto_5

    .line 373
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1b
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 86
    const-string v0, "set"

    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "indexes"    # [I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 613
    .local v0, "index":I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 614
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 615
    :cond_10
    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 621
    .local v0, "index":I
    if-nez v0, :cond_c

    .line 622
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 623
    :cond_c
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p2}, Lgnu/lists/AbstractSequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void
.end method

.method public abstract size()I
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .registers 5
    .param p1, "other"    # Lgnu/lists/AbstractSequence;

    .prologue
    .line 685
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 686
    .local v0, "id1":I
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 687
    .local v1, "id2":I
    if-ge v0, v1, :cond_c

    const/4 v2, -0x1

    :goto_b
    return v2

    :cond_c
    if-le v0, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public startPos()I
    .registers 2

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIx"    # I
    .param p2, "toIx"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(Lgnu/lists/SeqPosition;Lgnu/lists/SeqPosition;)Lgnu/lists/Sequence;
    .registers 5
    .param p1, "start"    # Lgnu/lists/SeqPosition;
    .param p2, "end"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 764
    iget v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    iget v1, p2, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/AbstractSequence;->subSequencePos(II)Lgnu/lists/Sequence;

    move-result-object v0

    return-object v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .registers 4
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .prologue
    .line 769
    new-instance v0, Lgnu/lists/SubSequence;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .prologue
    .line 652
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v4

    .line 653
    .local v4, "len":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 654
    .local v0, "arr":[Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    .line 655
    .local v3, "it":I
    const/4 v1, 0x0

    .line 656
    .local v1, "i":I
    :goto_b
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    if-eqz v3, :cond_1b

    .line 657
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_b

    .line 658
    :cond_1b
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "arr"    # [Ljava/lang/Object;

    .prologue
    .line 663
    array-length v0, p1

    .line 664
    .local v0, "alen":I
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->size()I

    move-result v4

    .line 665
    .local v4, "len":I
    if-le v4, v0, :cond_19

    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 668
    .local v1, "componentType":Ljava/lang/Class;
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, [Ljava/lang/Object;

    .line 669
    move v0, v4

    .line 672
    .end local v1    # "componentType":Ljava/lang/Class;
    :cond_19
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    .line 673
    .local v3, "it":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v3

    if-eqz v3, :cond_2d

    .line 675
    invoke-virtual {p0, v3}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 677
    :cond_2d
    if-ge v4, v0, :cond_32

    .line 678
    const/4 v5, 0x0

    aput-object v5, p1, v4

    .line 679
    :cond_32
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 832
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/lists/Sequence;

    if-eqz v1, :cond_10

    .line 833
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 834
    :cond_10
    const-string v1, ", "

    invoke-virtual {p0, v1, v0}, Lgnu/lists/AbstractSequence;->toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 835
    instance-of v1, p0, Lgnu/lists/Sequence;

    if-eqz v1, :cond_1e

    .line 836
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 837
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 6
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, "seen":Z
    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 821
    if-eqz v1, :cond_18

    .line 822
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :goto_10
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 824
    :cond_18
    const/4 v1, 0x1

    goto :goto_10

    .line 827
    :cond_1a
    return-void
.end method

.method protected unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/AbstractSequence;->unsupportedException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
