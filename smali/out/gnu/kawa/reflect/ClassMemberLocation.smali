.class public abstract Lgnu/kawa/reflect/ClassMemberLocation;
.super Lgnu/mapping/Location;
.source "ClassMemberLocation.java"


# instance fields
.field instance:Ljava/lang/Object;

.field mname:Ljava/lang/String;

.field rfield:Ljava/lang/reflect/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/ClassType;
    .param p3, "mname"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 27
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "clas"    # Ljava/lang/Class;
    .param p3, "mname"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 32
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .registers 19
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "rfield"    # Ljava/lang/reflect/Field;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "language"    # Lgnu/expr/Language;
    .param p4, "env"    # Lgnu/mapping/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    .local v3, "fvalue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 180
    .local v2, "ftype":Lgnu/bytecode/Type;
    sget-object v12, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v12}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    .line 181
    .local v4, "isAlias":Z
    sget-object v12, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v12}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    .line 182
    .local v6, "isProcedure":Z
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 183
    .local v10, "rModifiers":I
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_45

    const/4 v5, 0x1

    .line 184
    .local v5, "isFinal":Z
    :goto_21
    if-eqz v5, :cond_47

    instance-of v12, v3, Lgnu/mapping/Named;

    if-eqz v12, :cond_47

    if-nez v4, :cond_47

    move-object v12, v3

    check-cast v12, Lgnu/mapping/Named;

    invoke-interface {v12}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, "fdname":Ljava/lang/Object;
    :goto_30
    instance-of v12, v1, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_51

    move-object v11, v1

    .line 189
    check-cast v11, Lgnu/mapping/Symbol;

    .line 196
    .end local p2    # "uri":Ljava/lang/String;
    .local v11, "sym":Lgnu/mapping/Symbol;
    :goto_37
    const/4 v9, 0x0

    .line 197
    .local v9, "property":Ljava/lang/Object;
    if-eqz v4, :cond_64

    if-eqz v5, :cond_64

    move-object v8, v3

    .line 199
    check-cast v8, Lgnu/mapping/Location;

    .line 212
    .end local v9    # "property":Ljava/lang/Object;
    .local v8, "loc":Lgnu/mapping/Location;
    :goto_3f
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v9, v8}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 213
    return-void

    .line 183
    .end local v1    # "fdname":Ljava/lang/Object;
    .end local v5    # "isFinal":Z
    .end local v8    # "loc":Lgnu/mapping/Location;
    .end local v11    # "sym":Lgnu/mapping/Symbol;
    .restart local p2    # "uri":Ljava/lang/String;
    :cond_45
    const/4 v5, 0x0

    goto :goto_21

    .line 184
    .restart local v5    # "isFinal":Z
    :cond_47
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 192
    .restart local v1    # "fdname":Ljava/lang/Object;
    :cond_51
    if-nez p2, :cond_55

    const-string p2, ""

    .end local p2    # "uri":Ljava/lang/String;
    :cond_55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .restart local v11    # "sym":Lgnu/mapping/Symbol;
    goto :goto_37

    .line 203
    .restart local v9    # "property":Ljava/lang/Object;
    :cond_64
    if-eqz v5, :cond_6c

    .line 204
    move-object/from16 v0, p3

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Language;->getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 205
    .end local v9    # "property":Ljava/lang/Object;
    :cond_6c
    and-int/lit8 v12, v10, 0x8

    if-eqz v12, :cond_79

    const/4 v7, 0x1

    .line 206
    .local v7, "isStatic":Z
    :goto_71
    if-eqz v7, :cond_7b

    .line 207
    new-instance v8, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v8, p1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v8    # "loc":Lgnu/mapping/Location;
    goto :goto_3f

    .line 205
    .end local v7    # "isStatic":Z
    .end local v8    # "loc":Lgnu/mapping/Location;
    :cond_79
    const/4 v7, 0x0

    goto :goto_71

    .line 209
    .restart local v7    # "isStatic":Z
    :cond_7b
    new-instance v8, Lgnu/kawa/reflect/FieldLocation;

    invoke-direct {v8, p0, p1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .restart local v8    # "loc":Lgnu/mapping/Location;
    goto :goto_3f
.end method

.method public static defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .registers 9
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "env"    # Lgnu/mapping/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "clas":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 221
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v2

    .local v4, "i":I
    :cond_9
    :goto_9
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_28

    .line 223
    aget-object v1, v2, v4

    .line 224
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "fname":Ljava/lang/String;
    const-string v5, "$Prvt$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "$instance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 228
    const/4 v5, 0x0

    invoke-static {p0, v1, v5, p1, p2}, Lgnu/kawa/reflect/ClassMemberLocation;->define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    goto :goto_9

    .line 230
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_28
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 132
    .local v1, "rfld":Ljava/lang/reflect/Field;
    if-nez v1, :cond_7

    .line 137
    .end local p1    # "defaultValue":Ljava/lang/Object;
    :goto_6
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/Object;
    :cond_7
    :try_start_7
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object p1

    goto :goto_6

    .line 139
    :catch_e
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-object v0
.end method

.method public getRClass()Ljava/lang/Class;
    .registers 4

    .prologue
    .line 116
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 117
    .local v1, "rfld":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_9

    .line 118
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 125
    :goto_8
    return-object v2

    .line 121
    :cond_9
    :try_start_9
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v2

    goto :goto_8

    .line 123
    :catch_10
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getRField()Ljava/lang/reflect/Field;
    .registers 5

    .prologue
    .line 93
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 94
    .local v2, "rfld":Ljava/lang/reflect/Field;
    if-nez v2, :cond_13

    .line 96
    const/4 v0, 0x0

    .line 100
    .local v0, "clas":Ljava/lang/Class;
    :try_start_5
    iget-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    iget-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 102
    iput-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    .end local v0    # "clas":Ljava/lang/Class;
    :cond_13
    move-object v3, v2

    .line 109
    :goto_14
    return-object v3

    .line 104
    .restart local v0    # "clas":Ljava/lang/Class;
    :catch_15
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public isBound()Z
    .registers 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 154
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isConstant()Z
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 148
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_12

    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 162
    :try_start_3
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_a} :catch_b

    .line 163
    return-void

    .line 165
    :catch_b
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final setInstance(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-void
.end method

.method setup()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 56
    iget-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-nez v3, :cond_13

    .line 61
    :try_start_5
    iget-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_14

    move-result-object v0

    .line 75
    .local v0, "clas":Ljava/lang/Class;
    :try_start_b
    iget-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_13} :catch_35

    .line 89
    .end local v0    # "clas":Ljava/lang/Class;
    :cond_13
    return-void

    .line 63
    :catch_14
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbound location - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .local v2, "uex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    throw v2

    .line 77
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "uex":Ljava/lang/RuntimeException;
    .restart local v0    # "clas":Ljava/lang/Class;
    :catch_35
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbound location  - no field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .restart local v2    # "uex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v2
.end method
