.class public abstract Lgnu/expr/AccessExp;
.super Lgnu/expr/Expression;
.source "AccessExp.java"


# instance fields
.field binding:Lgnu/expr/Declaration;

.field private context:Lgnu/expr/Declaration;

.field symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public final contextDecl()Lgnu/expr/Declaration;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public final getBinding()Lgnu/expr/Declaration;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public final getSimpleName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    iget-object v1, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 28
    iget-object v1, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 33
    :goto_a
    return-object v1

    .line 30
    :cond_b
    iget-object v1, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_20

    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    .local v0, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 32
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 33
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    :cond_20
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final getSymbol()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public final setBinding(Lgnu/expr/Declaration;)V
    .registers 2
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 40
    iput-object p1, p0, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setContextDecl(Lgnu/expr/Declaration;)V
    .registers 2
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 48
    iput-object p1, p0, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    return-void
.end method

.method public string_name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
