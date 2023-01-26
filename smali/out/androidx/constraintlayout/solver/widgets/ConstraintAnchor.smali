.class public Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;,
        Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field public mMargin:I

.field final mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

.field private mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field final mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .registers 5
    .param p1, "owner"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 73
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 76
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 77
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 87
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 88
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 89
    return-void
.end method

.method private isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z
    .registers 10
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 588
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 605
    :cond_8
    :goto_8
    return v4

    .line 591
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne p1, v6, :cond_14

    move v4, v5

    .line 594
    goto :goto_8

    .line 596
    :cond_14
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v2

    .line 597
    .local v2, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "targetAnchorsSize":I
    :goto_1d
    if-ge v1, v3, :cond_8

    .line 598
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 599
    .local v0, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 600
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_41

    move v4, v5

    .line 601
    goto :goto_8

    .line 597
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z
    .registers 10
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I

    .prologue
    const/4 v5, 0x0

    .line 251
    const/4 v3, -0x1

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z
    .registers 11
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "creator"    # I

    .prologue
    .line 241
    const/4 v3, -0x1

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .registers 10
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "goneMargin"    # I
    .param p4, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I
    .param p6, "forceConnection"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    if-nez p1, :cond_14

    .line 211
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 212
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 214
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 215
    const/4 v1, 0x2

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 230
    :goto_13
    return v0

    .line 218
    :cond_14
    if-nez p6, :cond_1e

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-nez v2, :cond_1e

    move v0, v1

    .line 219
    goto :goto_13

    .line 221
    :cond_1e
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 222
    if-lez p2, :cond_2b

    .line 223
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 227
    :goto_24
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 228
    iput-object p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 229
    iput p5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    goto :goto_13

    .line 225
    :cond_2b
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_24
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z
    .registers 12
    .param p1, "toAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "margin"    # I
    .param p3, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p4, "creator"    # I

    .prologue
    .line 194
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public getConnectionCreator()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getMargin()I
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 126
    const/4 v0, 0x0

    .line 132
    :goto_b
    return v0

    .line 128
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 129
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 130
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_b

    .line 132
    :cond_22
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_b
.end method

.method public final getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .registers 3

    .prologue
    .line 613
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 615
    :pswitch_19
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 631
    :goto_1d
    return-object v0

    .line 618
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1d

    .line 621
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1d

    .line 624
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1d

    .line 631
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_1d

    .line 613
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPriorityLevel()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 457
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    .line 468
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 460
    :pswitch_1b
    const/4 v0, 0x1

    .line 466
    :goto_1c
    :pswitch_1c
    return v0

    :pswitch_1d
    move v0, v1

    .line 461
    goto :goto_1c

    :pswitch_1f
    move v0, v1

    .line 462
    goto :goto_1c

    :pswitch_21
    move v0, v1

    .line 463
    goto :goto_1c

    :pswitch_23
    move v0, v1

    .line 464
    goto :goto_1c

    :pswitch_25
    move v0, v1

    .line 465
    goto :goto_1c

    .line 457
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    return-object v0
.end method

.method public getSnapPriorityLevel()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    .line 446
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1b
    move v0, v1

    .line 444
    :goto_1c
    :pswitch_1c
    return v0

    :pswitch_1d
    move v0, v1

    .line 439
    goto :goto_1c

    :pswitch_1f
    move v0, v1

    .line 440
    goto :goto_1c

    .line 442
    :pswitch_21
    const/4 v0, 0x2

    goto :goto_1c

    .line 443
    :pswitch_23
    const/4 v0, 0x3

    goto :goto_1c

    :pswitch_25
    move v0, v1

    .line 444
    goto :goto_1c

    .line 435
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_1b
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

.method public getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    return-object v0
.end method

.method public getStrength()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .registers 7
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 566
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 567
    .local v0, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionToMe(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 577
    :cond_d
    :goto_d
    return v2

    .line 570
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 571
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v1, p1, :cond_1a

    move v2, v3

    .line 572
    goto :goto_d

    .line 574
    :cond_1a
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, v1, :cond_d

    move v2, v3

    .line 575
    goto :goto_d
.end method

.method public isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 4
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnectionAllowed(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v0

    return v0
.end method

.method public isSideAnchor()Z
    .registers 3

    .prologue
    .line 316
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 321
    :pswitch_19
    const/4 v0, 0x1

    .line 327
    :goto_1a
    return v0

    :pswitch_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 316
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 7
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 341
    .local v0, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_c

    move v2, v1

    .line 360
    :cond_b
    :goto_b
    :pswitch_b
    return v2

    .line 344
    :cond_c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4e

    .line 362
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 346
    :pswitch_25
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_2b

    :goto_29
    move v2, v1

    goto :goto_b

    :cond_2b
    move v1, v2

    goto :goto_29

    .line 351
    :pswitch_2d
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_39

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_39

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_b

    :cond_39
    move v2, v1

    goto :goto_b

    .line 357
    :pswitch_3b
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_4b

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_4b

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_4b

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_b

    :cond_4b
    move v2, v1

    goto :goto_b

    .line 344
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2d
        :pswitch_2d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_2d
        :pswitch_3b
        :pswitch_b
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 6
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 479
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_9

    .line 531
    :goto_8
    :pswitch_8
    return v0

    .line 482
    :cond_9
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    if-ne v2, v3, :cond_13

    move v0, v1

    .line 483
    goto :goto_8

    .line 485
    :cond_13
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_aa

    .line 533
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 487
    :pswitch_2c
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_c0

    goto :goto_8

    :sswitch_3c
    move v0, v1

    .line 488
    goto :goto_8

    :sswitch_3e
    move v0, v1

    .line 489
    goto :goto_8

    .line 494
    :pswitch_40
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_ca

    goto :goto_8

    :sswitch_50
    move v0, v1

    .line 495
    goto :goto_8

    :sswitch_52
    move v0, v1

    .line 496
    goto :goto_8

    .line 501
    :pswitch_54
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d4

    goto :goto_8

    :pswitch_64
    move v0, v1

    .line 502
    goto :goto_8

    :pswitch_66
    move v0, v1

    .line 503
    goto :goto_8

    .line 508
    :pswitch_68
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_dc

    :pswitch_77
    goto :goto_8

    :pswitch_78
    move v0, v1

    .line 509
    goto :goto_8

    :pswitch_7a
    move v0, v1

    .line 510
    goto :goto_8

    .line 515
    :pswitch_7c
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_e8

    goto/16 :goto_8

    :sswitch_8d
    move v0, v1

    .line 516
    goto/16 :goto_8

    :sswitch_90
    move v0, v1

    .line 517
    goto/16 :goto_8

    .line 522
    :pswitch_93
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f2

    goto/16 :goto_8

    :pswitch_a4
    move v0, v1

    .line 523
    goto/16 :goto_8

    :pswitch_a7
    move v0, v1

    .line 524
    goto/16 :goto_8

    .line 485
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2c
        :pswitch_40
        :pswitch_68
        :pswitch_7c
        :pswitch_8
        :pswitch_54
        :pswitch_93
        :pswitch_8
    .end packed-switch

    .line 487
    :sswitch_data_c0
    .sparse-switch
        0x3 -> :sswitch_3c
        0x7 -> :sswitch_3e
    .end sparse-switch

    .line 494
    :sswitch_data_ca
    .sparse-switch
        0x2 -> :sswitch_50
        0x7 -> :sswitch_52
    .end sparse-switch

    .line 501
    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_64
        :pswitch_66
    .end packed-switch

    .line 508
    :pswitch_data_dc
    .packed-switch 0x5
        :pswitch_78
        :pswitch_77
        :pswitch_77
        :pswitch_7a
    .end packed-switch

    .line 515
    :sswitch_data_e8
    .sparse-switch
        0x4 -> :sswitch_8d
        0x8 -> :sswitch_90
    .end sparse-switch

    .line 522
    :pswitch_data_f2
    .packed-switch 0x4
        :pswitch_a4
        :pswitch_a7
    .end packed-switch
.end method

.method public isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z
    .registers 8
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    if-nez p1, :cond_5

    .line 305
    :cond_4
    :goto_4
    :pswitch_4
    return v3

    .line 271
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 272
    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_29

    .line 273
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_27

    .line 274
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_27
    move v3, v2

    .line 277
    goto :goto_4

    .line 279
    :cond_29
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_90

    .line 307
    new-instance v2, Ljava/lang/AssertionError;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 282
    :pswitch_42
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_50

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_50

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_50

    :goto_4e
    move v3, v2

    goto :goto_4

    :cond_50
    move v2, v3

    goto :goto_4e

    .line 287
    :pswitch_52
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_5a

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_6c

    :cond_5a
    move v0, v2

    .line 288
    .local v0, "isCompatible":Z
    :goto_5b
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_6a

    .line 289
    if-nez v0, :cond_69

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_6e

    :cond_69
    move v0, v2

    :cond_6a
    :goto_6a
    move v3, v0

    .line 291
    goto :goto_4

    .end local v0    # "isCompatible":Z
    :cond_6c
    move v0, v3

    .line 287
    goto :goto_5b

    .restart local v0    # "isCompatible":Z
    :cond_6e
    move v0, v3

    .line 289
    goto :goto_6a

    .line 295
    .end local v0    # "isCompatible":Z
    :pswitch_70
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_78

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_8b

    :cond_78
    move v0, v2

    .line 296
    .restart local v0    # "isCompatible":Z
    :goto_79
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_88

    .line 297
    if-nez v0, :cond_87

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_8d

    :cond_87
    move v0, v2

    :cond_88
    :goto_88
    move v3, v0

    .line 299
    goto/16 :goto_4

    .end local v0    # "isCompatible":Z
    :cond_8b
    move v0, v3

    .line 295
    goto :goto_79

    .restart local v0    # "isCompatible":Z
    :cond_8d
    move v0, v3

    .line 297
    goto :goto_88

    .line 279
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_42
        :pswitch_52
        :pswitch_52
        :pswitch_70
        :pswitch_70
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .registers 3

    .prologue
    .line 401
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 414
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 406
    :pswitch_19
    const/4 v0, 0x0

    .line 412
    :goto_1a
    return v0

    :pswitch_1b
    const/4 v0, 0x1

    goto :goto_1a

    .line 401
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 176
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 178
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 179
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    .line 180
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mResolutionAnchor:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    .line 182
    return-void
.end method

.method public resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V
    .registers 5
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .prologue
    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_f

    .line 102
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 106
    :goto_e
    return-void

    .line 104
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    goto :goto_e
.end method

.method public setConnectionCreator(I)V
    .registers 2
    .param p1, "creator"    # I

    .prologue
    .line 169
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .registers 2
    .param p1, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .prologue
    .line 157
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mConnectionType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 158
    return-void
.end method

.method public setGoneMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 393
    :cond_8
    return-void
.end method

.method public setMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .prologue
    .line 380
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 381
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 383
    :cond_8
    return-void
.end method

.method public setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .registers 3
    .param p1, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .prologue
    .line 370
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mStrength:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 373
    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
