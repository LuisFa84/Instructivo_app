.class public Lkawa/lang/AutoloadProcedure;
.super Lgnu/mapping/Procedure;
.source "AutoloadProcedure.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final classModuleBody:Ljava/lang/Class;


# instance fields
.field className:Ljava/lang/String;

.field language:Lgnu/expr/Language;

.field loaded:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-class v0, Lgnu/expr/ModuleBody;

    sput-object v0, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "language"    # Lgnu/expr/Language;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    .line 43
    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 69
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " while autoloading "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2e

    const-string v1, ""

    :goto_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_7

    .line 197
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 198
    :cond_7
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v0, v0, Lkawa/lang/AutoloadProcedure;

    if-eqz v0, :cond_2a

    .line 199
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circularity in autoload of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2a
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLoaded()Lgnu/mapping/Procedure;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_7

    .line 159
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 160
    :cond_7
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 227
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_8

    .line 230
    .end local v0    # "value":Ljava/lang/Object;
    :goto_7
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v0, :cond_7

    .line 206
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 207
    :cond_7
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v0, v0, Lgnu/mapping/HasSetter;

    if-eqz v0, :cond_14

    .line 208
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    .line 209
    :goto_13
    return-object v0

    :cond_14
    invoke-super {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_13
.end method

.method load()V
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 88
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    .line 89
    .local v6, "name":Ljava/lang/Object;
    iget-object v4, p0, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    .line 90
    .local v4, "lang":Lgnu/expr/Language;
    if-nez v4, :cond_d

    .line 91
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 92
    :cond_d
    invoke-virtual {v4}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    .line 94
    .local v2, "env":Lgnu/mapping/Environment;
    instance-of v11, v6, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_7f

    move-object v11, v6

    check-cast v11, Lgnu/mapping/Symbol;

    move-object v9, v11

    .line 98
    .local v9, "sym":Lgnu/mapping/Symbol;
    :goto_19
    :try_start_19
    iget-object v11, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 99
    .local v7, "procClass":Ljava/lang/Class;
    sget-object v11, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 101
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v1

    .line 102
    .local v1, "context":Lgnu/expr/ModuleContext;
    invoke-virtual {v1, v7}, Lgnu/expr/ModuleContext;->searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2e} :catch_b1
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2e} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2e} :catch_bf

    move-result-object v5

    .line 103
    .local v5, "mod":Ljava/lang/Object;
    if-nez v5, :cond_4a

    .line 107
    :try_start_31
    const-string v11, "$instance"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_3b} :catch_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_3b} :catch_b1
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_3b} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_3b} :catch_bf

    move-result-object v5

    .line 114
    :goto_3c
    :try_start_3c
    invoke-static {v5, v4, v2}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 115
    instance-of v11, v5, Lgnu/expr/ModuleBody;

    if-eqz v11, :cond_4a

    .line 116
    move-object v0, v5

    check-cast v0, Lgnu/expr/ModuleBody;

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ModuleBody;->run()V

    .line 119
    :cond_4a
    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 120
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_55

    instance-of v11, v10, Lgnu/mapping/Procedure;

    if-nez v11, :cond_6b

    .line 122
    :cond_55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid ModuleBody class - does not define "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    .line 124
    :cond_6b
    check-cast v10, Lgnu/mapping/Procedure;

    .end local v10    # "value":Ljava/lang/Object;
    iput-object v10, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 145
    .end local v1    # "context":Lgnu/expr/ModuleContext;
    .end local v5    # "mod":Ljava/lang/Object;
    :cond_6f
    :goto_6f
    if-eqz v6, :cond_7e

    iget-object v11, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v11}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_7e

    .line 146
    iget-object v11, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v11, v6}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_7e} :catch_b1
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_7e} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_7e} :catch_bf

    .line 154
    .end local v7    # "procClass":Ljava/lang/Class;
    :cond_7e
    :goto_7e
    return-void

    .line 94
    .end local v9    # "sym":Lgnu/mapping/Symbol;
    :cond_7f
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    goto :goto_19

    .line 109
    .restart local v1    # "context":Lgnu/expr/ModuleContext;
    .restart local v5    # "mod":Ljava/lang/Object;
    .restart local v7    # "procClass":Ljava/lang/Class;
    .restart local v9    # "sym":Lgnu/mapping/Symbol;
    :catch_88
    move-exception v3

    .line 112
    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_89
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    goto :goto_3c

    .line 128
    .end local v1    # "context":Lgnu/expr/ModuleContext;
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    .end local v5    # "mod":Ljava/lang/Object;
    :cond_8e
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/Procedure;

    iput-object v11, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 129
    iget-object v11, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-ne v11, p0, :cond_9f

    .line 130
    const-string v11, "circularity detected"

    invoke-direct {p0, v11}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_89 .. :try_end_9f} :catch_b1
    .catch Ljava/lang/InstantiationException; {:try_start_89 .. :try_end_9f} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_89 .. :try_end_9f} :catch_bf

    .line 131
    :cond_9f
    if-eqz v6, :cond_6f

    .line 135
    :try_start_a1
    invoke-virtual {v4}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v11

    if-eqz v11, :cond_a9

    sget-object v8, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 138
    .local v8, "property":Ljava/lang/Object;
    :cond_a9
    iget-object v11, p0, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v9, v8, v11}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ae
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_a1 .. :try_end_ae} :catch_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a1 .. :try_end_ae} :catch_b1
    .catch Ljava/lang/InstantiationException; {:try_start_a1 .. :try_end_ae} :catch_b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_a1 .. :try_end_ae} :catch_bf

    goto :goto_6f

    .line 140
    .end local v8    # "property":Ljava/lang/Object;
    :catch_af
    move-exception v11

    goto :goto_6f

    .line 148
    .end local v7    # "procClass":Ljava/lang/Class;
    :catch_b1
    move-exception v3

    .line 149
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string v11, "failed to find class "

    invoke-direct {p0, v11}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_7e

    .line 150
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_b8
    move-exception v3

    .line 151
    .local v3, "ex":Ljava/lang/InstantiationException;
    const-string v11, "failed to instantiate class "

    invoke-direct {p0, v11}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_7e

    .line 152
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_bf
    move-exception v3

    .line 153
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    const-string v11, "illegal access in class "

    invoke-direct {p0, v11}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_7e
.end method

.method public numArgs()I
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .prologue
    .line 47
    const-string v1, "#<procedure "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    :cond_e
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 64
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/AutoloadProcedure;->setName(Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    return-void
.end method
