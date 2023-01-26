.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field needsStackMapEntry:Z

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;

.field private typeChangeListeners:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lgnu/bytecode/Label;->position:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 40
    return-void
.end method

.method private mergeLocalType(ILgnu/bytecode/Type;)V
    .registers 6
    .param p1, "varnum"    # I
    .param p2, "newType"    # Lgnu/bytecode/Type;

    .prologue
    .line 119
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v1, v2, p1

    .line 120
    .local v1, "oldLocal":Lgnu/bytecode/Type;
    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 121
    .local v0, "newLocal":Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v0, v2, p1

    .line 122
    if-eq v0, v1, :cond_11

    .line 123
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Label;->notifyTypeChangeListeners(ILgnu/bytecode/Type;)V

    .line 124
    :cond_11
    return-void
.end method

.method private notifyTypeChangeListeners(ILgnu/bytecode/Type;)V
    .registers 8
    .param p1, "varnum"    # I
    .param p2, "newType"    # Lgnu/bytecode/Type;

    .prologue
    .line 128
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 129
    .local v0, "arr":[Ljava/lang/Object;
    if-eqz v0, :cond_7

    array-length v4, v0

    if-gt v4, p1, :cond_8

    .line 143
    :cond_7
    :goto_7
    return-void

    .line 131
    :cond_8
    aget-object v3, v0, p1

    .line 132
    .local v3, "listeners":Ljava/lang/Object;
    if-eqz v3, :cond_7

    .line 134
    instance-of v4, v3, Lgnu/bytecode/Label;

    if-eqz v4, :cond_1b

    .line 135
    check-cast v3, Lgnu/bytecode/Label;

    .end local v3    # "listeners":Ljava/lang/Object;
    invoke-direct {v3, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 141
    :cond_15
    if-nez p2, :cond_7

    .line 142
    const/4 v4, 0x0

    aput-object v4, v0, p1

    goto :goto_7

    .line 138
    .restart local v3    # "listeners":Ljava/lang/Object;
    :cond_1b
    check-cast v3, Ljava/util/ArrayList;

    .end local v3    # "listeners":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Label;

    .line 139
    .local v2, "listener":Lgnu/bytecode/Label;
    invoke-direct {v2, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_21
.end method


# virtual methods
.method addTypeChangeListener(ILgnu/bytecode/Label;)V
    .registers 9
    .param p1, "varnum"    # I
    .param p2, "listener"    # Lgnu/bytecode/Label;

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 155
    .local v0, "arr":[Ljava/lang/Object;
    if-nez v0, :cond_12

    .line 156
    add-int/lit8 v3, p1, 0xa

    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 163
    :cond_b
    :goto_b
    aget-object v2, v0, p1

    .line 164
    .local v2, "set":Ljava/lang/Object;
    if-nez v2, :cond_24

    .line 165
    aput-object p2, v0, p1

    .line 179
    .end local v2    # "set":Ljava/lang/Object;
    :goto_11
    return-void

    .line 157
    :cond_12
    array-length v3, v0

    if-gt v3, p1, :cond_b

    .line 159
    add-int/lit8 v3, p1, 0xa

    new-array v0, v3, [Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    iget-object v4, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    goto :goto_b

    .line 169
    .restart local v2    # "set":Ljava/lang/Object;
    :cond_24
    instance-of v3, v2, Lgnu/bytecode/Label;

    if-eqz v3, :cond_38

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    check-cast v2, Lgnu/bytecode/Label;

    .end local v2    # "set":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    aput-object v1, v0, p1

    .line 177
    :goto_34
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    .restart local v2    # "set":Ljava/lang/Object;
    :cond_38
    move-object v1, v2

    .line 176
    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    goto :goto_34
.end method

.method addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 183
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_2b

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    if-eqz v2, :cond_2b

    .line 185
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v0, v2

    .line 186
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "varnum":I
    :goto_c
    if-ge v1, v0, :cond_2b

    .line 188
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_28

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-eqz v2, :cond_23

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v2, v2

    if-le v2, v1, :cond_23

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_28

    .line 192
    :cond_23
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v1, p0}, Lgnu/bytecode/Label;->addTypeChangeListener(ILgnu/bytecode/Label;)V

    .line 186
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 195
    .end local v0    # "len":I
    .end local v1    # "varnum":I
    :cond_2b
    return-void
.end method

.method public define(Lgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 218
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 231
    :cond_a
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    .line 232
    iput-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 234
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_18

    .line 236
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 237
    :cond_18
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 238
    return-void

    .line 220
    :cond_1d
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_a

    .line 222
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v0, v1

    .local v0, "i":I
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    .line 224
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v1, v1, v0

    if-eqz v1, :cond_24

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-eqz v1, :cond_3c

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v1, v1, v0

    if-nez v1, :cond_24

    .line 227
    :cond_3c
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v2, v1, v0

    goto :goto_24
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 202
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_c

    .line 203
    new-instance v0, Ljava/lang/Error;

    const-string v1, "label definition more than once"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_c
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    iput v0, p0, Lgnu/bytecode/Label;->position:I

    .line 205
    iget v0, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    .line 206
    iget v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    if-ltz v0, :cond_1c

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 208
    :cond_1c
    return-void
.end method

.method public final defined()Z
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 5
    .param p1, "t1"    # Lgnu/bytecode/Type;
    .param p2, "t2"    # Lgnu/bytecode/Type;

    .prologue
    .line 49
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    instance-of v1, p2, Lgnu/bytecode/PrimType;

    if-eq v0, v1, :cond_8

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_7
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .registers 6
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V

    .line 103
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_14

    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-eq v0, v1, :cond_14

    .line 104
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 105
    :cond_14
    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_1b
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p1, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 109
    return-void

    .line 105
    :cond_23
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    goto :goto_1b
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .registers 6
    .param p1, "other"    # Lgnu/bytecode/Label;

    .prologue
    .line 113
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    iget-object v2, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v3, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 115
    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .registers 13
    .param p1, "locals"    # [Lgnu/bytecode/Type;
    .param p2, "usedLocals"    # I
    .param p3, "stack"    # [Lgnu/bytecode/Type;
    .param p4, "usedStack"    # I

    .prologue
    const/4 v6, 0x0

    .line 57
    :goto_1
    if-lez p2, :cond_9

    .line 59
    add-int/lit8 v5, p2, -0x1

    aget-object v2, p1, v5

    .line 60
    .local v2, "last":Lgnu/bytecode/Type;
    if-eqz v2, :cond_1a

    .line 63
    .end local v2    # "last":Lgnu/bytecode/Type;
    :cond_9
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_31

    .line 65
    if-nez p4, :cond_1d

    .line 66
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 72
    :goto_13
    if-nez p2, :cond_27

    .line 73
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 98
    :cond_19
    :goto_19
    return-void

    .line 57
    .restart local v2    # "last":Lgnu/bytecode/Type;
    :cond_1a
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 69
    .end local v2    # "last":Lgnu/bytecode/Type;
    :cond_1d
    new-array v5, p4, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 70
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-static {p3, v6, v5, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    .line 76
    :cond_27
    new-array v5, p2, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 77
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    invoke-static {p1, v6, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19

    .line 82
    :cond_31
    move v0, p4

    .line 83
    .local v0, "SP":I
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v4, v5

    .line 84
    .local v4, "slen":I
    if-eq v0, v4, :cond_3f

    .line 85
    new-instance v5, Ljava/lang/InternalError;

    const-string v6, "inconsistent stack length"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_3f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_53

    .line 88
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v6, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v6, v6, v1

    aget-object v7, p3, v1

    invoke-virtual {p0, v6, v7}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v5, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 90
    :cond_53
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge p2, v5, :cond_64

    move v3, p2

    .line 91
    .local v3, "min":I
    :goto_59
    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v3, :cond_68

    .line 93
    aget-object v5, p1, v1

    invoke-direct {p0, v1, v5}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 90
    .end local v3    # "min":I
    :cond_64
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v3, v5

    goto :goto_59

    .line 95
    .restart local v3    # "min":I
    :cond_68
    move v1, p2

    :goto_69
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge v1, v5, :cond_19

    .line 96
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_69
.end method
