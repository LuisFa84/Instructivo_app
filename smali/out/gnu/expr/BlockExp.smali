.class public Lgnu/expr/BlockExp;
.super Lgnu/expr/Expression;
.source "BlockExp.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field exitBody:Lgnu/expr/Expression;

.field exitTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;

.field label:Lgnu/expr/Declaration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    iget-object v2, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_5
    .catch Lgnu/expr/BlockExitException; {:try_start_0 .. :try_end_5} :catch_a

    move-result-object v1

    .line 60
    :cond_6
    :goto_6
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 52
    :catch_a
    move-exception v0

    .line 54
    .local v0, "ex":Lgnu/expr/BlockExitException;
    iget-object v2, v0, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v2, v2, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-eq v2, p0, :cond_12

    .line 55
    throw v0

    .line 56
    :cond_12
    iget-object v2, v0, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v1, v2, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 57
    .local v1, "result":Lgnu/expr/Expression;
    iget-object v2, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v2, :cond_6

    .line 58
    iget-object v2, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;
    goto :goto_6
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 9
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 66
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    iget-object v5, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-nez v5, :cond_3e

    instance-of v5, p2, Lgnu/expr/StackTarget;

    if-eqz v5, :cond_3e

    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 70
    .local v3, "rtype":Lgnu/bytecode/Type;
    :goto_11
    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v0

    .line 71
    .local v0, "bl":Lgnu/bytecode/ExitableBlock;
    iput-object v0, p0, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 72
    iget-object v5, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-nez v5, :cond_40

    move-object v5, p2

    :goto_1d
    iput-object v5, p0, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    .line 73
    iget-object v5, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v5, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 74
    iget-object v5, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v5, :cond_43

    .line 76
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 77
    .local v2, "doneLabel":Lgnu/bytecode/Label;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 78
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 79
    iget-object v5, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v5, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    invoke-virtual {v2, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 84
    .end local v2    # "doneLabel":Lgnu/bytecode/Label;
    :goto_3b
    iput-object v4, p0, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 85
    return-void

    .end local v0    # "bl":Lgnu/bytecode/ExitableBlock;
    .end local v3    # "rtype":Lgnu/bytecode/Type;
    :cond_3e
    move-object v3, v4

    .line 66
    goto :goto_11

    .line 72
    .restart local v0    # "bl":Lgnu/bytecode/ExitableBlock;
    .restart local v3    # "rtype":Lgnu/bytecode/Type;
    :cond_40
    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_1d

    .line 83
    :cond_43
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    goto :goto_3b
.end method

.method protected mustCompile()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 5
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .prologue
    .line 101
    const-string v0, "(Block"

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-eqz v0, :cond_1a

    .line 104
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 105
    iget-object v0, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 107
    :cond_1a
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 108
    iget-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 109
    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v0, :cond_33

    .line 111
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 112
    const-string v0, "else "

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 115
    :cond_33
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "body"    # Lgnu/expr/Expression;

    .prologue
    .line 24
    iput-object p1, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 25
    return-void
.end method

.method public setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "body"    # Lgnu/expr/Expression;
    .param p2, "exitBody"    # Lgnu/expr/Expression;

    .prologue
    .line 29
    iput-object p1, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 30
    iput-object p2, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    .line 31
    return-void
.end method

.method public setLabel(Lgnu/expr/Declaration;)V
    .registers 2
    .param p1, "label"    # Lgnu/expr/Declaration;

    .prologue
    .line 35
    iput-object p1, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    .line 36
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 95
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_18

    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v0, :cond_18

    .line 96
    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    .line 97
    :cond_18
    return-void
.end method
