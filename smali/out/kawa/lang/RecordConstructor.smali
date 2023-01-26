.class public Lkawa/lang/RecordConstructor;
.super Lgnu/mapping/ProcedureN;
.source "RecordConstructor.java"


# instance fields
.field fields:[Lgnu/bytecode/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .prologue
    .line 28
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V
    .registers 12
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "fieldsList"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 60
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 61
    if-nez p2, :cond_b

    .line 62
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 85
    :cond_a
    return-void

    .line 65
    :cond_b
    const/4 v6, 0x0

    invoke-static {p2, v6}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v4

    .line 66
    .local v4, "nfields":I
    new-array v6, v4, [Lgnu/bytecode/Field;

    iput-object v6, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 67
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v3

    .line 68
    .local v3, "list":Lgnu/bytecode/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v4, :cond_a

    move-object v5, p2

    .line 70
    check-cast v5, Lgnu/lists/Pair;

    .line 71
    .local v5, "pair":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "fname":Ljava/lang/String;
    move-object v0, v3

    .line 74
    .local v0, "fld":Lgnu/bytecode/Field;
    :goto_27
    if-nez v0, :cond_50

    .line 75
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_50
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v1, :cond_61

    .line 78
    iget-object v6, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aput-object v0, v6, v2

    .line 82
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 72
    :cond_61
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v0

    goto :goto_27
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "fields"    # [Lgnu/bytecode/Field;

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 13
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 14
    iput-object p2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .param p1, "clas"    # Ljava/lang/Class;

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 24
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "fieldsList"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lgnu/bytecode/Field;)V
    .registers 4
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "fields"    # [Lgnu/bytecode/Field;

    .prologue
    .line 19
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V

    .line 20
    return-void
.end method

.method private init(Lgnu/bytecode/ClassType;)V
    .registers 9
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .prologue
    const/4 v6, 0x1

    .line 34
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 35
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    .line 36
    .local v4, "list":Lgnu/bytecode/Field;
    const/4 v0, 0x0

    .line 37
    .local v0, "count":I
    move-object v1, v4

    .local v1, "fld":Lgnu/bytecode/Field;
    :goto_9
    if-eqz v1, :cond_1a

    .line 39
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    if-ne v5, v6, :cond_15

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 37
    :cond_15
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_9

    .line 43
    :cond_1a
    new-array v5, v0, [Lgnu/bytecode/Field;

    iput-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "i":I
    move-object v1, v4

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_21
    if-eqz v1, :cond_37

    .line 47
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    if-ne v5, v6, :cond_38

    .line 49
    iget-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v1, v5, v3

    .line 45
    :goto_31
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_21

    .line 51
    :cond_37
    return-void

    :cond_38
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_31
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    :try_start_0
    iget-object v4, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_22

    move-result-object v3

    .line 113
    .local v3, "obj":Ljava/lang/Object;
    array-length v4, p1

    iget-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v5, v5

    if-eq v4, v5, :cond_2d

    .line 114
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 105
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_17
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v4, Lkawa/lang/GenericError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_22
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Lkawa/lang/GenericError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_2d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    array-length v4, p1

    if-ge v2, v4, :cond_5f

    .line 117
    iget-object v4, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aget-object v1, v4, v2

    .line 120
    .local v1, "fld":Lgnu/bytecode/Field;
    :try_start_35
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_41

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 122
    :catch_41
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal access for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 127
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "fld":Lgnu/bytecode/Field;
    :cond_5f
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .registers 3

    .prologue
    .line 89
    iget-object v1, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v0, v1

    .line 90
    .local v0, "nargs":I
    shl-int/lit8 v1, v0, 0xc

    or-int/2addr v1, v0

    return v1
.end method
