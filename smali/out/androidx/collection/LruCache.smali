.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .prologue
    .line 51
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-gtz p1, :cond_d

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_d
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 57
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 260
    .local v0, "result":I
    if-gez v0, :cond_29

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_29
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .registers 2

    .prologue
    .line 322
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "evicted"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .registers 2

    .prologue
    .line 281
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 282
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    .prologue
    .line 336
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_a

    .line 84
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_a
    monitor-enter p0

    .line 89
    :try_start_b
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1c

    .line 91
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 92
    monitor-exit p0

    move-object v0, v1

    .line 126
    :goto_1b
    return-object v0

    .line 94
    :cond_1c
    iget v2, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/LruCache;->missCount:I

    .line 95
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_2b

    .line 104
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2e

    .line 106
    const/4 v0, 0x0

    goto :goto_1b

    .line 95
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 109
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2e
    monitor-enter p0

    .line 110
    :try_start_2f
    iget v2, p0, Landroidx/collection/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/LruCache;->createCount:I

    .line 111
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_4b

    .line 115
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_55

    .line 121
    if-eqz v1, :cond_58

    .line 122
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 123
    goto :goto_1b

    .line 117
    :cond_4b
    :try_start_4b
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    goto :goto_42

    .line 119
    :catchall_55
    move-exception v2

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_55

    throw v2

    .line 125
    :cond_58
    iget v2, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroidx/collection/LruCache;->trimToSize(I)V

    goto :goto_1b
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    .prologue
    .line 307
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    .prologue
    .line 299
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    .prologue
    .line 315
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 139
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_c
    monitor-enter p0

    .line 144
    :try_start_d
    iget v1, p0, Landroidx/collection/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->putCount:I

    .line 145
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 146
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2d

    .line 148
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 150
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3a

    .line 152
    if-eqz v0, :cond_34

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_34
    iget v1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 157
    return-object v0

    .line 150
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    .prologue
    .line 329
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_a

    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_a
    monitor-enter p0

    .line 206
    :try_start_b
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1c

    .line 208
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 210
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_25

    .line 212
    if-eqz v0, :cond_24

    .line 213
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    :cond_24
    return-object v0

    .line 210
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public resize(I)V
    .registers 4
    .param p1, "maxSize"    # I

    .prologue
    .line 65
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    if-gtz p1, :cond_a

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_a
    monitor-enter p0

    .line 70
    :try_start_b
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 71
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    .line 72
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 73
    return-void

    .line 71
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final declared-synchronized size()I
    .registers 2

    .prologue
    .line 290
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroidx/collection/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 8

    .prologue
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 348
    monitor-enter p0

    :try_start_2
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    iget v3, p0, Landroidx/collection/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 349
    .local v0, "accesses":I
    if-eqz v0, :cond_10

    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 350
    .local v1, "hitPercent":I
    :cond_10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Landroidx/collection/LruCache;->hitCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Landroidx/collection/LruCache;->missCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 350
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3f

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 348
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .registers 8
    .param p1, "maxSize"    # I

    .prologue
    .line 171
    .local p0, "this":Landroidx/collection/LruCache;, "Landroidx/collection/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 172
    :try_start_1
    iget v3, p0, Landroidx/collection/LruCache;->size:I

    if-ltz v3, :cond_11

    iget-object v3, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    iget v3, p0, Landroidx/collection/LruCache;->size:I

    if-eqz v3, :cond_35

    .line 173
    :cond_11
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :catchall_32
    move-exception v3

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v3

    .line 177
    :cond_35
    :try_start_35
    iget v3, p0, Landroidx/collection/LruCache;->size:I

    if-le v3, p1, :cond_41

    iget-object v3, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 178
    :cond_41
    monitor-exit p0

    .line 191
    return-void

    .line 181
    :cond_43
    iget-object v3, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 184
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget v3, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/LruCache;->size:I

    .line 186
    iget v3, p0, Landroidx/collection/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/collection/LruCache;->evictionCount:I

    .line 187
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    .line 189
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
