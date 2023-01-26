.class public Lgnu/xquery/util/OrderedTuples;
.super Lgnu/lists/FilterConsumer;
.source "OrderedTuples.java"


# instance fields
.field body:Lgnu/mapping/Procedure;

.field comps:[Ljava/lang/Object;

.field first:I

.field n:I

.field next:[I

.field tuples:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;
    .registers 3
    .param p0, "body"    # Lgnu/mapping/Procedure;
    .param p1, "comps"    # [Ljava/lang/Object;

    .prologue
    .line 71
    new-instance v0, Lgnu/xquery/util/OrderedTuples;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedTuples;-><init>()V

    .line 72
    .local v0, "tuples":Lgnu/xquery/util/OrderedTuples;
    iput-object p1, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    .line 73
    iput-object p0, v0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    .line 74
    return-object v0
.end method


# virtual methods
.method cmp(II)I
    .registers 17
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    array-length v12, v12

    if-ge v7, v12, :cond_df

    .line 139
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    aget-object v2, v12, v7

    check-cast v2, Lgnu/mapping/Procedure;

    .line 140
    .local v2, "comparator":Lgnu/mapping/Procedure;
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    add-int/lit8 v13, v7, 0x1

    aget-object v6, v12, v13

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, "flags":Ljava/lang/String;
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    add-int/lit8 v13, v7, 0x2

    aget-object v1, v12, v13

    check-cast v1, Lgnu/xquery/util/NamedCollator;

    .line 142
    .local v1, "collator":Lgnu/xquery/util/NamedCollator;
    if-nez v1, :cond_20

    .line 143
    sget-object v1, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 144
    :cond_20
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v12, v12, p1

    check-cast v12, [Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v2, v12}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 145
    .local v10, "val1":Ljava/lang/Object;
    iget-object v12, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v12, v12, p2

    check-cast v12, [Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v2, v12}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 146
    .local v11, "val2":Ljava/lang/Object;
    invoke-static {v10}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 147
    invoke-static {v11}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 148
    instance-of v12, v10, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v12, :cond_48

    .line 149
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 150
    .end local v10    # "val1":Ljava/lang/Object;
    :cond_48
    instance-of v12, v11, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v12, :cond_50

    .line 151
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    .end local v11    # "val2":Ljava/lang/Object;
    :cond_50
    invoke-static {v10}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v3

    .line 153
    .local v3, "empty1":Z
    invoke-static {v11}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v4

    .line 154
    .local v4, "empty2":Z
    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    .line 137
    :cond_5c
    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    .line 157
    :cond_5f
    if-nez v3, :cond_63

    if-eqz v4, :cond_80

    .line 159
    :cond_63
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 160
    .local v5, "emptyOrder":C
    const/16 v12, 0x4c

    if-ne v5, v12, :cond_7c

    const/4 v12, 0x1

    :goto_6d
    if-ne v3, v12, :cond_7e

    const/4 v0, -0x1

    .line 180
    .end local v5    # "emptyOrder":C
    .local v0, "c":I
    :goto_70
    if-eqz v0, :cond_5c

    .line 182
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-ne v12, v13, :cond_dd

    .line 184
    .end local v0    # "c":I
    .end local v1    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v2    # "comparator":Lgnu/mapping/Procedure;
    .end local v3    # "empty1":Z
    .end local v4    # "empty2":Z
    .end local v6    # "flags":Ljava/lang/String;
    :goto_7b
    return v0

    .line 160
    .restart local v1    # "collator":Lgnu/xquery/util/NamedCollator;
    .restart local v2    # "comparator":Lgnu/mapping/Procedure;
    .restart local v3    # "empty1":Z
    .restart local v4    # "empty2":Z
    .restart local v5    # "emptyOrder":C
    .restart local v6    # "flags":Ljava/lang/String;
    :cond_7c
    const/4 v12, 0x0

    goto :goto_6d

    :cond_7e
    const/4 v0, 0x1

    goto :goto_70

    .line 164
    .end local v5    # "emptyOrder":C
    :cond_80
    instance-of v12, v10, Ljava/lang/Number;

    if-eqz v12, :cond_ba

    move-object v12, v10

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_ba

    const/4 v8, 0x1

    .line 166
    .local v8, "isNaN1":Z
    :goto_92
    instance-of v12, v11, Ljava/lang/Number;

    if-eqz v12, :cond_bc

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-eqz v12, :cond_bc

    const/4 v9, 0x1

    .line 168
    .local v9, "isNaN2":Z
    :goto_a4
    if-eqz v8, :cond_a8

    if-nez v9, :cond_5c

    .line 170
    :cond_a8
    if-nez v8, :cond_ac

    if-eqz v9, :cond_c2

    .line 172
    :cond_ac
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 173
    .restart local v5    # "emptyOrder":C
    const/16 v12, 0x4c

    if-ne v5, v12, :cond_be

    const/4 v12, 0x1

    :goto_b6
    if-ne v8, v12, :cond_c0

    const/4 v0, -0x1

    .line 174
    .restart local v0    # "c":I
    :goto_b9
    goto :goto_70

    .line 164
    .end local v0    # "c":I
    .end local v5    # "emptyOrder":C
    .end local v8    # "isNaN1":Z
    .end local v9    # "isNaN2":Z
    :cond_ba
    const/4 v8, 0x0

    goto :goto_92

    .line 166
    .restart local v8    # "isNaN1":Z
    :cond_bc
    const/4 v9, 0x0

    goto :goto_a4

    .line 173
    .restart local v5    # "emptyOrder":C
    .restart local v9    # "isNaN2":Z
    :cond_be
    const/4 v12, 0x0

    goto :goto_b6

    :cond_c0
    const/4 v0, 0x1

    goto :goto_b9

    .line 175
    .end local v5    # "emptyOrder":C
    :cond_c2
    instance-of v12, v10, Ljava/lang/Number;

    if-eqz v12, :cond_d0

    instance-of v12, v11, Ljava/lang/Number;

    if-eqz v12, :cond_d0

    .line 176
    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    .restart local v0    # "c":I
    goto :goto_70

    .line 178
    .end local v0    # "c":I
    :cond_d0
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "c":I
    goto :goto_70

    .line 182
    .end local v8    # "isNaN1":Z
    .end local v9    # "isNaN2":Z
    :cond_dd
    neg-int v0, v0

    goto :goto_7b

    .line 184
    .end local v0    # "c":I
    .end local v1    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v2    # "comparator":Lgnu/mapping/Procedure;
    .end local v3    # "empty1":Z
    .end local v4    # "empty2":Z
    .end local v6    # "flags":Ljava/lang/String;
    :cond_df
    const/4 v0, 0x0

    goto :goto_7b
.end method

.method emit(ILgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 92
    .local v0, "args":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 93
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 94
    return-void
.end method

.method emit(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    .local v0, "p":I
    :goto_2
    if-ltz v0, :cond_c

    .line 86
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(ILgnu/mapping/CallContext;)V

    .line 85
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v0, v1, v0

    goto :goto_2

    .line 87
    :cond_c
    return-void
.end method

.method listsort(I)I
    .registers 14
    .param p1, "list"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 208
    iget v10, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    if-nez v10, :cond_6

    .line 280
    :goto_5
    return v9

    .line 211
    :cond_6
    iget v10, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    new-array v10, v10, [I

    iput-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    .line 213
    const/4 v1, 0x1

    .line 215
    .local v1, "i":I
    :goto_d
    iget v10, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    if-ne v1, v10, :cond_45

    .line 217
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    add-int/lit8 v11, v1, -0x1

    aput v9, v10, v11

    .line 224
    const/4 v2, 0x1

    .line 227
    .local v2, "insize":I
    :goto_18
    move v4, p1

    .line 228
    .local v4, "p":I
    const/4 p1, -0x1

    .line 229
    const/4 v8, -0x1

    .line 231
    .local v8, "tail":I
    const/4 v3, 0x0

    .line 233
    .local v3, "nmerges":I
    :goto_1c
    if-ltz v4, :cond_77

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 236
    move v6, v4

    .line 237
    .local v6, "q":I
    const/4 v5, 0x0

    .line 238
    .local v5, "psize":I
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v2, :cond_2d

    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 240
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v6, v10, v6

    .line 241
    if-gez v6, :cond_4e

    .line 244
    :cond_2d
    move v7, v2

    .line 247
    .local v7, "qsize":I
    :goto_2e
    if-gtz v5, :cond_34

    if-lez v7, :cond_75

    if-ltz v6, :cond_75

    .line 250
    :cond_34
    if-nez v5, :cond_51

    .line 252
    move v0, v6

    .local v0, "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v6, v10, v6

    add-int/lit8 v7, v7, -0x1

    .line 266
    :goto_3d
    if-ltz v8, :cond_73

    .line 267
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v0, v10, v8

    .line 270
    :goto_43
    move v8, v0

    goto :goto_2e

    .line 221
    .end local v0    # "e":I
    .end local v2    # "insize":I
    .end local v3    # "nmerges":I
    .end local v4    # "p":I
    .end local v5    # "psize":I
    .end local v6    # "q":I
    .end local v7    # "qsize":I
    .end local v8    # "tail":I
    :cond_45
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    add-int/lit8 v11, v1, -0x1

    aput v1, v10, v11

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 238
    .restart local v2    # "insize":I
    .restart local v3    # "nmerges":I
    .restart local v4    # "p":I
    .restart local v5    # "psize":I
    .restart local v6    # "q":I
    .restart local v8    # "tail":I
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 253
    .restart local v7    # "qsize":I
    :cond_51
    if-eqz v7, :cond_55

    if-gez v6, :cond_5d

    .line 255
    :cond_55
    move v0, v4

    .restart local v0    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v4, v10, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 256
    .end local v0    # "e":I
    :cond_5d
    invoke-virtual {p0, v4, v6}, Lgnu/xquery/util/OrderedTuples;->cmp(II)I

    move-result v10

    if-gtz v10, :cond_6b

    .line 259
    move v0, v4

    .restart local v0    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v4, v10, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 262
    .end local v0    # "e":I
    :cond_6b
    move v0, v6

    .restart local v0    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v6, v10, v6

    add-int/lit8 v7, v7, -0x1

    goto :goto_3d

    .line 269
    :cond_73
    move p1, v0

    goto :goto_43

    .line 274
    .end local v0    # "e":I
    :cond_75
    move v4, v6

    goto :goto_1c

    .line 276
    .end local v5    # "psize":I
    .end local v6    # "q":I
    .end local v7    # "qsize":I
    :cond_77
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v9, v10, v8

    .line 279
    const/4 v10, 0x1

    if-gt v3, v10, :cond_80

    move v9, p1

    .line 280
    goto :goto_5

    .line 283
    :cond_80
    mul-int/lit8 v2, v2, 0x2

    goto :goto_18
.end method

.method public run$X(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/xquery/util/OrderedTuples;->listsort(I)I

    move-result v0

    iput v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    .line 80
    invoke-virtual {p0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(Lgnu/mapping/CallContext;)V

    .line 81
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 54
    iget v1, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    iget-object v2, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_17

    .line 56
    iget v1, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 57
    .local v0, "tmp":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 60
    .end local v0    # "tmp":[Ljava/lang/Object;
    :cond_17
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    aput-object p1, v1, v2

    .line 61
    return-void
.end method
