.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 24
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 25
    return-void
.end method

.method static cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Entry::",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;**>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "map":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;**>;"
    .local p1, "rqueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 119
    .local v3, "oldref":Ljava/util/Map$Entry;, "TEntry;"
    if-nez v3, :cond_9

    .line 141
    return-void

    .line 121
    :cond_9
    invoke-virtual {p0, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v5

    invoke-virtual {p0, v5}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 122
    .local v0, "index":I
    const/4 v4, 0x0

    .line 123
    .local v4, "prev":Ljava/util/Map$Entry;, "TEntry;"
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v2, v5, v0

    .line 124
    .local v2, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_16
    if-eqz v2, :cond_24

    .line 126
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 127
    .local v1, "next":Ljava/util/Map$Entry;, "TEntry;"
    if-ne v2, v3, :cond_2f

    .line 129
    if-nez v4, :cond_2b

    .line 130
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v1, v5, v0

    .line 138
    .end local v1    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_24
    :goto_24
    iget v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    goto :goto_0

    .line 132
    .restart local v1    # "next":Ljava/util/Map$Entry;, "TEntry;"
    :cond_2b
    invoke-virtual {p0, v4, v1}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_24

    .line 135
    :cond_2f
    move-object v4, v2

    .line 136
    move-object v2, v1

    .line 137
    goto :goto_16
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    new-array v0, p1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    check-cast v0, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected cleanup()V
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 110
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 45
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1    # "x0":Ljava/util/Map$Entry;
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I

    move-result v0

    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1    # "x0":Ljava/util/Map$Entry;
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    invoke-virtual {p1}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "val":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    :goto_10
    return-object v0

    .restart local v0    # "val":Ljava/lang/Object;, "TV;"
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hash(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .registers 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-direct {v0, p3, p0, p2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;-><init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V

    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 66
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 67
    .local v2, "hash":I
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v3

    .line 68
    .local v3, "index":I
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v8, v3

    .line 69
    .local v1, "first":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v5, v1

    .line 70
    .local v5, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v7, 0x0

    .line 71
    .local v7, "prev":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v6, 0x0

    .line 74
    :goto_14
    if-nez v5, :cond_3e

    .line 76
    iget v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    array-length v8, v8

    if-lt v9, v8, :cond_30

    .line 78
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v3

    .line 80
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v8, v3

    .line 82
    :cond_30
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v5

    .line 83
    iput-object v1, v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 84
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v5, v8, v3

    .line 89
    :goto_3d
    return-object v6

    .line 87
    :cond_3e
    invoke-virtual {v5}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "curValue":Ljava/lang/Object;, "TV;"
    if-ne v0, p2, :cond_46

    move-object v6, v0

    .line 89
    goto :goto_3d

    .line 90
    :cond_46
    iget-object v4, v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 91
    .local v4, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    if-eqz v0, :cond_5e

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 93
    if-nez v7, :cond_5b

    .line 94
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v4, v8, v3

    .line 97
    :goto_58
    move-object v6, v0

    .line 101
    :goto_59
    move-object v5, v4

    .line 102
    goto :goto_14

    .line 96
    :cond_5b
    iput-object v4, v7, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    goto :goto_58

    .line 100
    :cond_5e
    move-object v7, v5

    goto :goto_59
.end method

.method protected setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    .local p2, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;
    .param p2, "x1"    # Ljava/util/Map$Entry;

    .prologue
    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1    # "x0":Ljava/util/Map$Entry;
    check-cast p2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p2    # "x1":Ljava/util/Map$Entry;
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
