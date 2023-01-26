.class public Lcom/google/appinventor/components/runtime/OptionHelper;
.super Ljava/lang/Object;
.source "OptionHelper.java"


# static fields
.field private static final componentMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/OptionHelper;->componentMethods:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMethod(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .param p0, "c"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "componentKey":Ljava/lang/String;
    sget-object v3, Lcom/google/appinventor/components/runtime/OptionHelper;->componentMethods:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 128
    .local v2, "methodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-nez v2, :cond_1b

    .line 129
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/OptionHelper;->populateMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 130
    sget-object v3, Lcom/google/appinventor/components/runtime/OptionHelper;->componentMethods:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1b
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    return-object v3
.end method

.method public static optionListFromValue(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "c"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "func"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/OptionHelper;->getMethod(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 40
    .local v2, "calledFunc":Ljava/lang/reflect/Method;
    if-nez v2, :cond_7

    .line 64
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    :goto_6
    return-object p2

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_7
    const-class v6, Lcom/google/appinventor/components/annotations/Options;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/annotations/Options;

    .line 45
    .local v1, "annotation":Lcom/google/appinventor/components/annotations/Options;
    if-eqz v1, :cond_6

    .line 48
    invoke-interface {v1}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v5

    .line 50
    .local v5, "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_15
    const-string v6, "fromUnderlyingValue"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 54
    .local v4, "fromValue":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_2e} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_2e} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_2e} :catch_37

    move-result-object v0

    .line 55
    .local v0, "abstractVal":Ljava/lang/Object;
    if-eqz v0, :cond_6

    move-object p2, v0

    .line 56
    goto :goto_6

    .line 59
    .end local v0    # "abstractVal":Ljava/lang/Object;
    .end local v4    # "fromValue":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_6

    .line 61
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_35
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/IllegalAccessException;
    goto :goto_6

    .line 63
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_6
.end method

.method public static varargs optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 19
    .param p0, "c"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    move-object/from16 v0, p2

    array-length v10, v0

    if-nez v10, :cond_6

    .line 113
    :cond_5
    return-object p2

    .line 81
    :cond_6
    invoke-static/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/OptionHelper;->getMethod(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 82
    .local v4, "calledFunc":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_5

    .line 85
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 86
    .local v9, "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v7, 0x0

    .line 87
    .local v7, "i":I
    array-length v12, v9

    const/4 v10, 0x0

    move v11, v10

    :goto_14
    if-ge v11, v12, :cond_5

    aget-object v3, v9, v11

    .line 88
    .local v3, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v13, v3

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v13, :cond_4f

    aget-object v2, v3, v10

    .line 89
    .local v2, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/google/appinventor/components/annotations/Options;

    if-ne v14, v15, :cond_55

    move-object v5, v2

    .line 90
    check-cast v5, Lcom/google/appinventor/components/annotations/Options;

    .line 91
    .local v5, "castAnnotation":Lcom/google/appinventor/components/annotations/Options;
    invoke-interface {v5}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v8

    .line 93
    .local v8, "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2d
    const-string v10, "fromUnderlyingValue"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aget-object v15, p2, v7

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v8, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 97
    .local v6, "fromValue":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, p2, v7

    aput-object v14, v10, v13

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "abstractVal":Ljava/lang/Object;
    if-eqz v1, :cond_4f

    .line 99
    aput-object v1, p2, v7
    :try_end_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_4f} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_4f} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_4f} :catch_58

    .line 111
    .end local v1    # "abstractVal":Ljava/lang/Object;
    .end local v2    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "castAnnotation":Lcom/google/appinventor/components/annotations/Options;
    .end local v6    # "fromValue":Ljava/lang/reflect/Method;
    .end local v8    # "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    :goto_4f
    add-int/lit8 v7, v7, 0x1

    .line 87
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_14

    .line 88
    .restart local v2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_55
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 105
    .restart local v5    # "castAnnotation":Lcom/google/appinventor/components/annotations/Options;
    .restart local v8    # "optionListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_58
    move-exception v10

    goto :goto_4f

    .line 103
    :catch_5a
    move-exception v10

    goto :goto_4f

    .line 101
    :catch_5c
    move-exception v10

    goto :goto_4f
.end method

.method private static populateMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v4, "methodMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 145
    .local v5, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v8, :cond_50

    aget-object v2, v5, v7

    .line 146
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_1a

    .line 145
    :cond_17
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 149
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "methodKey":Ljava/lang/String;
    const-class v9, Lcom/google/appinventor/components/annotations/SimpleEvent;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/annotations/SimpleEvent;

    .line 153
    .local v0, "event":Lcom/google/appinventor/components/annotations/SimpleEvent;
    if-eqz v0, :cond_2c

    .line 154
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 159
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_17

    .line 160
    const-class v9, Lcom/google/appinventor/components/annotations/SimpleFunction;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/annotations/SimpleFunction;

    .line 161
    .local v1, "func":Lcom/google/appinventor/components/annotations/SimpleFunction;
    if-eqz v1, :cond_42

    .line 162
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 165
    :cond_42
    const-class v9, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/annotations/SimpleProperty;

    .line 166
    .local v6, "prop":Lcom/google/appinventor/components/annotations/SimpleProperty;
    if-eqz v6, :cond_17

    .line 167
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 171
    .end local v0    # "event":Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end local v1    # "func":Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "methodKey":Ljava/lang/String;
    .end local v6    # "prop":Lcom/google/appinventor/components/annotations/SimpleProperty;
    :cond_50
    return-object v4
.end method
