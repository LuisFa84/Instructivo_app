.class public Lgnu/commonlisp/lang/setq;
.super Lkawa/lang/Syntax;
.source "setq.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 12
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 18
    .local v1, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 19
    .local v3, "results":Ljava/util/Vector;
    :goto_5
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v8, :cond_71

    .line 21
    instance-of v8, v1, Lgnu/lists/Pair;

    if-nez v8, :cond_14

    .line 22
    const-string v8, "invalid syntax for setq"

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 54
    :cond_13
    :goto_13
    return-object v4

    :cond_14
    move-object v2, v1

    .line 23
    check-cast v2, Lgnu/lists/Pair;

    .line 24
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 26
    .local v6, "sym":Ljava/lang/Object;
    instance-of v8, v6, Lgnu/mapping/Symbol;

    if-nez v8, :cond_23

    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_33

    .line 27
    :cond_23
    move-object v0, v6

    .line 32
    :goto_24
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 33
    instance-of v8, v1, Lgnu/lists/Pair;

    if-nez v8, :cond_41

    .line 34
    const-string v8, "wrong number of arguments for setq"

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_13

    .line 28
    :cond_33
    sget-object v8, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    if-ne v6, v8, :cond_3a

    .line 29
    const-string v0, "nil"

    .local v0, "name":Ljava/lang/String;
    goto :goto_24

    .line 31
    .end local v0    # "name":Ljava/lang/String;
    :cond_3a
    const-string v8, "invalid variable name in setq"

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_13

    :cond_41
    move-object v2, v1

    .line 35
    check-cast v2, Lgnu/lists/Pair;

    .line 36
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    .line 37
    .local v7, "value":Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 38
    new-instance v4, Lgnu/expr/SetExp;

    invoke-direct {v4, v0, v7}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 39
    .local v4, "sexp":Lgnu/expr/SetExp;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lgnu/expr/SetExp;->setFlag(I)V

    .line 40
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v8, :cond_64

    .line 42
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lgnu/expr/SetExp;->setHasValue(Z)V

    .line 43
    if-eqz v3, :cond_13

    .line 46
    :cond_64
    if-nez v3, :cond_6d

    .line 47
    new-instance v3, Ljava/util/Vector;

    .end local v3    # "results":Ljava/util/Vector;
    const/16 v8, 0xa

    invoke-direct {v3, v8}, Ljava/util/Vector;-><init>(I)V

    .line 48
    .restart local v3    # "results":Ljava/util/Vector;
    :cond_6d
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v4    # "sexp":Lgnu/expr/SetExp;
    .end local v6    # "sym":Ljava/lang/Object;
    .end local v7    # "value":Lgnu/expr/Expression;
    :cond_71
    if-nez v3, :cond_76

    .line 51
    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    goto :goto_13

    .line 52
    :cond_76
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v5, v8, [Lgnu/expr/Expression;

    .line 53
    .local v5, "stmts":[Lgnu/expr/Expression;
    invoke-virtual {v3, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 54
    new-instance v4, Lgnu/expr/BeginExp;

    invoke-direct {v4, v5}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    goto :goto_13
.end method
