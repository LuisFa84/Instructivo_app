.class public Lgnu/kawa/lispexpr/ReaderTypespec;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderTypespec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 15
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 23
    iget v7, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 24
    .local v7, "startPos":I
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v3

    .line 25
    .local v3, "port":Lgnu/text/LineBufferedReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v5

    .line 26
    .local v5, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    const/4 v6, 0x0

    .line 27
    .local v6, "saveReadState":C
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 28
    move v1, p2

    .line 30
    .local v1, "c":I
    instance-of v8, v3, Lgnu/mapping/InPort;

    if-eqz v8, :cond_1e

    move-object v8, v3

    .line 32
    check-cast v8, Lgnu/mapping/InPort;

    iget-char v6, v8, Lgnu/mapping/InPort;->readState:C

    move-object v8, v3

    .line 33
    check-cast v8, Lgnu/mapping/InPort;

    int-to-char v9, p2

    iput-char v9, v8, Lgnu/mapping/InPort;->readState:C

    .line 37
    :cond_1e
    const/4 v2, 0x0

    .line 42
    .local v2, "got_open_square":Z
    :goto_1f
    move v4, v1

    .line 44
    .local v4, "prev":I
    :try_start_20
    iget v8, v3, Lgnu/text/LineBufferedReader;->pos:I

    iget v9, v3, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v8, v9, :cond_45

    const/16 v8, 0xa

    if-eq v4, v8, :cond_45

    .line 45
    iget-object v8, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v9, v3, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v3, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v8, v9

    .line 48
    :goto_34
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_4f

    .line 50
    instance-of v8, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v8, :cond_4a

    .line 51
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v1

    goto :goto_1f

    .line 47
    :cond_45
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_34

    .line 53
    :cond_4a
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_1f

    .line 57
    :cond_4f
    if-nez v2, :cond_59

    const/16 v8, 0x5b

    if-ne v1, v8, :cond_59

    const/4 v8, 0x1

    const/4 v2, 0x1

    if-eq v8, v2, :cond_6d

    :cond_59
    if-eqz v2, :cond_62

    const/16 v8, 0x5d

    if-ne v1, v8, :cond_62

    const/4 v2, 0x0

    if-eqz v2, :cond_6d

    :cond_62
    invoke-virtual {v5, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7d

    .line 63
    :cond_6d
    invoke-virtual {p1, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_70
    .catchall {:try_start_20 .. :try_end_70} :catchall_71

    goto :goto_1f

    .line 78
    :catchall_71
    move-exception v8

    iput v7, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    instance-of v9, v3, Lgnu/mapping/InPort;

    if-eqz v9, :cond_7c

    .line 80
    check-cast v3, Lgnu/mapping/InPort;

    .end local v3    # "port":Lgnu/text/LineBufferedReader;
    iput-char v6, v3, Lgnu/mapping/InPort;->readState:C

    :cond_7c
    throw v8

    .line 68
    .restart local v3    # "port":Lgnu/text/LineBufferedReader;
    :cond_7d
    :try_start_7d
    invoke-virtual {p1, v1}, Lgnu/text/Lexer;->unread(I)V

    .line 73
    new-instance v8, Ljava/lang/String;

    iget-object v9, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v10, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v10, v7

    invoke-direct {v8, v9, v7, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_71

    move-result-object v8

    .line 78
    iput v7, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    instance-of v9, v3, Lgnu/mapping/InPort;

    if-eqz v9, :cond_98

    .line 80
    check-cast v3, Lgnu/mapping/InPort;

    .end local v3    # "port":Lgnu/text/LineBufferedReader;
    iput-char v6, v3, Lgnu/mapping/InPort;->readState:C

    :cond_98
    return-object v8
.end method
