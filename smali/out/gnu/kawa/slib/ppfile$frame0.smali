.class public Lgnu/kawa/slib/ppfile$frame0;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field port:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/ppfile$frame;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:34"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/ppfile$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 34
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "export"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 34
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "c":Ljava/lang/Object;
    :cond_a
    :goto_a
    invoke-static {v1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "x":Z
    if-eqz v3, :cond_18

    if-eqz v3, :cond_15

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    :goto_14
    return-object v4

    .line 38
    :cond_15
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_18
    :try_start_18
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;

    move-object v4, v0
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1c} :catch_cb

    invoke-static {v4}, Lkawa/lib/rnrs/unicode;->isCharWhitespace(Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 40
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_36
    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    :try_start_38
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;

    move-object v4, v0
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3c} :catch_d4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 46
    :goto_42
    invoke-static {v1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    if-eqz v3, :cond_4d

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_4d
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_50
    sget-object v4, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    :try_start_52
    check-cast v1, Lgnu/text/Char;
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_54} :catch_dd

    .end local v1    # "c":Ljava/lang/Object;
    invoke-static {v4, v1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 48
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Object;
    goto :goto_a

    .line 51
    .end local v1    # "c":Ljava/lang/Object;
    :cond_6e
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Object;
    goto :goto_42

    .line 44
    :cond_82
    iget-object v4, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    :try_start_84
    check-cast v4, Lgnu/mapping/InPort;
    :try_end_86
    .catch Ljava/lang/ClassCastException; {:try_start_84 .. :try_end_86} :catch_e6

    invoke-static {v4}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    if-eqz v3, :cond_95

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    :cond_95
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_14

    .line 57
    :cond_99
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_a

    .line 61
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    .line 39
    .end local v2    # "o":Ljava/lang/Object;
    :catch_cb
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char-whitespace?"

    invoke-direct {v5, v4, v6, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 42
    :catch_d4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char=?"

    invoke-direct {v5, v4, v6, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 47
    :catch_dd
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char=?"

    invoke-direct {v5, v4, v6, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 54
    :catch_e6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "read"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_d

    .line 34
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_c
.end method
