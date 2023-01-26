.class public Lgnu/kawa/xml/PrecedingSiblingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "PrecedingSiblingAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/PrecedingSiblingAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/PrecedingSiblingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/PrecedingSiblingAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/PrecedingSiblingAxis;
    iput-object p0, v0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 9
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .prologue
    .line 20
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v1

    .line 21
    .local v1, "end":I
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v2

    .line 22
    .local v2, "parent":I
    if-ne v2, v1, :cond_b

    .line 36
    :cond_a
    return-void

    .line 24
    :cond_b
    invoke-virtual {p1, v2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v0

    .line 25
    .local v0, "child":I
    if-eqz v0, :cond_a

    .line 27
    iget-object v3, p0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v3, p1, v0}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 28
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 31
    :cond_1c
    :goto_1c
    iget-object v3, p0, Lgnu/kawa/xml/PrecedingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, p2, v4}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    .line 32
    if-eqz v0, :cond_a

    .line 34
    invoke-interface {p3, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1c
.end method
