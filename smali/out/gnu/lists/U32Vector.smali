.class public Lgnu/lists/U32Vector;
.super Lgnu/lists/SimpleVector;
.source "U32Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    sget-object v0, Lgnu/lists/S32Vector;->empty:[I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 34
    iput p1, p0, Lgnu/lists/U32Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    new-array v0, p1, [I

    .line 25
    .local v0, "array":[I
    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 26
    iput p1, p0, Lgnu/lists/U32Vector;->size:I

    .line 27
    :goto_9
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_10

    .line 28
    aput p2, v0, p1

    goto :goto_9

    .line 29
    :cond_10
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .prologue
    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/U32Vector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .param p1, "data"    # [I

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/U32Vector;->data:[I

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/U32Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 119
    move v0, p1

    .end local p1    # "start":I
    .local v0, "start":I
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_e

    .line 120
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "start":I
    .restart local p1    # "start":I
    const/4 v2, 0x0

    aput v2, v1, v0

    move v0, p1

    .end local p1    # "start":I
    .restart local v0    # "start":I
    goto :goto_1

    .line 121
    :cond_e
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Lgnu/lists/U32Vector;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/lists/U32Vector;->compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 132
    ushr-int/lit8 v0, p1, 0x1

    .line 133
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/U32Vector;->size:I

    if-lt v0, v1, :cond_8

    .line 134
    const/4 v1, 0x0

    .line 136
    :goto_7
    return v1

    .line 135
    :cond_8
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 7
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 141
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    :cond_6
    return-void

    .line 143
    :cond_7
    ushr-int/lit8 v1, p1, 0x1

    .line 144
    .local v1, "i":I
    ushr-int/lit8 v0, p2, 0x1

    .line 145
    .local v0, "end":I
    iget v2, p0, Lgnu/lists/U32Vector;->size:I

    if-le v0, v2, :cond_11

    .line 146
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    .line 147
    :cond_11
    :goto_11
    if-ge v1, v0, :cond_6

    .line 148
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    aget v2, v2, v1

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 88
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-le p1, v0, :cond_a

    .line 89
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 90
    :cond_a
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .registers 2

    .prologue
    .line 125
    const/16 v0, 0x13

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    const-string v0, "u32"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    return v0
.end method

.method public final longAt(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 81
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-le p1, v0, :cond_a

    .line 82
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 83
    :cond_a
    invoke-virtual {p0, p1}, Lgnu/lists/U32Vector;->longAtBuffer(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final longAtBuffer(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 172
    .local v2, "size":I
    new-array v0, v2, [I

    .line 173
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_12

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 175
    :cond_12
    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 176
    iput v2, p0, Lgnu/lists/U32Vector;->size:I

    .line 177
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v1, p1

    .line 101
    .local v0, "old":I
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    invoke-static {p2}, Lgnu/lists/Convert;->toIntUnsigned(Ljava/lang/Object;)I

    move-result v2

    aput v2, v1, p1

    .line 102
    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setBufferLength(I)V
    .registers 6
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    array-length v0, v2

    .line 58
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_11

    .line 60
    new-array v1, p1, [I

    .line 61
    .local v1, "tmp":[I
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    if-ge v0, p1, :cond_12

    .end local v0    # "oldLength":I
    :goto_c
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    .line 65
    .end local v1    # "tmp":[I
    :cond_11
    return-void

    .restart local v0    # "oldLength":I
    .restart local v1    # "tmp":[I
    :cond_12
    move v0, p1

    .line 61
    goto :goto_c
.end method

.method public final setIntAt(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 107
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-le p1, v0, :cond_a

    .line 108
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_a
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aput p2, v0, p1

    .line 110
    return-void
.end method

.method public final setIntAtBuffer(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aput p2, v0, p1

    .line 115
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget v1, p0, Lgnu/lists/U32Vector;->size:I

    .line 163
    .local v1, "size":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_12

    .line 165
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    aget v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 166
    :cond_12
    return-void
.end method
