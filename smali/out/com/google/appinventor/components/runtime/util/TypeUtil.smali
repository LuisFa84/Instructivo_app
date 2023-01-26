.class public final Lcom/google/appinventor/components/runtime/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_4

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_3
    return-object v0

    .line 21
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 24
    :cond_f
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v1, 0xd52

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_15

    .line 30
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v1, 0xd52

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "null"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0

    .line 32
    :cond_15
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->cast(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToEnum(Ljava/lang/Object;Lgnu/mapping/Symbol;)Lcom/google/appinventor/components/common/OptionList;
    .registers 12
    .param p1, "className"    # Lgnu/mapping/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgnu/mapping/Symbol;",
            ")",
            "Lcom/google/appinventor/components/common/OptionList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->stripEnumSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "classNameStr":Ljava/lang/String;
    :try_start_a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/google/appinventor/components/common/OptionList;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_32

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not identify an OptionList type."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2f
    move-exception v2

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    move-object v4, v5

    .line 66
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_31
    return-object v4

    .line 54
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    :goto_37
    if-ge v4, v7, :cond_68

    aget-object v3, v6, v4

    .line 55
    .local v3, "m":Ljava/lang/reflect/Method;
    const-string v8, "fromUnderlyingValue"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 56
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 57
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/common/OptionList;
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_64} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_64} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_64} :catch_6d

    goto :goto_31

    .line 54
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_68
    move-object v4, v5

    .line 60
    goto :goto_31

    .line 63
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_6a
    move-exception v2

    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v4, v5

    .line 64
    goto :goto_31

    .line 65
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6d
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v4, v5

    .line 66
    goto :goto_31
.end method

.method private static stripEnumSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "Enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 74
    .end local p0    # "className":Ljava/lang/String;
    :cond_13
    return-object p0
.end method
