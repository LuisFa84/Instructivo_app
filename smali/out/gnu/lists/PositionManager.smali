.class public Lgnu/lists/PositionManager;
.super Ljava/lang/Object;
.source "PositionManager.java"


# static fields
.field static final manager:Lgnu/lists/PositionManager;


# instance fields
.field freeListHead:I

.field ivals:[I

.field positions:[Lgnu/lists/SeqPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lgnu/lists/PositionManager;

    invoke-direct {v0}, Lgnu/lists/PositionManager;-><init>()V

    sput-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v1, 0x32

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v1, [Lgnu/lists/SeqPosition;

    iput-object v0, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    .line 20
    new-array v0, v1, [I

    iput-object v0, p0, Lgnu/lists/PositionManager;->ivals:[I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 57
    iget-object v0, p0, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lgnu/lists/PositionManager;->ivals:[I

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    .line 58
    return-void
.end method

.method private addToFreeList([III)V
    .registers 6
    .param p1, "ivals"    # [I
    .param p2, "first"    # I
    .param p3, "end"    # I

    .prologue
    .line 25
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 26
    .local v0, "head":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_b

    .line 28
    aput v0, p1, v1

    .line 29
    move v0, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    :cond_b
    iput v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 32
    return-void
.end method

.method private getFreeSlot()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 36
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 37
    .local v0, "head":I
    if-gez v0, :cond_25

    .line 39
    iget-object v4, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    array-length v3, v4

    .line 40
    .local v3, "old_size":I
    mul-int/lit8 v4, v3, 0x2

    new-array v1, v4, [Lgnu/lists/SeqPosition;

    .line 41
    .local v1, "npositions":[Lgnu/lists/SeqPosition;
    mul-int/lit8 v4, v3, 0x2

    new-array v2, v4, [I

    .line 42
    .local v2, "nvals":[I
    iget-object v4, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v4, p0, Lgnu/lists/PositionManager;->ivals:[I

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput-object v1, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    .line 45
    iput-object v2, p0, Lgnu/lists/PositionManager;->ivals:[I

    .line 46
    mul-int/lit8 v4, v3, 0x2

    invoke-direct {p0, v2, v3, v4}, Lgnu/lists/PositionManager;->addToFreeList([III)V

    .line 47
    iget v0, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 49
    .end local v1    # "npositions":[Lgnu/lists/SeqPosition;
    .end local v2    # "nvals":[I
    .end local v3    # "old_size":I
    :cond_25
    iget-object v4, p0, Lgnu/lists/PositionManager;->ivals:[I

    aget v4, v4, v0

    iput v4, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 50
    return v0
.end method

.method public static getPositionObject(I)Lgnu/lists/SeqPosition;
    .registers 3
    .param p0, "ipos"    # I

    .prologue
    .line 12
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    .line 13
    .local v0, "m":Lgnu/lists/PositionManager;
    monitor-enter v0

    .line 15
    :try_start_3
    iget-object v1, v0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    .line 16
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public declared-synchronized register(Lgnu/lists/SeqPosition;)I
    .registers 5
    .param p1, "pos"    # Lgnu/lists/SeqPosition;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lgnu/lists/PositionManager;->getFreeSlot()I

    move-result v0

    .line 63
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aput-object p1, v1, v0

    .line 64
    iget-object v1, p0, Lgnu/lists/PositionManager;->ivals:[I

    const/4 v2, -0x1

    aput v2, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 65
    monitor-exit p0

    return v0

    .line 62
    .end local v0    # "i":I
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release(I)V
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    aget-object v1, v2, p1

    .line 71
    .local v1, "pos":Lgnu/lists/SeqPosition;
    instance-of v2, v1, Lgnu/lists/ExtPosition;

    if-eqz v2, :cond_10

    .line 72
    move-object v0, v1

    check-cast v0, Lgnu/lists/ExtPosition;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lgnu/lists/ExtPosition;->position:I

    .line 73
    :cond_10
    iget-object v2, p0, Lgnu/lists/PositionManager;->positions:[Lgnu/lists/SeqPosition;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    .line 74
    iget-object v2, p0, Lgnu/lists/PositionManager;->ivals:[I

    iget v3, p0, Lgnu/lists/PositionManager;->freeListHead:I

    aput v3, v2, p1

    .line 75
    iput p1, p0, Lgnu/lists/PositionManager;->freeListHead:I

    .line 76
    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->release()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 77
    monitor-exit p0

    return-void

    .line 70
    .end local v1    # "pos":Lgnu/lists/SeqPosition;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method
