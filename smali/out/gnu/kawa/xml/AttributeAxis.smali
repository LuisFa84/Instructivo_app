.class public Lgnu/kawa/xml/AttributeAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "AttributeAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/AttributeAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/xml/AttributeAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/AttributeAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/AttributeAxis;
    iput-object p0, v0, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 6
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .prologue
    const/16 v1, 0x23

    .line 20
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstAttributePos(I)I

    move-result p2

    .line 21
    :goto_6
    if-eqz p2, :cond_24

    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    if-ne v0, v1, :cond_24

    .line 23
    iget-object v0, p0, Lgnu/kawa/xml/AttributeAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 24
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_19
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_6

    .line 25
    :cond_1e
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    if-eq v0, v1, :cond_19

    .line 29
    :cond_24
    return-void
.end method
