.class public Landroidx/constraintlayout/solver/widgets/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    }
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 8
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    .line 93
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    .line 94
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    .line 95
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    .line 96
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v1

    .line 97
    .local v1, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_2b
    if-ge v3, v2, :cond_40

    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 99
    .local v0, "a":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    new-instance v5, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    invoke-direct {v5, v0}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 101
    .end local v0    # "a":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_40
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 6
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 126
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setX(I)V

    .line 127
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setY(I)V

    .line 128
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 129
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mConnectionsSize":I
    :goto_1b
    if-ge v1, v2, :cond_2b

    .line 131
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    .line 132
    .local v0, "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 134
    .end local v0    # "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    :cond_2b
    return-void
.end method

.method public updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 6
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mX:I

    .line 110
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mY:I

    .line 111
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mWidth:I

    .line 112
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mHeight:I

    .line 113
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, "connections":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_2f

    .line 115
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;

    .line 116
    .local v0, "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;->updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 118
    .end local v0    # "connection":Landroidx/constraintlayout/solver/widgets/Snapshot$Connection;
    :cond_2f
    return-void
.end method
