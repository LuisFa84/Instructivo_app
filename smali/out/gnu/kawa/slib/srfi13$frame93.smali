.class public Lgnu/kawa/slib/srfi13$frame93;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTokenize$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame93"
.end annotation


# instance fields
.field final lambda$Fn208:Lgnu/expr/ModuleMethod;

.field final lambda$Fn209:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn208:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb8

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame93;->lambda$Fn209:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame93;->lambda208()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame93;->lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method lambda208()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1696
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mntokenize:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_9} :catch_f

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v2, 0x6a0

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda209(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1697
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, p2

    .line 1698
    .local v2, "i":Ljava/lang/Object;
    :goto_7
    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v6, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_d
    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_96

    move-result v5

    .local v5, "x":Z
    if-eqz v5, :cond_71

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_1b
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1b .. :try_end_1e} :catch_a0

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v9

    aput-object v2, v8, v10

    invoke-static {v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringIndexRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "temp":Ljava/lang/Object;
    :goto_29
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_95

    .line 10000
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1701
    .local v4, "tend":Ljava/lang/Object;
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$token$Mnchars:Lgnu/mapping/Location;

    :try_start_39
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_3c
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_39 .. :try_end_3c} :catch_ab

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v9

    aput-object v3, v8, v10

    invoke-static {v6, v7, v8}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_79

    .line 1704
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    :try_start_4d
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_4f} :catch_b6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    .line 10000
    invoke-virtual {v7, v8, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_57
    move-object v0, v8

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_5e
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_5e} :catch_bf

    move-result v8

    :try_start_5f
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_66} :catch_c8

    move-result v7

    invoke-static {v6, v8, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .local v1, "ans":Lgnu/lists/Pair;
    move-object v2, v3

    goto :goto_7

    .line 1698
    .end local v1    # "ans":Lgnu/lists/Pair;
    .end local v3    # "temp":Ljava/lang/Object;
    .end local v4    # "tend":Ljava/lang/Object;
    :cond_71
    if-eqz v5, :cond_76

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_29

    :cond_76
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_29

    .line 1706
    .restart local v3    # "temp":Ljava/lang/Object;
    .restart local v4    # "tend":Ljava/lang/Object;
    :cond_79
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame93;->s:Ljava/lang/Object;

    :try_start_7b
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_7d
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_7d} :catch_d1

    :try_start_7d
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_84
    .catch Ljava/lang/ClassCastException; {:try_start_7d .. :try_end_84} :catch_da

    move-result v8

    :try_start_85
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_8c
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_8c} :catch_e3

    move-result v7

    invoke-static {v6, v8, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 1707
    .end local v4    # "tend":Ljava/lang/Object;
    :cond_95
    return-object v1

    .line 1698
    .end local v3    # "temp":Ljava/lang/Object;
    .end local v5    # "x":Z
    :catch_96
    move-exception v6

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "x"

    const/4 v10, -0x2

    invoke-direct {v8, v6, v9, v10, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .restart local v5    # "x":Z
    :catch_a0
    move-exception v6

    const-string v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v8, 0x6a2

    const/16 v9, 0x30

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .restart local v3    # "temp":Ljava/lang/Object;
    .restart local v4    # "tend":Ljava/lang/Object;
    :catch_ab
    move-exception v6

    const-string v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v8, 0x6a5

    const/16 v9, 0x22

    invoke-virtual {v6, v7, v8, v9}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v6

    .line 1704
    :catch_b6
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "substring"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 11674
    :catch_bf
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v9, "substring"

    invoke-direct {v7, v6, v9, v11, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_c8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v12, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 1706
    :catch_d1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "substring"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_da
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_e3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v12, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0xb7

    if-ne v1, v2, :cond_c

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_b
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_10
.end method
