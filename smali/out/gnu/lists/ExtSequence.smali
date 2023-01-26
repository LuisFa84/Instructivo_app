.class public abstract Lgnu/lists/ExtSequence;
.super Lgnu/lists/AbstractSequence;
.source "ExtSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method


# virtual methods
.method public copyPos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 15
    if-gtz p1, :cond_3

    .line 17
    .end local p1    # "ipos":I
    :goto_2
    return p1

    .restart local p1    # "ipos":I
    :cond_3
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result p1

    goto :goto_2
.end method

.method protected isAfterPos(I)Z
    .registers 5
    .param p1, "ipos"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    if-gtz p1, :cond_9

    .line 29
    if-gez p1, :cond_7

    .line 30
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 29
    goto :goto_6

    .line 30
    :cond_9
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    iget v2, v2, Lgnu/lists/SeqPosition;->ipos:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method protected nextIndex(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 35
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lgnu/lists/ExtSequence;->size()I

    move-result v0

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v0

    goto :goto_7
.end method

.method protected releasePos(I)V
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 22
    if-lez p1, :cond_7

    .line 23
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v0, p1}, Lgnu/lists/PositionManager;->release(I)V

    .line 24
    :cond_7
    return-void
.end method
