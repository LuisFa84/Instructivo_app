.class public Lgnu/kawa/xml/Children;
.super Lgnu/mapping/MethodProc;
.source "Children.java"


# static fields
.field public static final children:Lgnu/kawa/xml/Children;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/xml/Children;

    invoke-direct {v0}, Lgnu/kawa/xml/Children;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Children;->children:Lgnu/kawa/xml/Children;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .registers 9
    .param p0, "tlist"    # Lgnu/lists/TreeList;
    .param p1, "index"    # I
    .param p2, "consumer"    # Lgnu/lists/Consumer;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    .line 17
    .local v0, "child":I
    if-gez v0, :cond_7

    .line 37
    :cond_6
    return-void

    .line 19
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v2

    .line 22
    .local v2, "limit":I
    :goto_b
    shl-int/lit8 v1, v0, 0x1

    .line 24
    .local v1, "ipos":I
    invoke-virtual {p0, v0, v2}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v3

    .line 26
    .local v3, "next":I
    move v4, v3

    .line 27
    .local v4, "next0":I
    if-ne v3, v0, :cond_18

    .line 28
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 29
    :cond_18
    if-ltz v3, :cond_6

    .line 31
    instance-of v5, p2, Lgnu/lists/PositionConsumer;

    if-eqz v5, :cond_26

    move-object v5, p2

    .line 32
    check-cast v5, Lgnu/lists/PositionConsumer;

    invoke-interface {v5, p0, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 35
    :goto_24
    move v0, v3

    .line 36
    goto :goto_b

    .line 34
    :cond_26
    invoke-virtual {p0, v0, v3, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    goto :goto_24
.end method

.method public static children(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "consumer"    # Lgnu/lists/Consumer;

    .prologue
    .line 41
    instance-of v1, p0, Lgnu/lists/TreeList;

    if-eqz v1, :cond_b

    .line 43
    check-cast p0, Lgnu/lists/TreeList;

    .end local p0    # "node":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 51
    :cond_a
    :goto_a
    return-void

    .line 45
    .restart local p0    # "node":Ljava/lang/Object;
    :cond_b
    instance-of v1, p0, Lgnu/lists/SeqPosition;

    if-eqz v1, :cond_a

    instance-of v1, p0, Lgnu/lists/TreePosition;

    if-nez v1, :cond_a

    move-object v0, p0

    .line 47
    check-cast v0, Lgnu/lists/SeqPosition;

    .line 48
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v1, v1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_a

    .line 49
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/TreeList;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_a
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 8
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 55
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 56
    .local v0, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "node":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 58
    instance-of v5, v3, Lgnu/mapping/Values;

    if-eqz v5, :cond_30

    move-object v4, v3

    .line 60
    check-cast v4, Lgnu/lists/TreeList;

    .line 61
    .local v4, "tlist":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    .line 64
    .local v1, "index":I
    :goto_11
    shl-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    .line 65
    .local v2, "kind":I
    if-nez v2, :cond_1a

    .line 76
    .end local v1    # "index":I
    .end local v2    # "kind":I
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    :goto_19
    return-void

    .line 67
    .restart local v1    # "index":I
    .restart local v2    # "kind":I
    .restart local v4    # "tlist":Lgnu/lists/TreeList;
    :cond_1a
    const/16 v5, 0x20

    if-ne v2, v5, :cond_2c

    .line 68
    shl-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 71
    :goto_27
    invoke-virtual {v4, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 72
    goto :goto_11

    .line 70
    :cond_2c
    invoke-static {v4, v1, v0}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_27

    .line 75
    .end local v1    # "index":I
    .end local v2    # "kind":I
    .end local v4    # "tlist":Lgnu/lists/TreeList;
    :cond_30
    invoke-static {v3, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_19
.end method

.method public numArgs()I
    .registers 2

    .prologue
    .line 12
    const/16 v0, 0x1001

    return v0
.end method
