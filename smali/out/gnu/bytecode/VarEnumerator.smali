.class public Lgnu/bytecode/VarEnumerator;
.super Ljava/lang/Object;
.source "VarEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field currentScope:Lgnu/bytecode/Scope;

.field next:Lgnu/bytecode/Variable;

.field topScope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Scope;)V
    .registers 2
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    .line 20
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->reset()V

    .line 21
    return-void
.end method

.method private fixup()V
    .registers 3

    .prologue
    .line 36
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_2b

    .line 38
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    if-eqz v0, :cond_1f

    .line 39
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 50
    :goto_10
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 46
    :cond_19
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 42
    :cond_1f
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    if-nez v0, :cond_2c

    .line 44
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-ne v0, v1, :cond_19

    .line 52
    :cond_2b
    return-void

    .line 48
    :cond_2c
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_10
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 75
    .local v0, "result":Lgnu/bytecode/Variable;
    if-nez v0, :cond_e

    .line 76
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "VarEnumerator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_e
    return-object v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 58
    .local v0, "result":Lgnu/bytecode/Variable;
    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 61
    iget-object v1, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v1, :cond_11

    .line 62
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 64
    :cond_11
    return-object v0
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 26
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-eqz v0, :cond_17

    .line 28
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 29
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_17

    .line 30
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 32
    :cond_17
    return-void
.end method
