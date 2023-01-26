.class public Lgnu/bytecode/CpoolValue1;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolValue1.java"


# instance fields
.field tag:I

.field value:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "tag"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    iput p1, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;III)V
    .registers 5
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "tag"    # I
    .param p3, "hash"    # I
    .param p4, "value"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    iput p2, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    .line 20
    iput p4, p0, Lgnu/bytecode/CpoolValue1;->value:I

    .line 21
    return-void
.end method

.method static hashCode(I)I
    .registers 1
    .param p0, "val"    # I

    .prologue
    .line 30
    return p0
.end method


# virtual methods
.method public getTag()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return v0
.end method

.method public final getValue()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    if-nez v0, :cond_8

    .line 35
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    iput v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    .line 36
    :cond_8
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .registers 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "verbosity"    # I

    .prologue
    const/4 v2, 0x1

    .line 47
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 49
    if-lez p2, :cond_d

    .line 50
    const-string v0, "Integer "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 51
    :cond_d
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 52
    if-le p2, v2, :cond_26

    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz v0, :cond_26

    .line 54
    const-string v0, "=0x"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 69
    :cond_26
    :goto_26
    return-void

    .line 60
    :cond_27
    if-lez p2, :cond_2e

    .line 61
    const-string v0, "Float "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    :cond_2e
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(F)V

    .line 63
    if-le p2, v2, :cond_26

    .line 65
    const-string v0, "=0x"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_26
.end method

.method write(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    return-void
.end method
