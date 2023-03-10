.class public Landroidx/lifecycle/Lifecycling;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final GENERATED_CALLBACK:I = 0x2

.field private static final REFLECTIVE_CALLBACK:I = 0x1

.field private static sCallbackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sClassToAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method private static createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/GeneratedAdapter;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/GeneratedAdapter;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_1b

    return-object v1

    .line 80
    :catch_d
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_14
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1b
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroidx/lifecycle/GeneratedAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 93
    .local v1, "aPackage":Ljava/lang/Package;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "name":Ljava/lang/String;
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "fullPackage":Ljava/lang/String;
    :goto_e
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3a

    .end local v6    # "name":Ljava/lang/String;
    :goto_14
    invoke-static {v6}, Landroidx/lifecycle/Lifecycling;->getAdapterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "adapterName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 99
    .end local v2    # "adapterName":Ljava/lang/String;
    :goto_1e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/lifecycle/GeneratedAdapter;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    .line 102
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 103
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_36

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 108
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/lifecycle/GeneratedAdapter;>;"
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    .end local v5    # "fullPackage":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object v3

    .line 94
    .restart local v1    # "aPackage":Ljava/lang/Package;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_37
    const-string v5, ""

    goto :goto_e

    .line 96
    .restart local v5    # "fullPackage":Ljava/lang/String;
    :cond_3a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    .line 100
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "adapterName":Ljava/lang/String;
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5b} :catch_5d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_5b} :catch_60

    move-result-object v2

    goto :goto_1e

    .line 107
    .end local v1    # "aPackage":Ljava/lang/Package;
    .end local v2    # "adapterName":Ljava/lang/String;
    .end local v5    # "fullPackage":Ljava/lang/String;
    :catch_5d
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    goto :goto_36

    .line 109
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_60
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getAdapterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_LifecycleAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
    .registers 9
    .param p0, "object"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    instance-of v6, p0, Landroidx/lifecycle/FullLifecycleObserver;

    if-eqz v6, :cond_d

    .line 49
    new-instance v6, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p0, Landroidx/lifecycle/FullLifecycleObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v6, p0}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/FullLifecycleObserver;)V

    move-object p0, v6

    .line 72
    .local v4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "type":I
    :goto_c
    return-object p0

    .line 52
    .end local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "type":I
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_d
    instance-of v6, p0, Landroidx/lifecycle/GenericLifecycleObserver;

    if-eqz v6, :cond_14

    .line 53
    check-cast p0, Landroidx/lifecycle/GenericLifecycleObserver;

    goto :goto_c

    .line 56
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 57
    .restart local v4    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    .line 58
    .restart local v5    # "type":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_61

    .line 59
    sget-object v6, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 60
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    .local v1, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 62
    invoke-static {v6, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v2

    .line 64
    .local v2, "generatedAdapter":Landroidx/lifecycle/GeneratedAdapter;
    new-instance p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Landroidx/lifecycle/GeneratedAdapter;)V

    goto :goto_c

    .line 66
    .end local v2    # "generatedAdapter":Landroidx/lifecycle/GeneratedAdapter;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Landroidx/lifecycle/GeneratedAdapter;

    .line 67
    .local v0, "adapters":[Landroidx/lifecycle/GeneratedAdapter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5b

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-static {v6, p0}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/GeneratedAdapter;

    move-result-object v6

    aput-object v6, v0, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 70
    :cond_5b
    new-instance p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    goto :goto_c

    .line 72
    .end local v0    # "adapters":[Landroidx/lifecycle/GeneratedAdapter;
    .end local v1    # "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    .end local v3    # "i":I
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_61
    new-instance v6, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v6, p0}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    move-object p0, v6

    goto :goto_c
.end method

.method private static getObserverConstructorType(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 117
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    :goto_14
    return v0

    .line 119
    :cond_15
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->resolveObserverCallbackType(Ljava/lang/Class;)I

    move-result v0

    .line 120
    .local v0, "type":I
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private static isLifecycleParent(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    const-class v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static resolveObserverCallbackType(Ljava/lang/Class;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    move v5, v6

    .line 168
    :goto_9
    return v5

    .line 130
    :cond_a
    invoke-static {p0}, Landroidx/lifecycle/Lifecycling;->generatedConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 131
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;"
    if-eqz v1, :cond_1b

    .line 132
    sget-object v5, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 133
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 132
    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    .line 134
    goto :goto_9

    .line 137
    :cond_1b
    sget-object v5, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    invoke-virtual {v5, p0}, Landroidx/lifecycle/ClassesInfoCache;->hasLifecycleMethods(Ljava/lang/Class;)Z

    move-result v2

    .line 138
    .local v2, "hasLifecycleMethods":Z
    if-eqz v2, :cond_25

    move v5, v6

    .line 139
    goto :goto_9

    .line 142
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 143
    .local v4, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 145
    invoke-static {v4}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v6, :cond_38

    move v5, v6

    .line 146
    goto :goto_9

    .line 148
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    sget-object v5, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .restart local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    :cond_45
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, v9

    const/4 v5, 0x0

    move v8, v5

    :goto_4c
    if-ge v8, v10, :cond_75

    aget-object v3, v9, v8

    .line 152
    .local v3, "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Landroidx/lifecycle/Lifecycling;->isLifecycleParent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 151
    :goto_56
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_4c

    .line 155
    :cond_5a
    invoke-static {v3}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v6, :cond_62

    move v5, v6

    .line 156
    goto :goto_9

    .line 158
    :cond_62
    if-nez v0, :cond_69

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v0    # "adapterConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<+Landroidx/lifecycle/GeneratedAdapter;>;>;"
    :cond_69
    sget-object v5, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    .line 163
    .end local v3    # "intrface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_75
    if-eqz v0, :cond_7e

    .line 164
    sget-object v5, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    .line 165
    goto :goto_9

    :cond_7e
    move v5, v6

    .line 168
    goto :goto_9
.end method
