.class public Lgnu/commonlisp/lang/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "environ"    # Lgnu/mapping/Environment;
    .param p1, "symbol"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "symbol"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPrintName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "sym"    # Ljava/lang/Object;

    .prologue
    .line 51
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_7

    const-string v0, "nil"

    .end local p0    # "sym":Ljava/lang/Object;
    :goto_6
    return-object v0

    .restart local p0    # "sym":Ljava/lang/Object;
    :cond_7
    check-cast p0, Lgnu/mapping/Symbol;

    .end local p0    # "sym":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public static getSymbol(Lgnu/mapping/Environment;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 3
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "sym"    # Ljava/lang/Object;

    .prologue
    .line 35
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p1, v0, :cond_6

    .line 36
    const-string p1, "nil"

    .line 37
    .end local p1    # "sym":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_d

    check-cast p1, Lgnu/mapping/Symbol;

    :goto_c
    return-object p1

    :cond_d
    invoke-virtual {p0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    goto :goto_c
.end method

.method public static getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "sym"    # Ljava/lang/Object;

    .prologue
    .line 43
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_6

    .line 44
    const-string p0, "nil"

    .line 45
    .end local p0    # "sym":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_d

    check-cast p0, Lgnu/mapping/Symbol;

    :goto_c
    return-object p0

    :cond_d
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_c
.end method

.method public static isBound(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "sym"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 22
    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v3, :cond_6

    .line 30
    .end local p0    # "sym":Ljava/lang/Object;
    .local v0, "env":Lgnu/mapping/Environment;
    .local v1, "symbol":Lgnu/mapping/Symbol;
    :cond_5
    :goto_5
    return v2

    .line 24
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "symbol":Lgnu/mapping/Symbol;
    .restart local p0    # "sym":Ljava/lang/Object;
    :cond_6
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 26
    .restart local v0    # "env":Lgnu/mapping/Environment;
    instance-of v3, p0, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 27
    check-cast v1, Lgnu/mapping/Symbol;

    .line 30
    .end local p0    # "sym":Ljava/lang/Object;
    .restart local v1    # "symbol":Lgnu/mapping/Symbol;
    :goto_11
    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_19
    const/4 v2, 0x0

    goto :goto_5

    .line 29
    .end local v1    # "symbol":Lgnu/mapping/Symbol;
    .restart local p0    # "sym":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {v0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    check-cast p0, Ljava/lang/String;

    .end local p0    # "sym":Ljava/lang/Object;
    invoke-virtual {v3, p0}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .restart local v1    # "symbol":Lgnu/mapping/Symbol;
    goto :goto_11
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "val"    # Ljava/lang/Object;

    .prologue
    .line 16
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_c

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq p0, v0, :cond_c

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "environ"    # Lgnu/mapping/Environment;
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
