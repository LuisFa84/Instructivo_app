.class public Lkawa/lib/srfi95$frame0;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field keyer:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;

.field seq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda2step(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    const/4 v13, 0x1

    .line 126
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_2c

    sget-object v8, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, "j":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "a":Ljava/lang/Object;
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v8, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, "k":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, "b":Ljava/lang/Object;
    iget-object v8, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-static {v1, v2, v8, v9}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 144
    .end local v1    # "a":Ljava/lang/Object;
    .end local v2    # "b":Ljava/lang/Object;
    .end local v3    # "j":Ljava/lang/Object;
    .end local v4    # "k":Ljava/lang/Object;
    :goto_2b
    return-object v5

    .line 131
    :cond_2c
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 132
    sget-object v9, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_90

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 133
    sget-object v8, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    iget-object v5, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 135
    .local v5, "p":Ljava/lang/Object;
    .local v6, "x":Ljava/lang/Object;
    .local v7, "y":Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 136
    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v11, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v10, v11, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v12, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_82

    .line 137
    :try_start_70
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_70 .. :try_end_74} :catch_b7

    invoke-static {v8, v7}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 138
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_7d
    check-cast v8, Lgnu/lists/Pair;
    :try_end_7f
    .catch Ljava/lang/ClassCastException; {:try_start_7d .. :try_end_7f} :catch_c0

    invoke-static {v8, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 139
    :cond_82
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_88
    check-cast v8, Lgnu/lists/Pair;
    :try_end_8a
    .catch Ljava/lang/ClassCastException; {:try_start_88 .. :try_end_8a} :catch_c9

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_2b

    .line 140
    .end local v5    # "p":Ljava/lang/Object;
    .end local v6    # "x":Ljava/lang/Object;
    .end local v7    # "y":Ljava/lang/Object;
    :cond_90
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 141
    sget-object v9, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v8, p1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_b3

    iget-object v5, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 142
    .restart local v5    # "p":Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 143
    :try_start_a8
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0
    :try_end_ac
    .catch Ljava/lang/ClassCastException; {:try_start_a8 .. :try_end_ac} :catch_d2

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v9}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 144
    .end local v5    # "p":Ljava/lang/Object;
    :cond_b3
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto/16 :goto_2b

    .line 137
    .restart local v5    # "p":Ljava/lang/Object;
    .restart local v6    # "x":Ljava/lang/Object;
    .restart local v7    # "y":Ljava/lang/Object;
    :catch_b7
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-car!"

    invoke-direct {v9, v8, v10, v13, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 138
    :catch_c0
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    const-string v11, "set-car!"

    invoke-direct {v10, v9, v11, v13, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 139
    :catch_c9
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    const-string v11, "set-cdr!"

    invoke-direct {v10, v9, v11, v13, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v10

    .line 143
    .end local v6    # "x":Ljava/lang/Object;
    .end local v7    # "y":Ljava/lang/Object;
    :catch_d2
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "set-cdr!"

    invoke-direct {v9, v8, v10, v13, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method
