.class public Lgnu/bytecode/ConstantValueAttr;
.super Lgnu/bytecode/Attribute;
.source "ConstantValueAttr.java"


# instance fields
.field value:Ljava/lang/Object;

.field value_index:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 53
    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 47
    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 6
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 60
    iget v2, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v2, :cond_20

    .line 62
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 63
    .local v0, "cpool":Lgnu/bytecode/ConstantPool;
    const/4 v1, 0x0

    .line 64
    .local v1, "entry":Lgnu/bytecode/CpoolEntry;
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 65
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v1

    .line 74
    :cond_1a
    :goto_1a
    invoke-virtual {v1}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result v2

    iput v2, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    .line 76
    .end local v0    # "cpool":Lgnu/bytecode/ConstantPool;
    .end local v1    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_20
    return-void

    .line 66
    .restart local v0    # "cpool":Lgnu/bytecode/ConstantPool;
    .restart local v1    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_21
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_34

    .line 67
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v1

    goto :goto_1a

    .line 68
    :cond_34
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_47

    .line 69
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v1

    goto :goto_1a

    .line 70
    :cond_47
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_5a

    .line 71
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v1

    goto :goto_1a

    .line 72
    :cond_5a
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_1a

    .line 73
    iget-object v2, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v1

    goto :goto_1a
.end method

.method public final getLength()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x2

    return v0
.end method

.method public getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;
    .registers 10
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;

    .prologue
    .line 19
    iget-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 20
    iget-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 42
    :goto_6
    return-object v4

    .line 21
    :cond_7
    iget v4, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {p1, v4}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    .line 22
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    invoke-virtual {v2}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v4

    packed-switch v4, :pswitch_data_5c

    .line 42
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :goto_14
    :pswitch_14
    iget-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_6

    .line 25
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :pswitch_17
    check-cast v2, Lgnu/bytecode/CpoolString;

    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    invoke-virtual {v2}, Lgnu/bytecode/CpoolString;->getString()Lgnu/bytecode/CpoolUtf8;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/CpoolUtf8;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_14

    .line 28
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :pswitch_24
    new-instance v4, Ljava/lang/Integer;

    check-cast v2, Lgnu/bytecode/CpoolValue1;

    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    iget v5, v2, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_14

    .line 31
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :pswitch_30
    new-instance v4, Ljava/lang/Long;

    check-cast v2, Lgnu/bytecode/CpoolValue2;

    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    iget-wide v6, v2, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iput-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_14

    .line 34
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :pswitch_3c
    check-cast v2, Lgnu/bytecode/CpoolValue1;

    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    iget v4, v2, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 35
    .local v3, "f":F
    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    iput-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_14

    .line 38
    .end local v3    # "f":F
    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :pswitch_4c
    check-cast v2, Lgnu/bytecode/CpoolValue2;

    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    iget-wide v4, v2, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 39
    .local v0, "d":D
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    iput-object v4, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_14

    .line 22
    :pswitch_data_5c
    .packed-switch 0x3
        :pswitch_24
        :pswitch_3c
        :pswitch_30
        :pswitch_4c
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .prologue
    .line 87
    const-string v2, "Attribute \""

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/ConstantValueAttr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 89
    const-string v2, "\", length:"

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lgnu/bytecode/ConstantValueAttr;->getLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 91
    const-string v2, ", value: "

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v2, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v2, :cond_3a

    .line 94
    iget-object v2, p1, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {p0, v2}, Lgnu/bytecode/ConstantValueAttr;->getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 96
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printQuotedString(Ljava/lang/String;)V

    .line 106
    :goto_32
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 107
    return-void

    .line 98
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_36
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    goto :goto_32

    .line 102
    .end local v1    # "value":Ljava/lang/Object;
    :cond_3a
    iget v2, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 103
    iget-object v2, p1, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v3, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .line 104
    .local v0, "entry":Lgnu/bytecode/CpoolEntry;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    goto :goto_32
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    return-void
.end method
