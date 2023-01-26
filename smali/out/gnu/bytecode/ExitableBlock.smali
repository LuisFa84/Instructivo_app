.class public Lgnu/bytecode/ExitableBlock;
.super Ljava/lang/Object;
.source "ExitableBlock.java"


# instance fields
.field code:Lgnu/bytecode/CodeAttr;

.field currentTryState:Lgnu/bytecode/TryState;

.field endLabel:Lgnu/bytecode/Label;

.field initialTryState:Lgnu/bytecode/TryState;

.field nextCase:Lgnu/bytecode/ExitableBlock;

.field outer:Lgnu/bytecode/ExitableBlock;

.field resultType:Lgnu/bytecode/Type;

.field resultVariable:Lgnu/bytecode/Variable;

.field switchCase:I


# direct methods
.method constructor <init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V
    .registers 6
    .param p1, "resultType"    # Lgnu/bytecode/Type;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;
    .param p3, "runFinallyBlocks"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    .line 48
    iput-object p1, p0, Lgnu/bytecode/ExitableBlock;->resultType:Lgnu/bytecode/Type;

    .line 49
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    .line 50
    if-eqz p3, :cond_23

    if-eqz p1, :cond_23

    .line 52
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 53
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 54
    .local v0, "var":Lgnu/bytecode/Variable;
    iput-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    .line 56
    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 57
    iget v1, p2, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    iput v1, p0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    .line 59
    .end local v0    # "var":Lgnu/bytecode/Variable;
    :cond_23
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v1, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    .line 60
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_b

    .line 80
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 81
    :cond_b
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v0, v1}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    .line 82
    return-void
.end method

.method exit(Lgnu/bytecode/TryState;)V
    .registers 5
    .param p1, "activeTry"    # Lgnu/bytecode/TryState;

    .prologue
    .line 98
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne p1, v1, :cond_c

    .line 99
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 123
    :goto_b
    return-void

    .line 100
    :cond_c
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 102
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 103
    .local v0, "stack":Lgnu/bytecode/TryState;
    :goto_18
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-eq v0, v1, :cond_2e

    .line 105
    iget-object v1, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    if-nez v1, :cond_2b

    .line 108
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 103
    :cond_2b
    iget-object v0, v0, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    goto :goto_18

    .line 111
    :cond_2e
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_b

    .line 115
    .end local v0    # "stack":Lgnu/bytecode/TryState;
    :cond_36
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-nez v1, :cond_3d

    .line 116
    invoke-virtual {p0, p1}, Lgnu/bytecode/ExitableBlock;->linkCase(Lgnu/bytecode/TryState;)V

    .line 117
    :cond_3d
    iget-object v1, p1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_48

    .line 118
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 119
    :cond_48
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget v2, p0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 120
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 121
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_b
.end method

.method public exitIsGoto()Lgnu/bytecode/Label;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v0, v1}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v0, v1, :cond_11

    .line 90
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    .line 92
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method finish()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 66
    :cond_13
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 67
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_32

    .line 69
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 70
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 71
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget v1, v0, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    .line 73
    :cond_32
    return-void
.end method

.method linkCase(Lgnu/bytecode/TryState;)V
    .registers 3
    .param p1, "tryState"    # Lgnu/bytecode/TryState;

    .prologue
    .line 127
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-eq v0, p1, :cond_16

    .line 129
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_e

    .line 130
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 131
    :cond_e
    iget-object v0, p1, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    iput-object v0, p0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 132
    iput-object p0, p1, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 133
    iput-object p1, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 135
    :cond_16
    return-void
.end method
