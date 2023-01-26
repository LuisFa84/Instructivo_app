.class public Lgnu/kawa/lispexpr/ReaderVector;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderVector.java"


# instance fields
.field close:C


# direct methods
.method public constructor <init>(C)V
    .registers 2
    .param p1, "close"    # C

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 16
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    .line 17
    return-void
.end method

.method public static readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;
    .registers 15
    .param p0, "lexer"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "port"    # Lgnu/text/LineBufferedReader;
    .param p2, "count"    # I
    .param p3, "close"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 28
    const/16 v5, 0x20

    .line 29
    .local v5, "saveReadState":C
    instance-of v9, p1, Lgnu/mapping/InPort;

    if-eqz v9, :cond_16

    move-object v9, p1

    .line 31
    check-cast v9, Lgnu/mapping/InPort;

    iget-char v5, v9, Lgnu/mapping/InPort;->readState:C

    move-object v9, p1

    .line 32
    check-cast v9, Lgnu/mapping/InPort;

    const/16 v10, 0x5d

    if-ne p3, v10, :cond_43

    const/16 v10, 0x5b

    :goto_14
    iput-char v10, v9, Lgnu/mapping/InPort;->readState:C

    .line 36
    :cond_16
    :try_start_16
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v8, "vec":Ljava/util/Vector;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    .line 40
    .local v4, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 41
    .local v0, "ch":I
    if-gez v0, :cond_2a

    .line 42
    const-string v9, "unexpected EOF in vector"

    invoke-virtual {p0, v9}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 43
    :cond_2a
    if-ne v0, p3, :cond_46

    .line 60
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v3, v9, [Ljava/lang/Object;

    .line 61
    .local v3, "objs":[Ljava/lang/Object;
    invoke-virtual {v8, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 62
    new-instance v9, Lgnu/lists/FVector;

    invoke-direct {v9, v3}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_6a

    .line 66
    instance-of v10, p1, Lgnu/mapping/InPort;

    if-eqz v10, :cond_42

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1    # "port":Lgnu/text/LineBufferedReader;
    iput-char v5, p1, Lgnu/mapping/InPort;->readState:C

    :cond_42
    return-object v9

    .line 32
    .end local v0    # "ch":I
    .end local v3    # "objs":[Ljava/lang/Object;
    .end local v4    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v8    # "vec":Ljava/util/Vector;
    .restart local p1    # "port":Lgnu/text/LineBufferedReader;
    :cond_43
    const/16 v10, 0x28

    goto :goto_14

    .line 45
    .restart local v0    # "ch":I
    .restart local v4    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .restart local v8    # "vec":Ljava/util/Vector;
    :cond_46
    :try_start_46
    invoke-virtual {p0, v0, v4}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v6

    .line 46
    .local v6, "value":Ljava/lang/Object;
    instance-of v9, v6, Lgnu/mapping/Values;

    if-eqz v9, :cond_60

    .line 48
    check-cast v6, Lgnu/mapping/Values;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v7

    .line 49
    .local v7, "values":[Ljava/lang/Object;
    array-length v2, v7

    .line 50
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_56
    if-ge v1, v2, :cond_1f

    .line 51
    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 55
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v7    # "values":[Ljava/lang/Object;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_60
    sget-object v9, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v6, v9, :cond_66

    .line 56
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 57
    .end local v6    # "value":Ljava/lang/Object;
    :cond_66
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_46 .. :try_end_69} :catchall_6a

    goto :goto_1f

    .line 66
    .end local v0    # "ch":I
    .end local v4    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v8    # "vec":Ljava/util/Vector;
    :catchall_6a
    move-exception v9

    instance-of v10, p1, Lgnu/mapping/InPort;

    if-eqz v10, :cond_73

    .line 67
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1    # "port":Lgnu/text/LineBufferedReader;
    iput-char v5, p1, Lgnu/mapping/InPort;->readState:C

    :cond_73
    throw v9
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 7
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
    .line 22
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    iget-char v2, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    invoke-static {v0, v1, p3, v2}, Lgnu/kawa/lispexpr/ReaderVector;->readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method
