.class public Lgnu/expr/ConditionalTarget;
.super Lgnu/expr/Target;
.source "ConditionalTarget.java"


# instance fields
.field public ifFalse:Lgnu/bytecode/Label;

.field public ifTrue:Lgnu/bytecode/Label;

.field language:Lgnu/expr/Language;

.field public trueBranchComesFirst:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V
    .registers 5
    .param p1, "ifTrue"    # Lgnu/bytecode/Label;
    .param p2, "ifFalse"    # Lgnu/bytecode/Label;
    .param p3, "language"    # Lgnu/expr/Language;

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 22
    iput-object p1, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 23
    iput-object p2, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    .line 24
    iput-object p3, p0, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    .line 25
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 37
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 38
    .local v1, "sig":C
    sparse-switch v1, :sswitch_data_5e

    .line 50
    iget-boolean v2, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v2, :cond_3c

    .line 52
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V

    .line 53
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 71
    :goto_1e
    return-void

    .line 41
    :sswitch_1f
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 66
    :goto_24
    iget-boolean v2, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v2, :cond_58

    .line 67
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 70
    :goto_2d
    invoke-virtual {p0, v0}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1e

    .line 44
    :sswitch_31
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_24

    .line 47
    :sswitch_37
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto :goto_24

    .line 57
    :cond_3c
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V

    .line 58
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1e

    .line 62
    :sswitch_47
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    if-nez v2, :cond_51

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4d
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_24

    :cond_51
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4d

    .line 69
    :cond_58
    iget-object v2, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    goto :goto_2d

    .line 38
    :sswitch_data_5e
    .sparse-switch
        0x44 -> :sswitch_31
        0x46 -> :sswitch_37
        0x4a -> :sswitch_1f
        0x4c -> :sswitch_47
        0x5b -> :sswitch_47
    .end sparse-switch
.end method

.method public final emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 77
    iget-boolean v0, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    :goto_6
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 78
    return-void

    .line 77
    :cond_a
    iget-object v0, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_6
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
