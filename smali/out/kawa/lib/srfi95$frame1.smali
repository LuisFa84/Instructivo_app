.class public Lkawa/lib/srfi95$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "kcara"    # Ljava/lang/Object;
    .param p4, "b"    # Ljava/lang/Object;
    .param p5, "kcarb"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 89
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    invoke-virtual {v0, v1, p5, p3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_43

    .line 91
    :try_start_d
    check-cast p1, Lgnu/lists/Pair;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_79

    .end local p1    # "r":Ljava/lang/Object;
    invoke-static {p1, p4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 92
    invoke-virtual {v0, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 93
    :try_start_1e
    check-cast p4, Lgnu/lists/Pair;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_82

    .end local p4    # "b":Ljava/lang/Object;
    invoke-static {p4, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 99
    .end local p2    # "a":Ljava/lang/Object;
    :goto_25
    return-object v0

    .line 94
    .restart local p2    # "a":Ljava/lang/Object;
    .restart local p4    # "b":Ljava/lang/Object;
    :cond_26
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_25

    .line 96
    .restart local p1    # "r":Ljava/lang/Object;
    :cond_43
    :try_start_43
    check-cast p1, Lgnu/lists/Pair;
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_45} :catch_8b

    .end local p1    # "r":Ljava/lang/Object;
    invoke-static {p1, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 97
    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 98
    :try_start_54
    check-cast p2, Lgnu/lists/Pair;
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_56} :catch_94

    .end local p2    # "a":Ljava/lang/Object;
    invoke-static {p2, p4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_25

    .line 99
    .restart local p2    # "a":Ljava/lang/Object;
    :cond_5c
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_25

    .line 91
    .restart local p1    # "r":Ljava/lang/Object;
    :catch_79
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-cdr!"

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 93
    .end local p1    # "r":Ljava/lang/Object;
    :catch_82
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-cdr!"

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 96
    .restart local p1    # "r":Ljava/lang/Object;
    :catch_8b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-cdr!"

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 98
    .end local p1    # "r":Ljava/lang/Object;
    :catch_94
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-cdr!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method
