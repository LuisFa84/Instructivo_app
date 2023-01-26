.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "language"    # Lgnu/expr/Language;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 126
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/ApplyToArgs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 134
    aget-object v2, p1, v6

    .line 135
    .local v2, "proc":Ljava/lang/Object;
    instance-of v4, v2, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_19

    .line 137
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    new-array v3, v4, [Ljava/lang/Object;

    .line 138
    .local v3, "rargs":[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    check-cast v2, Lgnu/mapping/Procedure;

    .end local v2    # "proc":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 168
    .end local v3    # "rargs":[Ljava/lang/Object;
    :goto_18
    return-object v4

    .line 141
    .restart local v2    # "proc":Ljava/lang/Object;
    :cond_19
    instance-of v4, v2, Lgnu/bytecode/Type;

    if-nez v4, :cond_21

    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_28

    .line 144
    :cond_21
    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v4, p1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_18

    .line 146
    :cond_28
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_45

    .line 154
    array-length v4, p1

    if-eq v4, v7, :cond_36

    .line 155
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 156
    :cond_36
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 158
    .local v0, "index":I
    check-cast v2, Ljava/util/List;

    .end local v2    # "proc":Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_18

    .line 163
    .end local v0    # "index":I
    .restart local v2    # "proc":Ljava/lang/Object;
    :cond_45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "pclass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 166
    array-length v4, p1

    if-eq v4, v7, :cond_59

    .line 167
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 168
    :cond_59
    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_18

    .line 170
    :cond_66
    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "procedure"

    invoke-direct {v4, p0, v6, v2, v5}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 74
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_a

    .line 75
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 78
    :goto_9
    return-void

    .line 77
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_a
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_9
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 82
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_a

    .line 83
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 86
    :goto_9
    return-void

    .line 85
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_9
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 90
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_a

    .line 91
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 94
    :goto_9
    return-void

    .line 93
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_9
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 99
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_a

    .line 100
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 103
    :goto_9
    return-void

    .line 102
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_a
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_9
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 9
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 108
    .local v0, "code":I
    if-eqz v0, :cond_25

    .line 110
    move-object v1, p0

    .line 111
    .local v1, "proc":Lgnu/mapping/Procedure;
    array-length v3, p1

    if-lez v3, :cond_20

    aget-object v3, p1, v5

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_20

    .line 113
    aget-object v1, p1, v5

    .end local v1    # "proc":Lgnu/mapping/Procedure;
    check-cast v1, Lgnu/mapping/Procedure;

    .line 114
    .restart local v1    # "proc":Lgnu/mapping/Procedure;
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/Object;

    .line 115
    .local v2, "xargs":[Ljava/lang/Object;
    const/4 v3, 0x1

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object p1, v2

    .line 118
    .end local v2    # "xargs":[Ljava/lang/Object;
    :cond_20
    invoke-static {v0, v1, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 120
    .end local v1    # "proc":Lgnu/mapping/Procedure;
    :cond_25
    return-void
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 14
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_b

    .line 15
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 17
    :goto_a
    return v0

    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_a
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 22
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_b

    .line 23
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 25
    :goto_a
    return v0

    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_a
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 30
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_b

    .line 31
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 33
    :goto_a
    return v0

    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_a
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 39
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_b

    .line 40
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 42
    :goto_a
    return v0

    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_b
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_a
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    array-length v6, p1

    .line 48
    .local v6, "n":I
    if-lez v6, :cond_51

    aget-object v1, p1, v3

    instance-of v1, v1, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_51

    .line 50
    aget-object v0, p1, v3

    check-cast v0, Lgnu/mapping/Procedure;

    .line 51
    .local v0, "proc":Lgnu/mapping/Procedure;
    packed-switch v6, :pswitch_data_56

    .line 64
    add-int/lit8 v1, v6, -0x1

    new-array v7, v1, [Ljava/lang/Object;

    .line 65
    .local v7, "xargs":[Ljava/lang/Object;
    add-int/lit8 v1, v6, -0x1

    invoke-static {p1, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-virtual {v0, v7, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 69
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    .end local v7    # "xargs":[Ljava/lang/Object;
    :goto_21
    return v1

    .line 54
    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :pswitch_22
    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 56
    :pswitch_27
    aget-object v1, p1, v2

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 58
    :pswitch_2e
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    invoke-virtual {v0, v1, v2, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 60
    :pswitch_37
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    invoke-virtual {v0, v1, v2, v3, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 62
    :pswitch_42
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    const/4 v4, 0x4

    aget-object v4, p1, v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 69
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_51
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_21

    .line 51
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_22
        :pswitch_27
        :pswitch_2e
        :pswitch_37
        :pswitch_42
    .end packed-switch
.end method
