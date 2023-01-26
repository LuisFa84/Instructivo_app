.class public Lkawa/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# static fields
.field static final SB_IAC:I = 0x190


# instance fields
.field protected buf:[B

.field connection:Lkawa/Telnet;

.field count:I

.field pos:I

.field state:I

.field subCommandLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkawa/Telnet;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "conn"    # Lkawa/Telnet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput v0, p0, Lkawa/TelnetInputStream;->state:I

    .line 30
    iput v0, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    .line 18
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    .line 19
    iput-object p2, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    .line 20
    return-void
.end method


# virtual methods
.method public read()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xfb

    const/4 v2, -0x1

    const/16 v8, 0xfa

    const/16 v3, 0xff

    const/4 v7, 0x0

    .line 38
    :goto_8
    iget v4, p0, Lkawa/TelnetInputStream;->pos:I

    iget v5, p0, Lkawa/TelnetInputStream;->count:I

    if-lt v4, v5, :cond_3b

    .line 40
    iget-object v4, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 41
    .local v0, "avail":I
    if-gtz v0, :cond_2b

    .line 42
    const/4 v0, 0x1

    .line 47
    :cond_17
    :goto_17
    iget-object v4, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v6, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v4, v5, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    iput v4, p0, Lkawa/TelnetInputStream;->pos:I

    .line 49
    iput v0, p0, Lkawa/TelnetInputStream;->count:I

    .line 50
    if-gtz v0, :cond_3b

    move v1, v2

    .line 83
    .end local v0    # "avail":I
    :cond_2a
    :goto_2a
    return v1

    .line 43
    .restart local v0    # "avail":I
    :cond_2b
    iget-object v4, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_17

    .line 45
    iget-object v4, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int v0, v4, v5

    goto :goto_17

    .line 53
    .end local v0    # "avail":I
    :cond_3b
    iget-object v4, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v5, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 54
    .local v1, "ch":I
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v4, :cond_50

    .line 56
    if-ne v1, v3, :cond_2a

    .line 58
    iput v3, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_8

    .line 61
    :cond_50
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-ne v4, v3, :cond_84

    .line 63
    if-ne v1, v3, :cond_5a

    .line 65
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    move v1, v3

    .line 66
    goto :goto_2a

    .line 68
    :cond_5a
    if-eq v1, v9, :cond_6a

    const/16 v4, 0xfc

    if-eq v1, v4, :cond_6a

    const/16 v4, 0xfd

    if-eq v1, v4, :cond_6a

    const/16 v4, 0xfe

    if-eq v1, v4, :cond_6a

    if-ne v1, v8, :cond_6d

    .line 74
    :cond_6a
    iput v1, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_8

    .line 76
    :cond_6d
    const/16 v4, 0xf4

    if-ne v1, v4, :cond_7b

    .line 78
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Interrupt Process"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_8

    .line 81
    :cond_7b
    const/16 v4, 0xec

    if-ne v1, v4, :cond_81

    move v1, v2

    .line 83
    goto :goto_2a

    .line 87
    :cond_81
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_8

    .line 90
    :cond_84
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-eq v4, v9, :cond_9a

    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v5, 0xfc

    if-eq v4, v5, :cond_9a

    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v5, 0xfd

    if-eq v4, v5, :cond_9a

    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_a5

    .line 93
    :cond_9a
    iget-object v4, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget v5, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v4, v5, v1}, Lkawa/Telnet;->handle(II)V

    .line 94
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_8

    .line 96
    :cond_a5
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-ne v4, v8, :cond_be

    .line 98
    if-ne v1, v3, :cond_b1

    .line 99
    const/16 v4, 0x190

    iput v4, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_8

    .line 101
    :cond_b1
    iget-object v4, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v5, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    goto/16 :goto_8

    .line 103
    :cond_be
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_ee

    .line 105
    if-ne v1, v3, :cond_d5

    .line 107
    iget-object v4, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v5, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 108
    iput v8, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_8

    .line 110
    :cond_d5
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_e8

    .line 112
    iget-object v4, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget-object v5, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v6, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v4, v5, v7, v6}, Lkawa/Telnet;->subCommand([BII)V

    .line 113
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    .line 114
    iput v7, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_8

    .line 118
    :cond_e8
    iput v7, p0, Lkawa/TelnetInputStream;->state:I

    .line 119
    iput v7, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_8

    .line 123
    :cond_ee
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    if-gtz p3, :cond_4

    .line 130
    const/4 v0, 0x0

    .line 152
    :cond_3
    :goto_3
    return v0

    .line 131
    :cond_4
    const/4 v1, 0x0

    .line 132
    .local v1, "done":I
    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v3, :cond_f

    iget v3, p0, Lkawa/TelnetInputStream;->pos:I

    iget v4, p0, Lkawa/TelnetInputStream;->count:I

    if-lt v3, v4, :cond_1d

    .line 134
    :cond_f
    invoke-virtual {p0}, Lkawa/TelnetInputStream;->read()I

    move-result v0

    .line 135
    .local v0, "ch":I
    if-ltz v0, :cond_3

    .line 137
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v0

    aput-byte v3, p1, p2

    .line 138
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    .line 140
    .end local v0    # "ch":I
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_1d
    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v3, :cond_32

    .line 142
    :goto_21
    iget v3, p0, Lkawa/TelnetInputStream;->pos:I

    iget v4, p0, Lkawa/TelnetInputStream;->count:I

    if-ge v3, v4, :cond_32

    if-ge v1, p3, :cond_32

    .line 144
    iget-object v3, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v4, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v0, v3, v4

    .line 145
    .local v0, "ch":B
    const/4 v3, -0x1

    if-ne v0, v3, :cond_34

    .end local v0    # "ch":B
    :cond_32
    move v0, v1

    .line 152
    goto :goto_3

    .line 147
    .restart local v0    # "ch":B
    :cond_34
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    aput-byte v0, p1, p2

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    iget v3, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->pos:I

    move p2, v2

    .line 150
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_21
.end method
