.class public Lkawa/standard/readchar;
.super Lgnu/mapping/Procedure0or1;
.source "readchar.java"


# static fields
.field public static final peekChar:Lkawa/standard/readchar;

.field public static final readChar:Lkawa/standard/readchar;


# instance fields
.field peeking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    .line 13
    new-instance v0, Lkawa/standard/readchar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/readchar;-><init>(Z)V

    sput-object v0, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "peeking"    # Z

    .prologue
    .line 18
    if-eqz p1, :cond_a

    const-string v0, "peek-char"

    :goto_4
    invoke-direct {p0, v0}, Lgnu/mapping/Procedure0or1;-><init>(Ljava/lang/String;)V

    .line 19
    iput-boolean p1, p0, Lkawa/standard/readchar;->peeking:Z

    .line 20
    return-void

    .line 18
    :cond_a
    const-string v0, "read-char"

    goto :goto_4
.end method


# virtual methods
.method public final apply0()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 85
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 90
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_b

    .line 91
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_a
    return-object v0

    .line 92
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_16

    .line 93
    check-cast p1, Ljava/io/Reader;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 94
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_16
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_21

    .line 95
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lkawa/standard/readchar;->readChar(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 96
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_21
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "<input-port>"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method final readChar(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .registers 6
    .param p1, "port"    # Lgnu/mapping/InPort;

    .prologue
    .line 26
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lgnu/mapping/InPort;->peek()I

    move-result v0

    .line 27
    .local v0, "ch":I
    :goto_8
    if-gez v0, :cond_12

    .line 28
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 29
    :goto_c
    return-object v2

    .line 26
    .end local v0    # "ch":I
    :cond_d
    invoke-virtual {p1}, Lgnu/mapping/InPort;->read()I

    move-result v0

    goto :goto_8

    .line 29
    .restart local v0    # "ch":I
    :cond_12
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_c

    .line 31
    .end local v0    # "ch":I
    :catch_17
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final readChar(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .param p1, "port"    # Ljava/io/InputStream;

    .prologue
    .line 65
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_14

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    .local v0, "ch":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 73
    :goto_f
    if-gez v0, :cond_19

    .line 74
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 75
    :goto_13
    return-object v2

    .line 72
    .end local v0    # "ch":I
    :cond_14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .restart local v0    # "ch":I
    goto :goto_f

    .line 75
    :cond_19
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v2

    goto :goto_13

    .line 77
    .end local v0    # "ch":I
    :catch_1e
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final readChar(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 6
    .param p1, "port"    # Ljava/io/Reader;

    .prologue
    .line 42
    :try_start_0
    iget-boolean v2, p0, Lkawa/standard/readchar;->peeking:Z

    if-eqz v2, :cond_14

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/Reader;->mark(I)V

    .line 45
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 46
    .local v0, "ch":I
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 50
    :goto_f
    if-gez v0, :cond_19

    .line 51
    sget-object v2, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 52
    :goto_13
    return-object v2

    .line 49
    .end local v0    # "ch":I
    :cond_14
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .restart local v0    # "ch":I
    goto :goto_f

    .line 52
    :cond_19
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v2

    goto :goto_13

    .line 54
    .end local v0    # "ch":I
    :catch_1e
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IO Exception caught"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
