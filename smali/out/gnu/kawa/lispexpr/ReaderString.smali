.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderString.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static readString(Lgnu/text/Lexer;II)Ljava/lang/String;
    .registers 14
    .param p0, "in"    # Lgnu/text/Lexer;
    .param p1, "ch"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    .line 25
    iget v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 26
    .local v5, "startPos":I
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v2

    .line 27
    .local v2, "port":Lgnu/text/LineBufferedReader;
    const/4 v4, 0x0

    .line 28
    .local v4, "saveReadState":C
    move v1, p1

    .line 30
    .local v1, "c":I
    instance-of v7, v2, Lgnu/mapping/InPort;

    if-eqz v7, :cond_19

    move-object v7, v2

    .line 32
    check-cast v7, Lgnu/mapping/InPort;

    iget-char v4, v7, Lgnu/mapping/InPort;->readState:C

    move-object v7, v2

    .line 33
    check-cast v7, Lgnu/mapping/InPort;

    int-to-char v8, p1

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 39
    :cond_19
    :goto_19
    move v3, v1

    .line 42
    .local v3, "prev":I
    const/16 v7, 0xd

    if-ne v3, v7, :cond_3f

    .line 44
    :try_start_1e
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 45
    if-eq v1, v10, :cond_19

    .line 52
    :goto_24
    if-ne v1, p1, :cond_57

    .line 89
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v9, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v9, v5

    invoke-direct {v7, v8, v5, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_65

    move-result-object v7

    .line 98
    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    instance-of v8, v2, Lgnu/mapping/InPort;

    if-eqz v8, :cond_3e

    .line 100
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2    # "port":Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_3e
    return-object v7

    .line 48
    .restart local v2    # "port":Lgnu/text/LineBufferedReader;
    :cond_3f
    :try_start_3f
    iget v7, v2, Lgnu/text/LineBufferedReader;->pos:I

    iget v8, v2, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v7, v8, :cond_52

    if-eq v3, v10, :cond_52

    .line 49
    iget-object v7, v2, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v8, v2, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v7, v8

    goto :goto_24

    .line 51
    :cond_52
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_24

    .line 56
    :cond_57
    sparse-switch v1, :sswitch_data_9a

    .line 82
    :cond_5a
    if-gez v1, :cond_61

    .line 83
    const-string v7, "unexpected EOF in string literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_61
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_65

    goto :goto_19

    .line 98
    :catchall_65
    move-exception v7

    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    instance-of v8, v2, Lgnu/mapping/InPort;

    if-eqz v8, :cond_70

    .line 100
    check-cast v2, Lgnu/mapping/InPort;

    .end local v2    # "port":Lgnu/text/LineBufferedReader;
    iput-char v4, v2, Lgnu/mapping/InPort;->readState:C

    :cond_70
    throw v7

    .line 60
    .restart local v2    # "port":Lgnu/text/LineBufferedReader;
    :sswitch_71
    :try_start_71
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 61
    const/16 v6, 0xa

    .line 68
    .local v6, "t":I
    :goto_79
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_19

    .line 64
    .end local v6    # "t":I
    :cond_7d
    const/16 v6, 0xd

    .line 66
    .restart local v6    # "t":I
    const/16 v1, 0x20

    goto :goto_79

    .line 71
    .end local v6    # "t":I
    :sswitch_82
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_94

    .line 72
    move-object v0, p0

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v1

    .line 75
    :goto_8e
    const/4 v7, -0x2

    if-ne v1, v7, :cond_5a

    .line 77
    const/16 v1, 0xa

    .line 78
    goto :goto_19

    .line 74
    :cond_94
    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I
    :try_end_97
    .catchall {:try_start_71 .. :try_end_97} :catchall_65

    move-result v1

    goto :goto_8e

    .line 56
    nop

    :sswitch_data_9a
    .sparse-switch
        0xd -> :sswitch_71
        0x5c -> :sswitch_82
    .end sparse-switch
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 5
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
    .line 13
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderString;->readString(Lgnu/text/Lexer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
