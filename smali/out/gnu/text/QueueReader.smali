.class public Lgnu/text/QueueReader;
.super Ljava/io/Reader;
.source "QueueReader.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field EOFseen:Z

.field buffer:[C

.field limit:I

.field mark:I

.field pos:I

.field readAheadLimit:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized append(C)Lgnu/text/QueueReader;
    .registers 5
    .param p1, "ch"    # C

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 130
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/text/QueueReader;->limit:I

    aput-char p1, v0, v1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 132
    monitor-exit p0

    return-object p0

    .line 129
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    if-nez p1, :cond_4

    .line 61
    const-string p1, "null"

    .line 62
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;
    .registers 12
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 67
    monitor-enter p0

    if-nez p1, :cond_5

    .line 68
    :try_start_3
    const-string p1, "null"

    .line 69
    :cond_5
    sub-int v5, p3, p2

    .line 70
    .local v5, "len":I
    invoke-virtual {p0, v5}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 71
    iget v6, p0, Lgnu/text/QueueReader;->limit:I

    .line 72
    .local v6, "sz":I
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 73
    .local v1, "d":[C
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_22

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7, p2, p3, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    :cond_19
    :goto_19
    add-int v7, v6, v5

    iput v7, p0, Lgnu/text/QueueReader;->limit:I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_2e

    .line 85
    monitor-exit p0

    return-object p0

    .line 75
    :cond_22
    :try_start_22
    instance-of v7, p1, Lgnu/lists/CharSeq;

    if-eqz v7, :cond_31

    .line 76
    move-object v0, p1

    check-cast v0, Lgnu/lists/CharSeq;

    move-object v7, v0

    invoke-interface {v7, p2, p3, v1, v6}, Lgnu/lists/CharSeq;->getChars(II[CI)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    goto :goto_19

    .line 67
    .end local v1    # "d":[C
    .end local v5    # "len":I
    .end local v6    # "sz":I
    :catchall_2e
    move-exception v7

    monitor-exit p0

    throw v7

    .line 79
    .restart local v1    # "d":[C
    .restart local v5    # "len":I
    .restart local v6    # "sz":I
    :cond_31
    move v3, v6

    .line 80
    .local v3, "j":I
    move v2, p2

    .local v2, "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_34
    if-ge v2, p3, :cond_19

    .line 81
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    :try_start_38
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v1, v4
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_2e

    .line 80
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_34
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(C)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v0

    return-object v0
.end method

.method public append([C)V
    .registers 4
    .param p1, "chars"    # [C

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/QueueReader;->append([CII)V

    .line 117
    return-void
.end method

.method public declared-synchronized append([CII)V
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p3}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 122
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v0, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr v0, p3

    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 125
    monitor-exit p0

    return-void

    .line 121
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendEOF()V
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAvailable()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lgnu/text/QueueReader;->pos:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/QueueReader;->mark:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/QueueReader;->buffer:[C
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 212
    monitor-exit p0

    return-void

    .line 207
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    .line 31
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iput v0, p0, Lgnu/text/QueueReader;->mark:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 32
    monitor-exit p0

    return-void

    .line 30
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 5

    .prologue
    .line 163
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v1, v2, :cond_17

    .line 165
    iget-boolean v1, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    if-eqz v1, :cond_e

    .line 166
    const/4 v0, -0x1

    .line 177
    :goto_c
    monitor-exit p0

    return v0

    .line 167
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_22

    .line 170
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    goto :goto_1

    .line 172
    :catch_15
    move-exception v1

    goto :goto_1

    .line 176
    :cond_17
    :try_start_17
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/text/QueueReader;->pos:I

    aget-char v0, v1, v2
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    .line 177
    .local v0, "ch":C
    goto :goto_c

    .line 163
    .end local v0    # "ch":C
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([CII)I
    .registers 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 182
    monitor-enter p0

    if-nez p3, :cond_c

    .line 183
    const/4 v1, 0x0

    .line 202
    :goto_4
    monitor-exit p0

    return v1

    .line 188
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_31

    .line 191
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_2f
    .catchall {:try_start_9 .. :try_end_c} :catchall_31

    .line 184
    :cond_c
    :goto_c
    :try_start_c
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v1, v2, :cond_18

    .line 186
    iget-boolean v1, p0, Lgnu/text/QueueReader;->EOFseen:Z

    if-eqz v1, :cond_6

    .line 187
    const/4 v1, -0x1

    goto :goto_4

    .line 197
    :cond_18
    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    sub-int v0, v1, v2

    .line 198
    .local v0, "avail":I
    if-le p3, v0, :cond_21

    .line 199
    move p3, v0

    .line 200
    :cond_21
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v1, p0, Lgnu/text/QueueReader;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_31

    move v1, p3

    .line 202
    goto :goto_4

    .line 193
    .end local v0    # "avail":I
    :catch_2f
    move-exception v1

    goto :goto_c

    .line 182
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ready()Z
    .registers 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lgnu/text/QueueReader;->pos:I

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    if-lt v0, v1, :cond_b

    iget-boolean v0, p0, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reserveSpace(I)V
    .registers 4
    .param p1, "len"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    if-nez v0, :cond_b

    .line 144
    add-int/lit8 v0, p1, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 147
    :cond_a
    :goto_a
    return-void

    .line 145
    :cond_b
    iget-object v0, p0, Lgnu/text/QueueReader;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lgnu/text/QueueReader;->limit:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_a

    .line 146
    invoke-virtual {p0, p1}, Lgnu/text/QueueReader;->resize(I)V

    goto :goto_a
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v0, :cond_9

    .line 37
    iget v0, p0, Lgnu/text/QueueReader;->mark:I

    iput v0, p0, Lgnu/text/QueueReader;->pos:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 38
    :cond_9
    monitor-exit p0

    return-void

    .line 36
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resize(I)V
    .registers 7
    .param p1, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    iget v3, p0, Lgnu/text/QueueReader;->pos:I

    sub-int v0, v2, v3

    .line 43
    .local v0, "cur_size":I
    iget v2, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v2, :cond_3b

    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v2, v3

    iget v3, p0, Lgnu/text/QueueReader;->readAheadLimit:I

    if-gt v2, v3, :cond_3b

    .line 44
    iget v2, p0, Lgnu/text/QueueReader;->limit:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int v0, v2, v3

    .line 47
    :goto_1a
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    array-length v2, v2

    add-int v3, v0, p1

    if-ge v2, v3, :cond_40

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    new-array v1, v2, [C

    .line 50
    .local v1, "new_buffer":[C
    :goto_26
    iget-object v2, p0, Lgnu/text/QueueReader;->buffer:[C

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    .line 52
    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iget v3, p0, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v2, v3

    iput v2, p0, Lgnu/text/QueueReader;->pos:I

    .line 53
    iput v4, p0, Lgnu/text/QueueReader;->mark:I

    .line 54
    iput v0, p0, Lgnu/text/QueueReader;->limit:I

    .line 55
    return-void

    .line 46
    .end local v1    # "new_buffer":[C
    :cond_3b
    iget v2, p0, Lgnu/text/QueueReader;->pos:I

    iput v2, p0, Lgnu/text/QueueReader;->mark:I

    goto :goto_1a

    .line 47
    :cond_40
    iget-object v1, p0, Lgnu/text/QueueReader;->buffer:[C

    goto :goto_26
.end method
