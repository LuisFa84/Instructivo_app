.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "l"    # Ljava/lang/Object;
    .param p1, "$Qu"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    :goto_8
    return-object v0

    .line 63
    :cond_9
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_20

    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    .line 66
    :cond_20
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 69
    new-instance v0, Lgnu/kawa/slib/srfi37$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "index"    # Ljava/lang/Object;
    .param p2, "shorts"    # Ljava/lang/Object;
    .param p3, "args"    # Ljava/lang/Object;
    .param p4, "seeds"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    new-instance v5, Lgnu/kawa/slib/srfi37$frame1;

    invoke-direct {v5}, Lgnu/kawa/slib/srfi37$frame1;-><init>()V

    iput-object p0, v5, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iput-object p2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iput-object p3, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iput-object p4, v5, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    .line 79
    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_17
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_e5

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_32

    .line 80
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    :goto_31
    return-object v2

    .line 81
    :cond_32
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_34
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_36} :catch_ee

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    :try_start_38
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3f} :catch_f7

    move-result v3

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    iput-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    .line 82
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_95

    .end local v1    # "x":Ljava/lang/Object;
    :goto_54
    iput-object v1, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 87
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_64
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_66} :catch_101

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_72
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_79
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_79} :catch_10a

    move-result v1

    .local v1, "x":Z
    if-eqz v1, :cond_d4

    .line 88
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_7e
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_80
    .catch Ljava/lang/ClassCastException; {:try_start_7e .. :try_end_80} :catch_114

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_aa

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_b6

    .line 90
    .end local v1    # "x":Ljava/lang/Object;
    :cond_8c
    :goto_8c
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_31

    .line 82
    .restart local v1    # "x":Ljava/lang/Object;
    :cond_95
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v1

    goto :goto_54

    .line 88
    :cond_aa
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_ac
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_ae
    .catch Ljava/lang/ClassCastException; {:try_start_ac .. :try_end_ae} :catch_11d

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_8c

    .line 100
    .end local v1    # "x":Ljava/lang/Object;
    :cond_b6
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_b8
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_ba
    .catch Ljava/lang/ClassCastException; {:try_start_b8 .. :try_end_ba} :catch_126

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_d7

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 102
    :cond_ca
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_31

    .line 87
    .local v1, "x":Z
    :cond_d4
    if-eqz v1, :cond_b6

    goto :goto_8c

    .line 100
    .local v1, "x":Ljava/lang/Object;
    :cond_d7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_ca

    .line 110
    :cond_db
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_31

    .line 79
    .end local v1    # "x":Ljava/lang/Object;
    :catch_e5
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 81
    :catch_ee
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_f7
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v6, 0x2

    invoke-direct {v3, v2, v5, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 87
    :catch_101
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_10a
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "x"

    const/4 v6, -0x2

    invoke-direct {v4, v2, v5, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 88
    .local v1, "x":Z
    :catch_114
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "option-required-arg?"

    invoke-direct {v4, v3, v5, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 89
    .local v1, "x":Ljava/lang/Object;
    :catch_11d
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "option-optional-arg?"

    invoke-direct {v4, v3, v5, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 100
    .end local v1    # "x":Ljava/lang/Object;
    :catch_126
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "option-required-arg?"

    invoke-direct {v4, v3, v5, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "operands"    # Ljava/lang/Object;
    .param p2, "seeds"    # Ljava/lang/Object;

    .prologue
    .line 122
    new-instance v0, Lgnu/kawa/slib/srfi37$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame2;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 124
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    :goto_1d
    return-object v0

    :cond_1e
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d
.end method

.method public lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "args"    # Ljava/lang/Object;
    .param p2, "seeds"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    new-instance v8, Lgnu/kawa/slib/srfi37$frame3;

    invoke-direct {v8}, Lgnu/kawa/slib/srfi37$frame3;-><init>()V

    iput-object p0, v8, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p2, v8, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 132
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v5, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v6, v8, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 215
    :goto_1c
    return-object v4

    .line 133
    :cond_1d
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iput-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    .line 137
    const-string v4, "--"

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 141
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lgnu/kawa/slib/srfi37$frame;->lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1c

    .line 142
    :cond_40
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_42
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_44} :catch_1e4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_ba

    move v3, v6

    .local v3, "x":Z
    :goto_4c
    if-eqz v3, :cond_f9

    .line 148
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_52
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_54} :catch_1ed

    invoke-static {v4, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_f1

    .line 149
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_66
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_68
    .catch Ljava/lang/ClassCastException; {:try_start_66 .. :try_end_68} :catch_1f6

    invoke-static {v4, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 147
    if-eqz v3, :cond_e9

    .line 150
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_7a
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_7c
    .catch Ljava/lang/ClassCastException; {:try_start_7a .. :try_end_7c} :catch_1ff

    invoke-static {v4, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v4, 0x1

    .line 147
    if-eqz v3, :cond_e1

    .line 151
    sget-object v1, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    .line 152
    :goto_90
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_94
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_94 .. :try_end_96} :catch_208

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_bc

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    :cond_a8
    :goto_a8
    iput-object v1, v8, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 137
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_101

    .line 10000
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    .end local v3    # "x":Z
    :cond_ba
    move v3, v7

    .line 142
    goto :goto_4c

    .line 152
    .restart local v3    # "x":Z
    :cond_bc
    sget-object v9, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_c0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_c2
    .catch Ljava/lang/ClassCastException; {:try_start_c0 .. :try_end_c2} :catch_211

    :try_start_c2
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_c9
    .catch Ljava/lang/ClassCastException; {:try_start_c2 .. :try_end_c9} :catch_21a

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v9, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 157
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "index":Ljava/lang/Object;
    goto :goto_90

    .line 147
    .end local v1    # "index":Ljava/lang/Object;
    :cond_e1
    if-eqz v3, :cond_e6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_e6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_e9
    if-eqz v3, :cond_ee

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_ee
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_f1
    if-eqz v3, :cond_f6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_f6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_f9
    if-eqz v3, :cond_fe

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a8

    :cond_fe
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a8

    .line 181
    :cond_101
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_103
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_105
    .catch Ljava/lang/ClassCastException; {:try_start_103 .. :try_end_105} :catch_223

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_173

    move v3, v6

    :goto_10d
    if-eqz v3, :cond_1b4

    .line 182
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_113
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_115
    .catch Ljava/lang/ClassCastException; {:try_start_113 .. :try_end_115} :catch_22c

    invoke-static {v4, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .line 181
    if-eqz v3, :cond_175

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_127
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_129
    .catch Ljava/lang/ClassCastException; {:try_start_127 .. :try_end_129} :catch_235

    invoke-static {v4, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_177

    .line 185
    :cond_137
    :goto_137
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_139
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_13b
    .catch Ljava/lang/ClassCastException; {:try_start_139 .. :try_end_13b} :catch_23e

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_13d
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_13f
    .catch Ljava/lang/ClassCastException; {:try_start_13d .. :try_end_13f} :catch_247

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v10, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    .line 186
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "x":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1b7

    .end local v3    # "x":Ljava/lang/Object;
    :goto_153
    iput-object v3, v8, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .line 192
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    :try_start_157
    check-cast v4, Lgnu/kawa/slib/option$Mntype;
    :try_end_159
    .catch Ljava/lang/ClassCastException; {:try_start_157 .. :try_end_159} :catch_250

    invoke-static {v4}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "x":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1c8

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cc

    .line 194
    :cond_169
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    .local v3, "x":Z
    :cond_173
    move v3, v7

    .line 181
    goto :goto_10d

    :cond_175
    if-nez v3, :cond_137

    .line 209
    :cond_177
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_179
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_17b
    .catch Ljava/lang/ClassCastException; {:try_start_179 .. :try_end_17b} :catch_259

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v6, :cond_1d6

    move v3, v6

    :goto_182
    if-eqz v3, :cond_1d8

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_188
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_18a
    .catch Ljava/lang/ClassCastException; {:try_start_188 .. :try_end_18a} :catch_262

    invoke-static {v4, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_1da

    .line 212
    :cond_198
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_19a
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_19c
    .catch Ljava/lang/ClassCastException; {:try_start_19a .. :try_end_19c} :catch_26b

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_19e
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_1a0
    .catch Ljava/lang/ClassCastException; {:try_start_19e .. :try_end_1a0} :catch_274

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v6, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    .local v2, "shorts":Ljava/lang/CharSequence;
    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v6, v8, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v5, v6}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    .line 181
    .end local v2    # "shorts":Ljava/lang/CharSequence;
    :cond_1b4
    if-eqz v3, :cond_177

    goto :goto_137

    .line 186
    .local v3, "x":Ljava/lang/Object;
    :cond_1b7
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v9, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v4, v5, v6, v9}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v3

    goto :goto_153

    .line 192
    :cond_1c8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_169

    .line 201
    :cond_1cc
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    .local v3, "x":Z
    :cond_1d6
    move v3, v7

    .line 209
    goto :goto_182

    :cond_1d8
    if-nez v3, :cond_198

    .line 215
    :cond_1da
    iget-object v4, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    iget-object v5, v8, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    .line 147
    .end local v3    # "x":Z
    :catch_1e4
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 148
    .restart local v3    # "x":Z
    :catch_1ed
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 149
    :catch_1f6
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 150
    :catch_1ff
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 152
    :catch_208
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 154
    :catch_211
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_21a
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v10, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 181
    :catch_223
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 182
    :catch_22c
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 183
    :catch_235
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 185
    :catch_23e
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_247
    move-exception v4

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v4, v8, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 192
    .end local v3    # "x":Z
    :catch_250
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v8, "option-required-arg?"

    invoke-direct {v6, v5, v8, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 209
    .restart local v3    # "x":Z
    :catch_259
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 210
    :catch_262
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 212
    :catch_26b
    move-exception v5

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v5, v8, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_274
    move-exception v4

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v4, v8, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method
