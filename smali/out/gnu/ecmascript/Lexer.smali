.class public Lgnu/ecmascript/Lexer;
.super Lgnu/text/Lexer;
.source "Lexer.java"


# static fields
.field public static final colonToken:Lgnu/text/Char;

.field public static final commaToken:Lgnu/text/Char;

.field public static final condToken:Lgnu/text/Char;

.field public static final dotToken:Lgnu/text/Char;

.field public static final elseToken:Lgnu/ecmascript/Reserved;

.field public static final eofToken:Ljava/lang/Object;

.field public static final eolToken:Ljava/lang/Object;

.field public static final equalToken:Lgnu/text/Char;

.field public static final lbraceToken:Lgnu/text/Char;

.field public static final lbracketToken:Lgnu/text/Char;

.field public static final lparenToken:Lgnu/text/Char;

.field public static final newToken:Lgnu/ecmascript/Reserved;

.field public static final notToken:Lgnu/text/Char;

.field public static final rbraceToken:Lgnu/text/Char;

.field public static final rbracketToken:Lgnu/text/Char;

.field static reserved:Ljava/util/Hashtable;

.field public static final rparenToken:Lgnu/text/Char;

.field public static final semicolonToken:Lgnu/text/Char;

.field public static final tildeToken:Lgnu/text/Char;


# instance fields
.field private prevWasCR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/16 v0, 0x28

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    .line 21
    const/16 v0, 0x29

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    .line 22
    const/16 v0, 0x7b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    .line 23
    const/16 v0, 0x7d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    .line 24
    const/16 v0, 0x5b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    .line 25
    const/16 v0, 0x5d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    .line 26
    const/16 v0, 0x2e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    .line 27
    const/16 v0, 0x3f

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    .line 28
    const/16 v0, 0x2c

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    .line 29
    const/16 v0, 0x3a

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    .line 30
    const/16 v0, 0x3d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    .line 31
    const/16 v0, 0x7e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    .line 32
    const/16 v0, 0x21

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    .line 33
    const/16 v0, 0x3b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 36
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "else"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    .line 38
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "new"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .registers 3
    .param p1, "port"    # Lgnu/mapping/InPort;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 18
    return-void
.end method

.method public static checkReserved(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lgnu/ecmascript/Lexer;->initReserved()V

    .line 71
    :cond_7
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .registers 2
    .param p0, "inp"    # Lgnu/mapping/InPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized initReserved()V
    .registers 6

    .prologue
    .line 44
    const-class v1, Lgnu/ecmascript/Lexer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_eb

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    .line 47
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "null"

    new-instance v3, Lgnu/expr/QuoteExp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "true"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "false"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "var"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "var"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "if"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "if"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "while"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "while"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "for"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "for"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "continue"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "continue"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "break"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "break"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "return"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "return"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "with"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "with"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "function"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "function"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "this"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "this"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "else"

    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "new"

    sget-object v3, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_3 .. :try_end_eb} :catchall_ed

    .line 66
    :cond_eb
    monitor-exit v1

    return-void

    .line 44
    :catchall_ed
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v1

    .line 465
    .local v1, "inp":Lgnu/mapping/InPort;
    new-instance v3, Lgnu/ecmascript/Lexer;

    invoke-direct {v3, v1}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    .line 470
    .local v3, "reader":Lgnu/ecmascript/Lexer;
    :cond_9
    :try_start_9
    invoke-virtual {v3}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "token":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 472
    .local v2, "out":Lgnu/mapping/OutPort;
    const-string v5, "token:"

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 475
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3e

    if-ne v4, v5, :cond_9

    .line 484
    .end local v2    # "out":Lgnu/mapping/OutPort;
    .end local v4    # "token":Ljava/lang/Object;
    :goto_3d
    return-void

    .line 478
    :catch_3e
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caught exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3d
.end method


# virtual methods
.method public getIdentifier(I)Ljava/lang/String;
    .registers 9
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v1, v5, Lgnu/text/LineBufferedReader;->pos:I

    .line 263
    .local v1, "i":I
    add-int/lit8 v4, v1, -0x1

    .line 264
    .local v4, "start":I
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v2, v5, Lgnu/text/LineBufferedReader;->limit:I

    .line 265
    .local v2, "limit":I
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v0, v5, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 266
    .local v0, "buffer":[C
    :goto_e
    if-ge v1, v2, :cond_1b

    aget-char v5, v0, v1

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 268
    :cond_1b
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v1, v5, Lgnu/text/LineBufferedReader;->pos:I

    .line 269
    if-ge v1, v2, :cond_29

    .line 270
    new-instance v5, Ljava/lang/String;

    sub-int v6, v1, v4

    invoke-direct {v5, v0, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 286
    :goto_28
    return-object v5

    .line 271
    :cond_29
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    sub-int v5, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 275
    :goto_33
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 276
    if-gez p1, :cond_40

    .line 286
    :goto_3b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_28

    .line 278
    :cond_40
    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 279
    int-to-char v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 282
    :cond_4c
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_3b
.end method

.method public getNumericLiteral(I)Ljava/lang/Double;
    .registers 19
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v12, 0xa

    .line 78
    .local v12, "radix":I
    const/16 v14, 0x30

    move/from16 v0, p1

    if-ne v0, v14, :cond_1e

    .line 80
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 81
    const/16 v14, 0x78

    move/from16 v0, p1

    if-eq v0, v14, :cond_18

    const/16 v14, 0x58

    move/from16 v0, p1

    if-ne v0, v14, :cond_79

    .line 83
    :cond_18
    const/16 v12, 0x10

    .line 84
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 90
    :cond_1e
    :goto_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v7, v14, Lgnu/text/LineBufferedReader;->pos:I

    .line 91
    .local v7, "i":I
    if-ltz p1, :cond_28

    .line 92
    add-int/lit8 v7, v7, -0x1

    .line 93
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v7, v14, Lgnu/text/LineBufferedReader;->pos:I

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-static {v14, v12}, Lgnu/ecmascript/Lexer;->readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J

    move-result-wide v8

    .line 95
    .local v8, "ival":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v14, v14, Lgnu/text/LineBufferedReader;->pos:I

    if-le v14, v7, :cond_8e

    const/4 v2, 0x1

    .line 96
    .local v2, "digit_seen":Z
    :goto_3f
    if-eqz v2, :cond_aa

    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v14, v14, Lgnu/text/LineBufferedReader;->pos:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v15, v15, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v14, v15, :cond_aa

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v14, v14, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v15, v15, Lgnu/text/LineBufferedReader;->pos:I

    aget-char p1, v14, v15

    .line 99
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v14

    if-nez v14, :cond_aa

    const/16 v14, 0x2e

    move/from16 v0, p1

    if-eq v0, v14, :cond_aa

    .line 102
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_90

    .line 103
    long-to-double v4, v8

    .line 107
    .local v4, "dval":D
    :goto_73
    new-instance v14, Ljava/lang/Double;

    invoke-direct {v14, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 163
    .end local v4    # "dval":D
    :goto_78
    return-object v14

    .line 86
    .end local v2    # "digit_seen":Z
    .end local v7    # "i":I
    .end local v8    # "ival":J
    :cond_79
    const/16 v14, 0x2e

    move/from16 v0, p1

    if-eq v0, v14, :cond_1e

    const/16 v14, 0x65

    move/from16 v0, p1

    if-eq v0, v14, :cond_1e

    const/16 v14, 0x45

    move/from16 v0, p1

    if-eq v0, v14, :cond_1e

    .line 88
    const/16 v12, 0x8

    goto :goto_1e

    .line 95
    .restart local v7    # "i":I
    .restart local v8    # "ival":J
    :cond_8e
    const/4 v2, 0x0

    goto :goto_3f

    .line 105
    .restart local v2    # "digit_seen":Z
    :cond_90
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v14, v14, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v15, v15, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v15, v7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v7, v15, v12, v0}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v14

    invoke-virtual {v14}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v4

    .restart local v4    # "dval":D
    goto :goto_73

    .line 110
    .end local v4    # "dval":D
    :cond_aa
    const/16 v14, 0xa

    if-eq v12, v14, :cond_b5

    .line 111
    const-string v14, "invalid character in non-decimal number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 112
    :cond_b5
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v14, 0x14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v13, "str":Ljava/lang/StringBuffer;
    if-eqz v2, :cond_ce

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v14, v14, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v15, v15, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v15, v7

    invoke-virtual {v13, v14, v7, v15}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 117
    :cond_ce
    const/4 v11, -0x1

    .line 118
    .local v11, "point_loc":I
    const/4 v3, 0x0

    .line 119
    .local v3, "exp":I
    const/4 v6, 0x0

    .line 122
    .local v6, "exp_seen":Z
    :goto_d1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v14}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 123
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-static {v14, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    if-ltz v14, :cond_ea

    .line 125
    const/4 v2, 0x1

    .line 126
    move/from16 v0, p1

    int-to-char v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d1

    .line 129
    :cond_ea
    sparse-switch p1, :sswitch_data_150

    .line 155
    :cond_ed
    :goto_ed
    if-ltz p1, :cond_f6

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v14}, Lgnu/text/LineBufferedReader;->unread()V

    .line 158
    :cond_f6
    if-eqz v3, :cond_100

    .line 160
    const/16 v14, 0x65

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    :cond_100
    new-instance v14, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 132
    :sswitch_10b
    if-ltz v11, :cond_115

    .line 133
    const-string v14, "duplicate \'.\' in number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    goto :goto_d1

    .line 136
    :cond_115
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 137
    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d1

    .line 142
    :sswitch_11f
    const/16 v14, 0xa

    if-ne v12, v14, :cond_ed

    move-object/from16 v0, p0

    iget-object v14, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v14}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v10

    .local v10, "next":I
    const/16 v14, 0x2b

    if-eq v10, v14, :cond_13c

    const/16 v14, 0x2d

    if-eq v10, v14, :cond_13c

    int-to-char v14, v10

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    if-ltz v14, :cond_ed

    .line 145
    :cond_13c
    if-nez v2, :cond_145

    .line 146
    const-string v14, "mantissa with no digits"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 147
    :cond_145
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->readOptionalExponent()I

    move-result v3

    .line 148
    const/4 v6, 0x1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    goto :goto_ed

    .line 129
    nop

    :sswitch_data_150
    .sparse-switch
        0x2e -> :sswitch_10b
        0x45 -> :sswitch_11f
        0x65 -> :sswitch_11f
    .end sparse-switch
.end method

.method public getStringLiteral(C)Ljava/lang/String;
    .registers 16
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x5c

    const/16 v12, 0xd

    const/16 v11, 0xa

    .line 169
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v4, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 170
    .local v4, "i":I
    move v7, v4

    .line 171
    .local v7, "start":I
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v5, v9, Lgnu/text/LineBufferedReader;->limit:I

    .line 172
    .local v5, "limit":I
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v0, v9, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 174
    .local v0, "buffer":[C
    :goto_13
    if-ge v4, v5, :cond_2d

    .line 176
    aget-char v1, v0, v4

    .line 177
    .local v1, "c":C
    if-ne v1, p1, :cond_27

    .line 179
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    add-int/lit8 v10, v4, 0x1

    iput v10, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 180
    new-instance v9, Ljava/lang/String;

    sub-int v10, v4, v7

    invoke-direct {v9, v0, v7, v10}, Ljava/lang/String;-><init>([CII)V

    .line 192
    .end local v1    # "c":C
    :goto_26
    return-object v9

    .line 182
    .restart local v1    # "c":C
    :cond_27
    if-eq v1, v13, :cond_2d

    if-eq v1, v11, :cond_2d

    if-ne v1, v12, :cond_48

    .line 185
    .end local v1    # "c":C
    :cond_2d
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v4, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 186
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    sub-int v9, v4, v7

    invoke-virtual {v6, v0, v7, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 190
    :goto_3b
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 191
    .local v2, "ch":I
    if-ne v2, p1, :cond_4b

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_26

    .line 174
    .end local v2    # "ch":I
    .end local v6    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 193
    .end local v1    # "c":C
    .restart local v2    # "ch":I
    .restart local v6    # "sbuf":Ljava/lang/StringBuffer;
    :cond_4b
    if-gez v2, :cond_52

    .line 194
    const-string v9, "unterminated string literal"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 195
    :cond_52
    if-eq v2, v11, :cond_56

    if-ne v2, v12, :cond_5b

    .line 196
    :cond_56
    const-string v9, "string literal not terminated before end of line"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 197
    :cond_5b
    if-ne v2, v13, :cond_6e

    .line 199
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 201
    sparse-switch v2, :sswitch_data_116

    .line 234
    const/16 v9, 0x30

    if-lt v2, v9, :cond_6e

    const/16 v9, 0x37

    if-le v2, v9, :cond_ed

    .line 255
    :cond_6e
    :goto_6e
    :sswitch_6e
    int-to-char v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 204
    :sswitch_73
    const-string v9, "eof following \'\\\' in string"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 206
    :sswitch_78
    const-string v9, "line terminator following \'\\\' in string"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    goto :goto_6e

    .line 209
    :sswitch_7e
    const/16 v2, 0x8

    goto :goto_6e

    .line 210
    :sswitch_81
    const/16 v2, 0x9

    goto :goto_6e

    .line 211
    :sswitch_84
    const/16 v2, 0xa

    goto :goto_6e

    .line 212
    :sswitch_87
    const/16 v2, 0xc

    goto :goto_6e

    .line 213
    :sswitch_8a
    const/16 v2, 0xd

    goto :goto_6e

    .line 215
    :sswitch_8d
    const/4 v8, 0x0

    .line 216
    .local v8, "val":I
    const/16 v9, 0x78

    if-ne v2, v9, :cond_e6

    const/4 v4, 0x2

    :goto_93
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_e4

    .line 218
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 219
    .local v3, "d":I
    if-gez v3, :cond_bc

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eof following \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in string"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 222
    :cond_bc
    int-to-char v9, v3

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 223
    if-gez v3, :cond_e8

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid char following \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in string"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 227
    const/16 v8, 0x3f

    .line 231
    .end local v3    # "d":I
    :cond_e4
    move v2, v8

    .line 232
    goto :goto_6e

    .line 216
    :cond_e6
    const/4 v4, 0x4

    goto :goto_93

    .line 229
    .restart local v3    # "d":I
    :cond_e8
    mul-int/lit8 v9, v8, 0x10

    add-int v8, v9, v3

    .line 230
    goto :goto_93

    .line 236
    .end local v3    # "d":I
    .end local v8    # "val":I
    :cond_ed
    const/4 v8, 0x0

    .line 237
    .restart local v8    # "val":I
    const/4 v4, 0x3

    :goto_ef
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_10e

    .line 239
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 240
    .restart local v3    # "d":I
    if-gez v3, :cond_100

    .line 241
    const-string v9, "eof in octal escape in string literal"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 242
    :cond_100
    int-to-char v9, v3

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 243
    if-gez v3, :cond_111

    .line 245
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 250
    .end local v3    # "d":I
    :cond_10e
    move v2, v8

    goto/16 :goto_6e

    .line 248
    .restart local v3    # "d":I
    :cond_111
    mul-int/lit8 v9, v8, 0x8

    add-int v8, v9, v3

    .line 249
    goto :goto_ef

    .line 201
    :sswitch_data_116
    .sparse-switch
        -0x1 -> :sswitch_73
        0xa -> :sswitch_78
        0xd -> :sswitch_78
        0x22 -> :sswitch_6e
        0x27 -> :sswitch_6e
        0x5c -> :sswitch_6e
        0x62 -> :sswitch_7e
        0x66 -> :sswitch_87
        0x6e -> :sswitch_84
        0x72 -> :sswitch_8a
        0x74 -> :sswitch_81
        0x75 -> :sswitch_8d
        0x78 -> :sswitch_8d
    .end sparse-switch
.end method

.method public getToken()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 325
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 328
    .local v0, "ch":I
    :goto_6
    if-gez v0, :cond_b

    .line 329
    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 453
    :cond_a
    :goto_a
    return-object v1

    .line 330
    :cond_b
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 343
    sparse-switch v0, :sswitch_data_1cc

    .line 445
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 447
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "word":Ljava/lang/String;
    invoke-static {v2}, Lgnu/ecmascript/Lexer;->checkReserved(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, "token":Ljava/lang/Object;
    if-nez v1, :cond_a

    move-object v1, v2

    .line 451
    goto :goto_a

    .line 332
    .end local v1    # "token":Ljava/lang/Object;
    .end local v2    # "word":Ljava/lang/String;
    :cond_2c
    const/16 v3, 0xd

    if-ne v0, v3, :cond_36

    .line 334
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 335
    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    goto :goto_a

    .line 337
    :cond_36
    const/16 v3, 0xa

    if-ne v0, v3, :cond_41

    iget-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    if-nez v3, :cond_41

    .line 338
    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    goto :goto_a

    .line 339
    :cond_41
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 340
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    goto :goto_6

    .line 346
    :sswitch_49
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 347
    const/16 v3, 0x30

    if-lt v0, v3, :cond_63

    const/16 v3, 0x39

    if-gt v0, v3, :cond_63

    .line 348
    new-instance v1, Lgnu/expr/QuoteExp;

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    .line 349
    :cond_63
    sget-object v1, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    goto :goto_a

    .line 352
    :sswitch_66
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    .line 354
    :sswitch_70
    new-instance v1, Lgnu/expr/QuoteExp;

    int-to-char v3, v0

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->getStringLiteral(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    .line 355
    :sswitch_7b
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    goto :goto_a

    .line 356
    :sswitch_7e
    sget-object v1, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    goto :goto_a

    .line 357
    :sswitch_81
    sget-object v1, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    goto :goto_a

    .line 358
    :sswitch_84
    sget-object v1, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    goto :goto_a

    .line 359
    :sswitch_87
    sget-object v1, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    goto :goto_a

    .line 360
    :sswitch_8a
    sget-object v1, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 361
    :sswitch_8e
    sget-object v1, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 362
    :sswitch_92
    sget-object v1, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 363
    :sswitch_96
    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 364
    :sswitch_9a
    sget-object v1, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 366
    :sswitch_9e
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    if-ne v3, v4, :cond_af

    .line 368
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 369
    sget-object v1, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 371
    :cond_af
    sget-object v1, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 373
    :sswitch_b3
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    if-ne v3, v4, :cond_c4

    .line 375
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 376
    sget-object v1, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 378
    :cond_c4
    sget-object v1, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 380
    :sswitch_c8
    sget-object v1, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    goto/16 :goto_a

    .line 381
    :sswitch_cc
    sget-object v3, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 382
    :sswitch_d4
    sget-object v3, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 383
    :sswitch_dc
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 384
    :sswitch_e4
    sget-object v3, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 386
    :sswitch_ec
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_103

    .line 388
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 389
    sget-object v3, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 391
    :cond_103
    sget-object v3, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 393
    :sswitch_10b
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_122

    .line 395
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 396
    sget-object v3, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 398
    :cond_122
    sget-object v3, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 400
    :sswitch_12a
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_141

    .line 402
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 403
    sget-object v3, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 405
    :cond_141
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 407
    :sswitch_149
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_160

    .line 409
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 410
    sget-object v3, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 412
    :cond_160
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 414
    :sswitch_168
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 415
    packed-switch v0, :pswitch_data_25e

    .line 429
    sget-object v1, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 418
    :pswitch_175
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 419
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_191

    .line 421
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 422
    sget-object v3, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 424
    :cond_191
    sget-object v3, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 426
    :pswitch_199
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 427
    sget-object v1, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 432
    :sswitch_1a2
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_266

    .line 442
    sget-object v1, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 436
    :pswitch_1af
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 437
    sget-object v3, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 439
    :pswitch_1bc
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 440
    sget-object v1, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_a

    .line 453
    :cond_1c5
    int-to-char v3, v0

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    goto/16 :goto_a

    .line 343
    :sswitch_data_1cc
    .sparse-switch
        0x21 -> :sswitch_b3
        0x22 -> :sswitch_70
        0x25 -> :sswitch_e4
        0x26 -> :sswitch_12a
        0x27 -> :sswitch_70
        0x28 -> :sswitch_7b
        0x29 -> :sswitch_7e
        0x2a -> :sswitch_cc
        0x2b -> :sswitch_ec
        0x2c -> :sswitch_9a
        0x2d -> :sswitch_10b
        0x2e -> :sswitch_49
        0x2f -> :sswitch_d4
        0x30 -> :sswitch_66
        0x31 -> :sswitch_66
        0x32 -> :sswitch_66
        0x33 -> :sswitch_66
        0x34 -> :sswitch_66
        0x35 -> :sswitch_66
        0x36 -> :sswitch_66
        0x37 -> :sswitch_66
        0x38 -> :sswitch_66
        0x39 -> :sswitch_66
        0x3a -> :sswitch_92
        0x3b -> :sswitch_96
        0x3c -> :sswitch_1a2
        0x3d -> :sswitch_9e
        0x3e -> :sswitch_168
        0x3f -> :sswitch_8e
        0x5b -> :sswitch_81
        0x5d -> :sswitch_84
        0x5e -> :sswitch_dc
        0x7b -> :sswitch_87
        0x7c -> :sswitch_149
        0x7d -> :sswitch_8a
        0x7e -> :sswitch_c8
    .end sparse-switch

    .line 415
    :pswitch_data_25e
    .packed-switch 0x3d
        :pswitch_199
        :pswitch_175
    .end packed-switch

    .line 433
    :pswitch_data_266
    .packed-switch 0x3c
        :pswitch_1af
        :pswitch_1bc
    .end packed-switch
.end method

.method public maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 294
    .local v0, "ch":I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_d

    .line 296
    const-string v1, "assignment operation not implemented"

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 299
    :cond_d
    if-ltz v0, :cond_14

    .line 300
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 301
    :cond_14
    return-object p1
.end method
