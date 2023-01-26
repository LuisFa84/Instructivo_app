.class public Lgnu/lists/SeqPosition;
.super Ljava/lang/Object;
.source "SeqPosition.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/util/Enumeration;


# instance fields
.field public ipos:I

.field public sequence:Lgnu/lists/AbstractSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .registers 2
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 50
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    iput p2, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 62
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;IZ)V
    .registers 5
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "offset"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 55
    invoke-virtual {p1, p2, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 56
    return-void
.end method

.method public static make(Lgnu/lists/AbstractSequence;I)Lgnu/lists/SeqPosition;
    .registers 4
    .param p0, "seq"    # Lgnu/lists/AbstractSequence;
    .param p1, "ipos"    # I

    .prologue
    .line 69
    new-instance v0, Lgnu/lists/SeqPosition;

    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 276
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->addPos(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/SeqPosition;->setPos(I)V

    .line 277
    return-void
.end method

.method public copy()Lgnu/lists/SeqPosition;
    .registers 5

    .prologue
    .line 74
    new-instance v0, Lgnu/lists/SeqPosition;

    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget-object v2, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;I)V

    return-object v0
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->release()V

    .line 334
    return-void
.end method

.method public final fromEndIndex()I
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->fromEndIndex(I)I

    move-result v0

    return v0
.end method

.method public getContainingSequenceSize()I
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getContainingSequenceSize(I)I

    move-result v0

    return v0
.end method

.method public getNext()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextKind()I
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    return v0
.end method

.method public getNextTypeName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextTypeObject()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPos()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    return v0
.end method

.method public getPrevious()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gotoChildrenStart()Z
    .registers 4

    .prologue
    .line 94
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 95
    .local v0, "child":I
    if-nez v0, :cond_e

    .line 96
    const/4 v1, 0x0

    .line 98
    :goto_d
    return v1

    .line 97
    :cond_e
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 98
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public final gotoEnd(Lgnu/lists/AbstractSequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;

    .prologue
    .line 84
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    .line 85
    return-void
.end method

.method public gotoNext()Z
    .registers 4

    .prologue
    .line 152
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 153
    .local v0, "next":I
    if-eqz v0, :cond_e

    .line 155
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 156
    const/4 v1, 0x1

    .line 161
    :goto_d
    return v1

    .line 160
    :cond_e
    const/4 v1, -0x1

    iput v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 161
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public gotoPrevious()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v3, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->previousPos(I)I

    move-result v0

    .line 171
    .local v0, "prev":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 173
    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 174
    const/4 v1, 0x1

    .line 179
    :goto_f
    return v1

    .line 178
    :cond_10
    iput v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    goto :goto_f
.end method

.method public final gotoStart(Lgnu/lists/AbstractSequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;

    .prologue
    .line 79
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SeqPosition;->setPos(Lgnu/lists/AbstractSequence;I)V

    .line 80
    return-void
.end method

.method public final hasMoreElements()Z
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->hasNext(I)Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->hasPrevious(I)Z

    move-result v0

    return v0
.end method

.method public isAfter()Z
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->gotoNext()Z

    move-result v1

    if-nez v1, :cond_14

    .line 143
    :cond_e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 144
    :cond_14
    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->gotoPrevious()Z

    move-result v1

    if-nez v1, :cond_14

    .line 188
    :cond_e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 189
    :cond_14
    return-object v0
.end method

.method public final previousIndex()I
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_10

    .line 326
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 329
    :cond_10
    return-void
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 271
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, -0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, Lgnu/lists/AbstractSequence;->removePos(II)V

    .line 272
    return-void

    .line 271
    :cond_11
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .registers 6
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "index"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 310
    :cond_b
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 311
    invoke-virtual {p1, p2, p3}, Lgnu/lists/AbstractSequence;->createPos(IZ)I

    move-result v0

    iput v0, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 312
    return-void
.end method

.method public set(Lgnu/lists/SeqPosition;)V
    .registers 4
    .param p1, "pos"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 316
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 318
    :cond_b
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 319
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v0

    iput v0, p1, Lgnu/lists/SeqPosition;->ipos:I

    .line 320
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 253
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->isAfter()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    invoke-virtual {p0, p1}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    .line 257
    :goto_9
    return-void

    .line 256
    :cond_a
    invoke-virtual {p0, p1}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setNext(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 261
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->setPosNext(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public setPos(I)V
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 303
    :cond_d
    iput p1, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 304
    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .registers 5
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_d

    .line 294
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 295
    :cond_d
    iput p2, p0, Lgnu/lists/SeqPosition;->ipos:I

    .line 296
    iput-object p1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 297
    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 266
    iget-object v0, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lgnu/lists/AbstractSequence;->setPosPrevious(ILjava/lang/Object;)V

    .line 267
    return-void
.end method

.method public toInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 347
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_29

    .line 349
    const-string v1, "null sequence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :goto_15
    const-string v1, " ipos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    iget v1, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 365
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :cond_29
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 338
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v1, :cond_9

    .line 339
    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->toInfo()Ljava/lang/String;

    move-result-object v1

    .line 341
    :goto_8
    return-object v1

    .line 340
    :cond_9
    iget-object v1, p0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "item":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_37

    const-string v1, "(null)"

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e
.end method
