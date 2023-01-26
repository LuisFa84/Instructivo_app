.class public Lgnu/mapping/Table2D;
.super Ljava/lang/Object;
.source "Table2D.java"


# static fields
.field private static instance:Lgnu/mapping/Table2D;


# instance fields
.field log2Size:I

.field mask:I

.field num_bindings:I

.field table:[Lgnu/mapping/Entry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lgnu/mapping/Table2D;

    invoke-direct {v0}, Lgnu/mapping/Table2D;-><init>()V

    sput-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/Table2D;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    .line 29
    :goto_7
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    shl-int v0, v1, v0

    if-le p1, v0, :cond_14

    .line 30
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    goto :goto_7

    .line 31
    :cond_14
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    shl-int p1, v1, v0

    .line 32
    new-array v0, p1, [Lgnu/mapping/Entry;

    iput-object v0, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 33
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgnu/mapping/Table2D;->mask:I

    .line 34
    return-void
.end method

.method public static final getInstance()Lgnu/mapping/Table2D;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 39
    .local v3, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 40
    .local v4, "h2":I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v6

    .line 41
    .local v6, "entry":Lgnu/mapping/Entry;
    if-eqz v6, :cond_16

    iget-object v0, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-ne v0, v6, :cond_17

    .end local p3    # "defaultValue":Ljava/lang/Object;
    :cond_16
    :goto_16
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/Object;
    :cond_17
    iget-object p3, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_16
.end method

.method public isBound(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 47
    .local v3, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .local v4, "h2":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v6

    .line 49
    .local v6, "entry":Lgnu/mapping/Entry;
    if-eqz v6, :cond_17

    iget-object v0, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-eq v0, v6, :cond_17

    const/4 v5, 0x1

    :cond_17
    return v5
.end method

.method protected lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;
    .registers 16
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash1"    # I
    .param p4, "hash2"    # I
    .param p5, "create"    # Z

    .prologue
    .line 222
    xor-int v3, p3, p4

    .line 223
    .local v3, "hash":I
    iget v9, p0, Lgnu/mapping/Table2D;->mask:I

    and-int v4, v3, v9

    .line 224
    .local v4, "index":I
    const/4 v8, 0x0

    .line 225
    .local v8, "prev":Lgnu/mapping/Entry;
    iget-object v9, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object v2, v9, v4

    .line 226
    .local v2, "first":Lgnu/mapping/Entry;
    move-object v1, v2

    .local v1, "e":Lgnu/mapping/Entry;
    :goto_c
    if-eqz v1, :cond_51

    .line 228
    iget-object v5, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 229
    .local v5, "k1":Ljava/lang/Object;
    iget-object v6, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 230
    .local v6, "k2":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 232
    .local v0, "dead":Z
    instance-of v9, v5, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_20

    .line 234
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5    # "k1":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 235
    .restart local v5    # "k1":Ljava/lang/Object;
    if-nez v5, :cond_42

    const/4 v0, 0x1

    .line 237
    :cond_20
    :goto_20
    instance-of v9, v6, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_2e

    .line 239
    check-cast v6, Ljava/lang/ref/WeakReference;

    .end local v6    # "k2":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 240
    .restart local v6    # "k2":Ljava/lang/Object;
    if-nez v6, :cond_44

    const/4 v0, 0x1

    .line 241
    :goto_2d
    const/4 v0, 0x1

    .line 244
    :cond_2e
    iget-object v7, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 245
    .local v7, "next":Lgnu/mapping/Entry;
    if-eqz v0, :cond_49

    .line 247
    if-nez v8, :cond_46

    .line 248
    iget-object v9, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v7, v9, v4

    .line 251
    :goto_38
    iget v9, p0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 252
    iput-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 258
    :goto_40
    move-object v1, v7

    .line 259
    goto :goto_c

    .line 235
    .end local v7    # "next":Lgnu/mapping/Entry;
    :cond_42
    const/4 v0, 0x0

    goto :goto_20

    .line 240
    :cond_44
    const/4 v0, 0x0

    goto :goto_2d

    .line 250
    .restart local v7    # "next":Lgnu/mapping/Entry;
    :cond_46
    iput-object v7, v8, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    goto :goto_38

    .line 254
    :cond_49
    if-ne v5, p1, :cond_4f

    if-ne v6, p2, :cond_4f

    move-object v9, v1

    .line 307
    .end local v0    # "dead":Z
    .end local v5    # "k1":Ljava/lang/Object;
    .end local v6    # "k2":Ljava/lang/Object;
    .end local v7    # "next":Lgnu/mapping/Entry;
    :goto_4e
    return-object v9

    .line 257
    .restart local v0    # "dead":Z
    .restart local v5    # "k1":Ljava/lang/Object;
    .restart local v6    # "k2":Ljava/lang/Object;
    .restart local v7    # "next":Lgnu/mapping/Entry;
    :cond_4f
    move-object v8, v1

    goto :goto_40

    .line 260
    .end local v0    # "dead":Z
    .end local v5    # "k1":Ljava/lang/Object;
    .end local v6    # "k2":Ljava/lang/Object;
    .end local v7    # "next":Lgnu/mapping/Entry;
    :cond_51
    if-eqz p5, :cond_74

    .line 262
    new-instance v1, Lgnu/mapping/Entry;

    .end local v1    # "e":Lgnu/mapping/Entry;
    invoke-direct {v1}, Lgnu/mapping/Entry;-><init>()V

    .line 295
    .restart local v1    # "e":Lgnu/mapping/Entry;
    invoke-virtual {p0, p1}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p2}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 297
    iput-object p1, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 298
    iput-object p2, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 299
    iget v9, p0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 301
    iput-object v2, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 302
    iget-object v9, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v1, v9, v4

    .line 303
    iput-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object v9, v1

    .line 304
    goto :goto_4e

    .line 307
    :cond_74
    const/4 v9, 0x0

    goto :goto_4e
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 55
    .local v3, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 56
    .local v4, "h2":I
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v6

    .line 57
    .local v6, "entry":Lgnu/mapping/Entry;
    invoke-virtual {v6}, Lgnu/mapping/Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 58
    .local v7, "oldValue":Ljava/lang/Object;
    iput-object p3, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 59
    return-object v7
.end method

.method rehash()V
    .registers 20

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 173
    .local v15, "oldTable":[Lgnu/mapping/Entry;
    array-length v14, v15

    .line 174
    .local v14, "oldCapacity":I
    mul-int/lit8 v10, v14, 0x2

    .line 175
    .local v10, "newCapacity":I
    new-array v12, v10, [Lgnu/mapping/Entry;

    .line 176
    .local v12, "newTable":[Lgnu/mapping/Entry;
    add-int/lit8 v11, v10, -0x1

    .line 177
    .local v11, "newMask":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    .line 178
    move v6, v14

    .local v6, "i":I
    :cond_14
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_71

    .line 180
    aget-object v4, v15, v6

    .line 181
    .local v4, "first":Lgnu/mapping/Entry;
    const/16 v16, 0x0

    .line 182
    .local v16, "prev":Lgnu/mapping/Entry;
    move-object v3, v4

    .local v3, "e":Lgnu/mapping/Entry;
    :goto_1d
    if-eqz v3, :cond_14

    .line 184
    iget-object v8, v3, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 185
    .local v8, "k1":Ljava/lang/Object;
    iget-object v9, v3, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 186
    .local v9, "k2":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 188
    .local v2, "dead":Z
    instance-of v0, v8, Ljava/lang/ref/WeakReference;

    move/from16 v17, v0

    if-eqz v17, :cond_33

    .line 190
    check-cast v8, Ljava/lang/ref/WeakReference;

    .end local v8    # "k1":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .line 191
    .restart local v8    # "k1":Ljava/lang/Object;
    if-nez v8, :cond_4a

    const/4 v2, 0x1

    .line 193
    :cond_33
    :goto_33
    instance-of v0, v9, Ljava/lang/ref/WeakReference;

    move/from16 v17, v0

    if-eqz v17, :cond_42

    .line 195
    check-cast v9, Ljava/lang/ref/WeakReference;

    .end local v9    # "k2":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 196
    .restart local v9    # "k2":Ljava/lang/Object;
    if-nez v9, :cond_4c

    const/4 v2, 0x1

    .line 199
    :cond_42
    :goto_42
    iget-object v13, v3, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 200
    .local v13, "next":Lgnu/mapping/Entry;
    if-eqz v2, :cond_4e

    .line 201
    iput-object v3, v3, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 211
    :goto_48
    move-object v3, v13

    .line 212
    goto :goto_1d

    .line 191
    .end local v13    # "next":Lgnu/mapping/Entry;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_33

    .line 196
    :cond_4c
    const/4 v2, 0x0

    goto :goto_42

    .line 204
    .restart local v13    # "next":Lgnu/mapping/Entry;
    :cond_4e
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    xor-int v5, v17, v18

    .line 206
    .local v5, "hash":I
    and-int v7, v5, v11

    .line 207
    .local v7, "index":I
    aget-object v17, v12, v7

    move-object/from16 v0, v17

    iput-object v0, v3, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 208
    aput-object v3, v12, v7

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/mapping/Table2D;->num_bindings:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/mapping/Table2D;->num_bindings:I

    goto :goto_48

    .line 214
    .end local v2    # "dead":Z
    .end local v3    # "e":Lgnu/mapping/Entry;
    .end local v4    # "first":Lgnu/mapping/Entry;
    .end local v5    # "hash":I
    .end local v7    # "index":I
    .end local v8    # "k1":Ljava/lang/Object;
    .end local v9    # "k2":Ljava/lang/Object;
    .end local v13    # "next":Lgnu/mapping/Entry;
    .end local v16    # "prev":Lgnu/mapping/Entry;
    :cond_71
    move-object/from16 v0, p0

    iput-object v12, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/mapping/Table2D;->log2Size:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/mapping/Table2D;->log2Size:I

    .line 216
    move-object/from16 v0, p0

    iput v11, v0, Lgnu/mapping/Table2D;->mask:I

    .line 217
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 66
    .local v1, "h2":I
    xor-int v2, v0, v1

    .line 67
    .local v2, "hash":I
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 17
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash1"    # I
    .param p4, "hash2"    # I

    .prologue
    .line 77
    xor-int v3, p3, p4

    .line 78
    .local v3, "hash":I
    iget v11, p0, Lgnu/mapping/Table2D;->mask:I

    and-int v4, v3, v11

    .line 79
    .local v4, "index":I
    const/4 v10, 0x0

    .line 80
    .local v10, "prev":Lgnu/mapping/Entry;
    iget-object v11, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object v2, v11, v4

    .line 81
    .local v2, "first":Lgnu/mapping/Entry;
    move-object v1, v2

    .local v1, "e":Lgnu/mapping/Entry;
    :goto_c
    if-eqz v1, :cond_58

    .line 83
    iget-object v5, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 84
    .local v5, "k1":Ljava/lang/Object;
    iget-object v6, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 85
    .local v6, "k2":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 87
    .local v0, "dead":Z
    instance-of v11, v5, Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_20

    .line 89
    check-cast v5, Ljava/lang/ref/WeakReference;

    .end local v5    # "k1":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 90
    .restart local v5    # "k1":Ljava/lang/Object;
    if-nez v5, :cond_4a

    const/4 v0, 0x1

    .line 92
    :cond_20
    :goto_20
    instance-of v11, v6, Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_2d

    .line 94
    check-cast v6, Ljava/lang/ref/WeakReference;

    .end local v6    # "k2":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 95
    .restart local v6    # "k2":Ljava/lang/Object;
    if-nez v6, :cond_4c

    const/4 v0, 0x1

    .line 98
    :cond_2d
    :goto_2d
    iget-object v8, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 99
    .local v8, "next":Lgnu/mapping/Entry;
    iget-object v9, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 100
    .local v9, "oldValue":Ljava/lang/Object;
    if-ne v5, p1, :cond_4e

    if-ne v6, p2, :cond_4e

    const/4 v7, 0x1

    .line 101
    .local v7, "matches":Z
    :goto_36
    if-nez v0, :cond_3a

    if-eqz v7, :cond_53

    .line 103
    :cond_3a
    if-nez v10, :cond_50

    .line 104
    iget-object v11, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v8, v11, v4

    .line 107
    :goto_40
    iget v11, p0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 108
    iput-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 114
    :goto_48
    move-object v1, v8

    .line 115
    goto :goto_c

    .line 90
    .end local v7    # "matches":Z
    .end local v8    # "next":Lgnu/mapping/Entry;
    .end local v9    # "oldValue":Ljava/lang/Object;
    :cond_4a
    const/4 v0, 0x0

    goto :goto_20

    .line 95
    :cond_4c
    const/4 v0, 0x0

    goto :goto_2d

    .line 100
    .restart local v8    # "next":Lgnu/mapping/Entry;
    .restart local v9    # "oldValue":Ljava/lang/Object;
    :cond_4e
    const/4 v7, 0x0

    goto :goto_36

    .line 106
    .restart local v7    # "matches":Z
    :cond_50
    iput-object v8, v10, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    goto :goto_40

    .line 110
    :cond_53
    if-eqz v7, :cond_56

    .line 116
    .end local v0    # "dead":Z
    .end local v5    # "k1":Ljava/lang/Object;
    .end local v6    # "k2":Ljava/lang/Object;
    .end local v7    # "matches":Z
    .end local v8    # "next":Lgnu/mapping/Entry;
    .end local v9    # "oldValue":Ljava/lang/Object;
    :goto_55
    return-object v9

    .line 113
    .restart local v0    # "dead":Z
    .restart local v5    # "k1":Ljava/lang/Object;
    .restart local v6    # "k2":Ljava/lang/Object;
    .restart local v7    # "matches":Z
    .restart local v8    # "next":Lgnu/mapping/Entry;
    .restart local v9    # "oldValue":Ljava/lang/Object;
    :cond_56
    move-object v10, v1

    goto :goto_48

    .line 116
    .end local v0    # "dead":Z
    .end local v5    # "k1":Ljava/lang/Object;
    .end local v6    # "k2":Ljava/lang/Object;
    .end local v7    # "matches":Z
    .end local v8    # "next":Lgnu/mapping/Entry;
    .end local v9    # "oldValue":Ljava/lang/Object;
    :cond_58
    const/4 v9, 0x0

    goto :goto_55
.end method

.method protected wrapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 313
    if-eqz p1, :cond_6

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_7

    .end local p1    # "key":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_6
.end method
