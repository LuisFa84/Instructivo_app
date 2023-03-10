.class Landroidx/constraintlayout/solver/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/solver/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/solver/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "maxPoolSize"    # I

    .prologue
    .line 96
    .local p0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-gtz p1, :cond_d

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_d
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v1, :cond_10

    .line 152
    iget-object v1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 153
    const/4 v1, 0x1

    .line 156
    :goto_c
    return v1

    .line 151
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    const/4 v2, 0x0

    .line 106
    iget v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    if-lez v3, :cond_18

    .line 107
    iget v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v1, v3, -0x1

    .line 108
    .local v1, "lastPooledIndex":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 109
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 110
    iget v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 113
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "lastPooledIndex":I
    :goto_17
    return-object v0

    :cond_18
    move-object v0, v2

    goto :goto_17
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    aput-object p1, v0, v1

    .line 125
    iget v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .registers 7
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Landroidx/constraintlayout/solver/Pools$SimplePool;, "Landroidx/constraintlayout/solver/Pools$SimplePool<TT;>;"
    .local p1, "variables":[Ljava/lang/Object;, "[TT;"
    array-length v2, p1

    if-le p2, v2, :cond_4

    .line 134
    array-length p2, p1

    .line 136
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_1f

    .line 137
    aget-object v1, p1, v0

    .line 143
    .local v1, "instance":Ljava/lang/Object;, "TT;"
    iget v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 144
    iget-object v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    iget v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    aput-object v1, v2, v3

    .line 145
    iget v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    .line 136
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 148
    .end local v1    # "instance":Ljava/lang/Object;, "TT;"
    :cond_1f
    return-void
.end method
