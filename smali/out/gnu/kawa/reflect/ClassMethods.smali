.class public Lgnu/kawa/reflect/ClassMethods;
.super Lgnu/mapping/Procedure2;
.source "ClassMethods.java"


# static fields
.field public static final classMethods:Lgnu/kawa/reflect/ClassMethods;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/reflect/ClassMethods;

    invoke-direct {v0}, Lgnu/kawa/reflect/ClassMethods;-><init>()V

    sput-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    .line 12
    sget-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    const-string v1, "class-methods"

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;
    .registers 11
    .param p0, "dtype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "mode"    # C
    .param p3, "language"    # Lgnu/expr/Language;

    .prologue
    .line 229
    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5, p3}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v3

    .line 230
    .local v3, "methods":[Lgnu/expr/PrimProcedure;
    const/4 v1, 0x0

    .line 231
    .local v1, "gproc":Lgnu/expr/GenericProc;
    const/4 v4, 0x0

    .line 232
    .local v4, "pproc":Lgnu/expr/PrimProcedure;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v5, v3

    if-ge v2, v5, :cond_22

    .line 234
    aget-object v0, v3, v2

    .line 235
    .local v0, "cur":Lgnu/expr/PrimProcedure;
    if-eqz v4, :cond_19

    if-nez v1, :cond_19

    .line 237
    new-instance v1, Lgnu/expr/GenericProc;

    .end local v1    # "gproc":Lgnu/expr/GenericProc;
    invoke-direct {v1}, Lgnu/expr/GenericProc;-><init>()V

    .line 238
    .restart local v1    # "gproc":Lgnu/expr/GenericProc;
    invoke-virtual {v1, v4}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 240
    :cond_19
    move-object v4, v0

    .line 241
    if-eqz v1, :cond_1f

    .line 242
    invoke-virtual {v1, v4}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 232
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 244
    .end local v0    # "cur":Lgnu/expr/PrimProcedure;
    :cond_22
    if-eqz v1, :cond_43

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 249
    .end local v1    # "gproc":Lgnu/expr/GenericProc;
    :goto_42
    return-object v1

    .restart local v1    # "gproc":Lgnu/expr/GenericProc;
    :cond_43
    move-object v1, v4

    goto :goto_42
.end method

.method public static apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .registers 9
    .param p0, "thisProc"    # Lgnu/mapping/Procedure;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 30
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_c

    .line 31
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 32
    :cond_c
    instance-of v3, p1, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_60

    move-object v0, p1

    .line 33
    check-cast v0, Lgnu/bytecode/ClassType;

    .line 39
    .local v0, "dtype":Lgnu/bytecode/ClassType;
    :goto_13
    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1f

    instance-of v3, p2, Lgnu/lists/FString;

    if-nez v3, :cond_1f

    instance-of v3, p2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_7b

    .line 41
    :cond_1f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "mname":Ljava/lang/String;
    const-string v3, "<init>"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 45
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_2f
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-static {v0, v1, v4, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v2

    .line 47
    .local v2, "result":Lgnu/mapping/MethodProc;
    if-nez v2, :cond_82

    .line 48
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no applicable method named `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    .end local v0    # "dtype":Lgnu/bytecode/ClassType;
    .end local v1    # "mname":Ljava/lang/String;
    .end local v2    # "result":Lgnu/mapping/MethodProc;
    :cond_60
    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_6c

    instance-of v3, p1, Lgnu/lists/FString;

    if-nez v3, :cond_6c

    instance-of v3, p1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_75

    .line 36
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .restart local v0    # "dtype":Lgnu/bytecode/ClassType;
    goto :goto_13

    .line 38
    .end local v0    # "dtype":Lgnu/bytecode/ClassType;
    :cond_75
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, p0, v4, v5}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v3

    .line 43
    .restart local v0    # "dtype":Lgnu/bytecode/ClassType;
    :cond_7b
    new-instance v3, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v5}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v3

    .line 50
    .restart local v1    # "mname":Ljava/lang/String;
    .restart local v2    # "result":Lgnu/mapping/MethodProc;
    :cond_82
    return-object v2
.end method

.method static checkName(Lgnu/expr/Expression;)Ljava/lang/String;
    .registers 4
    .param p0, "exp"    # Lgnu/expr/Expression;

    .prologue
    const/4 v1, 0x0

    .line 281
    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_17

    .line 283
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0    # "exp":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "name":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/lists/FString;

    if-nez v2, :cond_13

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 285
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .end local v0    # "name":Ljava/lang/Object;
    :cond_17
    :goto_17
    return-object v1

    .line 286
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_18
    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_17

    .line 287
    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0    # "name":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method

.method static checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "reversible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 258
    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1d

    .line 260
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0    # "exp":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "name":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/FString;

    if-nez v2, :cond_13

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 263
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .end local v1    # "name":Ljava/lang/Object;
    .local v0, "nam":Ljava/lang/String;
    :goto_17
    invoke-static {v0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 272
    .end local v0    # "nam":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-object v0

    .line 264
    .restart local v1    # "name":Ljava/lang/Object;
    :cond_1e
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1d

    .line 265
    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1    # "name":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nam":Ljava/lang/String;
    goto :goto_17

    .line 270
    :cond_29
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;
    .registers 25
    .param p0, "dtype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "mode"    # C
    .param p3, "caller"    # Lgnu/bytecode/ClassType;
    .param p4, "language"    # Lgnu/expr/Language;

    .prologue
    .line 100
    sget-object v4, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    move-object/from16 v0, p0

    if-ne v0, v4, :cond_8

    .line 101
    sget-object p0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 102
    :cond_8
    new-instance v3, Lgnu/kawa/reflect/MethodFilter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x50

    move/from16 v0, p2

    if-ne v0, v4, :cond_96

    const/4 v8, 0x0

    :goto_13
    move-object/from16 v4, p1

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lgnu/kawa/reflect/MethodFilter;-><init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V

    .line 104
    .local v3, "filter":Lgnu/kawa/reflect/MethodFilter;
    const/16 v4, 0x50

    move/from16 v0, p2

    if-eq v0, v4, :cond_2a

    const-string v4, "<init>"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    :cond_2a
    const/16 v17, 0x1

    .line 105
    .local v17, "named_class_only":Z
    :goto_2c
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v15, "methods":Ljava/util/Vector;
    if-eqz v17, :cond_9d

    const/4 v4, 0x0

    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lgnu/bytecode/ObjectType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 107
    if-nez v17, :cond_51

    move-object/from16 v0, p0

    instance-of v4, v0, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_4b

    move-object/from16 v4, p0

    check-cast v4, Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 110
    :cond_4b
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v15}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 111
    :cond_51
    if-eqz v17, :cond_9f

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v16

    .line 114
    .local v16, "mlength":I
    :goto_57
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/PrimProcedure;

    move-object/from16 v19, v0

    .line 115
    .local v19, "result":[Lgnu/expr/PrimProcedure;
    const/4 v9, 0x0

    .line 116
    .local v9, "count":I
    move/from16 v11, v16

    .local v11, "i":I
    move v10, v9

    .end local v9    # "count":I
    .local v10, "count":I
    :goto_61
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_a4

    .line 118
    invoke-virtual {v15, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/bytecode/Method;

    .line 119
    .local v13, "method":Lgnu/bytecode/Method;
    if-nez v17, :cond_85

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_85

    .line 121
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 122
    .local v12, "itype":Lgnu/bytecode/Type;
    instance-of v4, v12, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_85

    .line 126
    new-instance v14, Lgnu/bytecode/Method;

    check-cast v12, Lgnu/bytecode/ClassType;

    .end local v12    # "itype":Lgnu/bytecode/Type;
    invoke-direct {v14, v13, v12}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V

    .end local v13    # "method":Lgnu/bytecode/Method;
    .local v14, "method":Lgnu/bytecode/Method;
    move-object v13, v14

    .line 129
    .end local v14    # "method":Lgnu/bytecode/Method;
    .restart local v13    # "method":Lgnu/bytecode/Method;
    :cond_85
    new-instance v18, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v13, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 130
    .local v18, "pproc":Lgnu/expr/PrimProcedure;
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "count":I
    .restart local v9    # "count":I
    aput-object v18, v19, v10

    move v10, v9

    .line 131
    .end local v9    # "count":I
    .restart local v10    # "count":I
    goto :goto_61

    .end local v3    # "filter":Lgnu/kawa/reflect/MethodFilter;
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v13    # "method":Lgnu/bytecode/Method;
    .end local v15    # "methods":Ljava/util/Vector;
    .end local v16    # "mlength":I
    .end local v17    # "named_class_only":Z
    .end local v18    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v19    # "result":[Lgnu/expr/PrimProcedure;
    :cond_96
    move-object/from16 v8, p0

    .line 102
    goto/16 :goto_13

    .line 104
    .restart local v3    # "filter":Lgnu/kawa/reflect/MethodFilter;
    :cond_9a
    const/16 v17, 0x0

    goto :goto_2c

    .line 106
    .restart local v15    # "methods":Ljava/util/Vector;
    .restart local v17    # "named_class_only":Z
    :cond_9d
    const/4 v4, 0x2

    goto :goto_34

    .line 111
    :cond_9f
    invoke-static {v15}, Lgnu/kawa/reflect/ClassMethods;->removeRedundantMethods(Ljava/util/Vector;)I

    move-result v16

    goto :goto_57

    .line 132
    .restart local v10    # "count":I
    .restart local v11    # "i":I
    .restart local v16    # "mlength":I
    .restart local v19    # "result":[Lgnu/expr/PrimProcedure;
    :cond_a4
    return-object v19
.end method

.method private static removeRedundantMethods(Ljava/util/Vector;)I
    .registers 13
    .param p0, "methods"    # Ljava/util/Vector;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 58
    .local v6, "mlength":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    if-ge v1, v6, :cond_52

    .line 60
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Method;

    .line 61
    .local v4, "method1":Lgnu/bytecode/Method;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 62
    .local v0, "class1":Lgnu/bytecode/ClassType;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v8

    .line 63
    .local v8, "types1":[Lgnu/bytecode/Type;
    array-length v7, v8

    .line 64
    .local v7, "tlen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    if-ge v2, v1, :cond_4f

    .line 66
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/Method;

    .line 67
    .local v5, "method2":Lgnu/bytecode/Method;
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v9

    .line 68
    .local v9, "types2":[Lgnu/bytecode/Type;
    array-length v10, v9

    if-eq v7, v10, :cond_29

    .line 64
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 71
    :cond_29
    move v3, v7

    .local v3, "k":I
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_34

    .line 73
    aget-object v10, v8, v3

    aget-object v11, v9, v3

    if-eq v10, v11, :cond_2a

    .line 76
    :cond_34
    if-gez v3, :cond_26

    .line 78
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 79
    invoke-virtual {p0, v4, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 80
    :cond_43
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 81
    add-int/lit8 v6, v6, -0x1

    .line 83
    goto :goto_5

    .line 85
    .end local v3    # "k":I
    .end local v5    # "method2":Lgnu/bytecode/Method;
    .end local v9    # "types2":[Lgnu/bytecode/Type;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_5

    .line 87
    .end local v0    # "class1":Lgnu/bytecode/ClassType;
    .end local v2    # "j":I
    .end local v4    # "method1":Lgnu/bytecode/Method;
    .end local v7    # "tlen":I
    .end local v8    # "types1":[Lgnu/bytecode/Type;
    :cond_52
    return v6
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;I)I
    .registers 14
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "numArgs"    # I

    .prologue
    .line 184
    array-length v1, p0

    .line 185
    .local v1, "limit":I
    const/4 v7, 0x0

    .line 186
    .local v7, "numTooManyArgs":I
    const/4 v6, 0x0

    .line 187
    .local v6, "numTooFewArgs":I
    const/4 v5, 0x0

    .line 188
    .local v5, "numOk":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_39

    .line 190
    aget-object v10, p0, v0

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->numArgs()I

    move-result v4

    .line 191
    .local v4, "num":I
    invoke-static {v4}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v3

    .line 192
    .local v3, "min":I
    invoke-static {v4}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v2

    .line 193
    .local v2, "max":I
    const/4 v8, 0x0

    .line 194
    .local v8, "ok":Z
    if-ge p1, v3, :cond_21

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 200
    :goto_1a
    if-eqz v8, :cond_2a

    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 196
    :cond_21
    if-le p1, v2, :cond_28

    if-ltz v2, :cond_28

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 199
    :cond_28
    const/4 v8, 0x1

    goto :goto_1a

    .line 208
    :cond_2a
    add-int/lit8 v10, v1, -0x1

    aget-object v9, p0, v10

    .line 209
    .local v9, "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v10, v1, -0x1

    aget-object v11, p0, v0

    aput-object v11, p0, v10

    .line 210
    aput-object v9, p0, v0

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 214
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "num":I
    .end local v8    # "ok":Z
    .end local v9    # "tmp":Lgnu/expr/PrimProcedure;
    :cond_39
    if-lez v5, :cond_3c

    .end local v5    # "numOk":I
    :goto_3b
    return v5

    .restart local v5    # "numOk":I
    :cond_3c
    if-lez v6, :cond_41

    const/high16 v5, -0xf0000

    goto :goto_3b

    :cond_41
    if-lez v7, :cond_46

    const/high16 v5, -0xe0000

    goto :goto_3b

    :cond_46
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J
    .registers 12
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "atypes"    # [Lgnu/bytecode/Type;

    .prologue
    .line 146
    array-length v2, p0

    .line 147
    .local v2, "limit":I
    const/4 v3, 0x0

    .line 148
    .local v3, "numDefApplicable":I
    const/4 v4, 0x0

    .line 149
    .local v4, "numPosApplicable":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_31

    .line 151
    aget-object v6, p0, v1

    invoke-virtual {v6, p1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 152
    .local v0, "code":I
    if-gez v0, :cond_1d

    .line 155
    add-int/lit8 v6, v2, -0x1

    aget-object v5, p0, v6

    .line 156
    .local v5, "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v6, v2, -0x1

    aget-object v7, p0, v1

    aput-object v7, p0, v6

    .line 157
    aput-object v5, p0, v1

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 159
    goto :goto_4

    .line 160
    .end local v5    # "tmp":Lgnu/expr/PrimProcedure;
    :cond_1d
    if-lez v0, :cond_2c

    .line 163
    aget-object v5, p0, v3

    .line 164
    .restart local v5    # "tmp":Lgnu/expr/PrimProcedure;
    aget-object v6, p0, v1

    aput-object v6, p0, v3

    .line 165
    aput-object v5, p0, v1

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_4

    .line 171
    .end local v5    # "tmp":Lgnu/expr/PrimProcedure;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 175
    .end local v0    # "code":I
    :cond_31
    int-to-long v6, v3

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    return-wide v6
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v0

    return-object v0
.end method
