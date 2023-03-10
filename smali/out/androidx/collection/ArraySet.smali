.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mCollections:Landroidx/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-array v0, v1, [I

    sput-object v0, Landroidx/collection/ArraySet;->INT:[I

    .line 54
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 243
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 244
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 250
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    if-nez p1, :cond_11

    .line 252
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 253
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 257
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 258
    return-void

    .line 255
    :cond_11
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    goto :goto_d
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .registers 2
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "set":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    .line 265
    if-eqz p1, :cond_8

    .line 266
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 268
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    .line 275
    if-eqz p1, :cond_8

    .line 276
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7
    .param p1, "size"    # I

    .prologue
    .line 163
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3d

    .line 164
    const-class v2, Landroidx/collection/ArraySet;

    monitor-enter v2

    .line 165
    :try_start_7
    sget-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_30

    .line 166
    sget-object v0, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 167
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 168
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 169
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 170
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 171
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 176
    monitor-exit v2

    .line 199
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_2f
    return-void

    .line 178
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3a

    .line 197
    :cond_31
    :goto_31
    new-array v1, p1, [I

    iput-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 198
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_2f

    .line 178
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    .line 179
    :cond_3d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_31

    .line 180
    const-class v2, Landroidx/collection/ArraySet;

    monitor-enter v2

    .line 181
    :try_start_43
    sget-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_6f

    .line 182
    sget-object v0, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 183
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 184
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 185
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 186
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 187
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 192
    monitor-exit v2

    goto :goto_2f

    .line 194
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_43 .. :try_end_6e} :catchall_6c

    throw v1

    :cond_6f
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6c

    goto :goto_31
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 203
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 204
    const-class v2, Landroidx/collection/ArraySet;

    monitor-enter v2

    .line 205
    :try_start_b
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_29

    .line 206
    const/4 v1, 0x0

    sget-object v3, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 207
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 208
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_19
    if-lt v0, v4, :cond_21

    .line 209
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 211
    :cond_21
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 212
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 218
    .end local v0    # "i":I
    :cond_29
    monitor-exit v2

    .line 236
    :cond_2a
    :goto_2a
    return-void

    .line 218
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2b

    throw v1

    .line 219
    :cond_2e
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 220
    const-class v2, Landroidx/collection/ArraySet;

    monitor-enter v2

    .line 221
    :try_start_35
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    if-ge v1, v3, :cond_53

    .line 222
    const/4 v1, 0x0

    sget-object v3, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 223
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 224
    add-int/lit8 v0, p2, -0x1

    .restart local v0    # "i":I
    :goto_43
    if-lt v0, v4, :cond_4b

    .line 225
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 227
    :cond_4b
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 228
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 234
    .end local v0    # "i":I
    :cond_53
    monitor-exit v2

    goto :goto_2a

    :catchall_55
    move-exception v1

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private getCollection()Landroidx/collection/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    if-nez v0, :cond_b

    .line 667
    new-instance v0, Landroidx/collection/ArraySet$1;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$1;-><init>(Landroidx/collection/ArraySet;)V

    iput-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    .line 714
    :cond_b
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 86
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 89
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 90
    const/4 v3, -0x1

    .line 120
    :cond_5
    :goto_5
    return v3

    .line 93
    :cond_6
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 96
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 101
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1a
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_31

    .line 108
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v3, v1

    goto :goto_5

    .line 107
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 112
    :cond_31
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_4a

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_4a

    .line 113
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    move v3, v2

    goto :goto_5

    .line 112
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 120
    :cond_4a
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method private indexOfNull()I
    .registers 7

    .prologue
    .line 124
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 127
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 128
    const/4 v3, -0x1

    .line 158
    :cond_5
    :goto_5
    return v3

    .line 131
    :cond_6
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 134
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 139
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    .line 145
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_17
    if-ge v1, v0, :cond_2a

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2a

    .line 146
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_27

    move v3, v1

    goto :goto_5

    .line 145
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 150
    :cond_2a
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2c
    if-ltz v2, :cond_3f

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_3f

    .line 151
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_3c

    move v3, v2

    goto :goto_5

    .line 150
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 158
    :cond_3f
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 362
    if-nez p1, :cond_f

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "hash":I
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v1

    .line 369
    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_18

    move v5, v6

    .line 405
    :goto_e
    return v5

    .line 366
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 367
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_b

    .line 373
    :cond_18
    xor-int/lit8 v1, v1, -0x1

    .line 374
    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    iget-object v8, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4a

    .line 375
    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lt v7, v2, :cond_76

    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v5, v7

    .line 380
    .local v2, "n":I
    :cond_2d
    :goto_2d
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 381
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 382
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 384
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_45

    .line 386
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_45
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 393
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4a
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v5, :cond_66

    .line 398
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_66
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aput v0, v5, v1

    .line 403
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 404
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 405
    const/4 v5, 0x1

    goto :goto_e

    .line 375
    :cond_76
    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v7, v5, :cond_2d

    move v2, v5

    goto :goto_2d
.end method

.method public addAll(Landroidx/collection/ArraySet;)V
    .registers 7
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    const/4 v4, 0x0

    .line 442
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    .line 443
    .local v0, "N":I
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 444
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v2, :cond_20

    .line 445
    if-lez v0, :cond_1f

    .line 446
    iget-object v2, p1, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v2, p1, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 455
    :cond_1f
    return-void

    .line 451
    :cond_20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_1f

    .line 452
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 755
    .local v1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 756
    goto :goto_f

    .line 757
    .end local v1    # "value":Ljava/lang/Object;, "TE;"
    :cond_1f
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 416
    .local v1, "index":I
    if-nez p1, :cond_12

    const/4 v0, 0x0

    .line 417
    .local v0, "hash":I
    :goto_5
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_17

    .line 418
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v0    # "hash":I
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    .line 420
    .restart local v0    # "hash":I
    :cond_17
    if-lez v1, :cond_25

    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, v0, :cond_25

    .line 429
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_24
    return-void

    .line 432
    :cond_25
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 433
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 434
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    goto :goto_24
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 285
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    .line 286
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 287
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 288
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 291
    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

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
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 738
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 739
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 740
    const/4 v1, 0x0

    .line 743
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public ensureCapacity(I)V
    .registers 7
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v4, 0x0

    .line 298
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_24

    .line 299
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 300
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 301
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 302
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lez v2, :cond_1f

    .line 303
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :cond_1f
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 308
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 591
    if-ne p0, p1, :cond_5

    .line 614
    :cond_4
    :goto_4
    return v4

    .line 594
    :cond_5
    instance-of v6, p1, Ljava/util/Set;

    if-eqz v6, :cond_32

    move-object v3, p1

    .line 595
    check-cast v3, Ljava/util/Set;

    .line 596
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_18

    move v4, v5

    .line 597
    goto :goto_4

    .line 601
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    :try_start_19
    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v0, v6, :cond_4

    .line 602
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 603
    .local v2, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_24} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_24} :catch_2f

    move-result v6

    if-nez v6, :cond_29

    move v4, v5

    .line 604
    goto :goto_4

    .line 601
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 607
    .end local v2    # "mine":Ljava/lang/Object;, "TE;"
    :catch_2c
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v4, v5

    .line 608
    goto :goto_4

    .line 609
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v4, v5

    .line 610
    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_32
    move v4, v5

    .line 614
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 622
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 623
    .local v0, "hashes":[I
    const/4 v2, 0x0

    .line 624
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_6
    if-ge v1, v3, :cond_e

    .line 625
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 627
    :cond_e
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 328
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    if-nez p1, :cond_7

    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 346
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 465
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 466
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 467
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 468
    const/4 v1, 0x1

    .line 470
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAll(Landroidx/collection/ArraySet;)Z
    .registers 6
    .param p1    # Landroidx/collection/ArraySet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    .line 542
    .local v0, "N":I
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 543
    .local v2, "originalSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 544
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 546
    :cond_11
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eq v2, v3, :cond_17

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 768
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 769
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 770
    goto :goto_5

    .line 771
    .end local v1    # "value":Ljava/lang/Object;
    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 479
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    .line 480
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_20

    .line 483
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 484
    sget-object v4, Landroidx/collection/ArraySet;->INT:[I

    iput-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 485
    sget-object v4, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 486
    iput v7, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 526
    :cond_1f
    :goto_1f
    return-object v3

    .line 488
    :cond_20
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_6c

    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_6c

    .line 492
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v4, v0, :cond_3a

    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 496
    .local v0, "n":I
    :cond_3a
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 497
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 498
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 500
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 501
    if-lez p1, :cond_53

    .line 503
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    :cond_53
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge p1, v4, :cond_1f

    .line 511
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 515
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_6c
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 516
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge p1, v4, :cond_8e

    .line 520
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    :cond_8e
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_1f
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 783
    .local v1, "removed":Z
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_18

    .line 784
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 785
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 786
    const/4 v1, 0x1

    .line 783
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 789
    :cond_18
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 554
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v3, 0x0

    .line 560
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 561
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 568
    array-length v1, p1

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v2, :cond_1a

    .line 570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 571
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 573
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1a
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    array-length v1, p1

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v1, v2, :cond_2b

    .line 575
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 577
    :cond_2b
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 639
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 640
    const-string v3, "{}"

    .line 657
    :goto_8
    return-object v3

    .line 643
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 644
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v3, :cond_35

    .line 646
    if-lez v1, :cond_23

    .line 647
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 650
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2f

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 653
    :cond_2f
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 656
    .end local v2    # "value":Ljava/lang/Object;
    :cond_35
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
