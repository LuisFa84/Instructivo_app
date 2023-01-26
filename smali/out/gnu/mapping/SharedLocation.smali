.class public Lgnu/mapping/SharedLocation;
.super Lgnu/mapping/NamedLocation;
.source "SharedLocation.java"


# instance fields
.field timestamp:I


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "timestamp"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 16
    iput p3, p0, Lgnu/mapping/SharedLocation;->timestamp:I

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/lang/Object;
    :cond_b
    :goto_b
    monitor-exit p0

    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/Object;
    :cond_d
    :try_start_d
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-eq v0, v1, :cond_b

    iget-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_b

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBound()Z
    .registers 3

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_17

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Ljava/lang/Object;)V
    .registers 5
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_9

    .line 33
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 43
    :goto_7
    monitor-exit p0

    return-void

    .line 34
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/SharedLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    if-ne v0, v1, :cond_18

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 37
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_7

    .line 32
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :cond_18
    :try_start_18
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 42
    :cond_30
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_15

    goto :goto_7
.end method
