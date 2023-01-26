.class public Lgnu/mapping/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;


# instance fields
.field name:Lgnu/mapping/Symbol;

.field property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    .line 16
    iput-object p2, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 35
    instance-of v2, p1, Lgnu/mapping/KeyPair;

    if-nez v2, :cond_6

    .line 38
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 37
    check-cast v0, Lgnu/mapping/KeyPair;

    .line 38
    .local v0, "e2":Lgnu/mapping/KeyPair;
    iget-object v2, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    iget-object v3, v0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    if-nez v2, :cond_19

    iget-object v2, v0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    if-nez v2, :cond_5

    :goto_17
    const/4 v1, 0x1

    goto :goto_5

    :cond_19
    iget-object v2, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    iget-object v3, v0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v3}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_17
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lgnu/mapping/EnvironmentKey;)Z
    .registers 4
    .param p1, "key"    # Lgnu/mapping/EnvironmentKey;

    .prologue
    .line 24
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-static {p1, v0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyPair[sym:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->name:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/mapping/KeyPair;->property:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
