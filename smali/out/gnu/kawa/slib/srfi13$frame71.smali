.class public Lgnu/kawa/slib/srfi13$frame71;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringPadRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame71"
.end annotation


# instance fields
.field final lambda$Fn161:Lgnu/expr/ModuleMethod;

.field final lambda$Fn162:Lgnu/expr/ModuleMethod;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame71;->lambda$Fn161:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8b

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame71;->lambda$Fn162:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda163(Ljava/lang/Object;)Z
    .registers 4
    .param p0, "n"    # Ljava/lang/Object;

    .prologue
    .line 1047
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "x":Z
    if-eqz v0, :cond_1a

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v1, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local v0    # "x":Z
    :cond_1a
    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame71;->lambda161()Ljava/lang/Object;

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

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame71;->lambda162(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method lambda161()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1046
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnpad$Mnright:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

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

    const/16 v2, 0x416

    const/16 v3, 0x3a

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda162(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1047
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_7
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_a
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_7 .. :try_end_a} :catch_6f

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/srfi13;->lambda$Fn163:Lgnu/expr/ModuleMethod;

    .line 1048
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->string$Mnpad$Mnright:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v3, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1050
    .local v2, "len":Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_47

    .line 1051
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

    :try_start_28
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2a} :catch_79

    :try_start_2a
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_31} :catch_82

    move-result v6

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_3a
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_41} :catch_8b

    move-result v4

    invoke-static {v3, v6, v4}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v1

    .line 1054
    :goto_46
    return-object v1

    .line 1052
    :cond_47
    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    :try_start_49
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_50} :catch_94

    move-result v3

    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-static {v3, v4}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1053
    .local v1, "ans":Ljava/lang/CharSequence;
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

    :try_start_59
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5b} :catch_9d

    :try_start_5b
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_62} :catch_a6

    move-result v5

    :try_start_63
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_6a
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_6a} :catch_b0

    move-result v4

    invoke-static {v1, v8, v3, v5, v4}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    goto :goto_46

    .line 1054
    .end local v1    # "ans":Ljava/lang/CharSequence;
    .end local v2    # "len":Ljava/lang/Object;
    :catch_6f
    move-exception v3

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const/16 v5, 0x417

    const/4 v6, 0x7

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v3

    .line 1051
    .restart local v2    # "len":Ljava/lang/Object;
    :catch_79
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "%substring/shared"

    invoke-direct {v5, v4, v6, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_82
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "%substring/shared"

    invoke-direct {v4, v3, v5, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_8b
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v6, "%substring/shared"

    invoke-direct {v4, v3, v6, v10, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 1052
    :catch_94
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-string"

    invoke-direct {v5, v3, v6, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 1053
    .restart local v1    # "ans":Ljava/lang/CharSequence;
    :catch_9d
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "%string-copy!"

    invoke-direct {v5, v4, v6, v10, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_a6
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "%string-copy!"

    const/4 v6, 0x3

    invoke-direct {v4, v3, v5, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_b0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "%string-copy!"

    const/4 v6, 0x4

    invoke-direct {v4, v3, v5, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x8a

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

    const/16 v1, 0x8b

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
