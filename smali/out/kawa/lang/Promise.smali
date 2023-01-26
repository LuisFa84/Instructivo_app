.class public Lkawa/lang/Promise;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Lgnu/text/Printable;


# instance fields
.field result:Ljava/lang/Object;

.field thunk:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .registers 2
    .param p1, "thunk"    # Lgnu/mapping/Procedure;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    .line 21
    return-void
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    instance-of v0, p0, Lkawa/lang/Promise;

    if-eqz v0, :cond_b

    .line 37
    check-cast p0, Lkawa/lang/Promise;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lkawa/lang/Promise;->force()Ljava/lang/Object;

    move-result-object p0

    .line 44
    :cond_a
    :goto_a
    return-object p0

    .line 38
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, Lgnu/mapping/Future;

    if-eqz v0, :cond_16

    .line 39
    check-cast p0, Lgnu/mapping/Future;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Future;->waitForResult()Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    .line 41
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 42
    check-cast p0, Ljava/util/concurrent/Future;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_a
.end method


# virtual methods
.method public force()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v1, :cond_10

    .line 27
    iget-object v1, p0, Lkawa/lang/Promise;->thunk:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "x":Ljava/lang/Object;
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v1, :cond_10

    .line 29
    iput-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    .line 31
    .end local v0    # "x":Ljava/lang/Object;
    :cond_10
    iget-object v1, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 49
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 50
    const-string v0, "#<promise - not forced yet>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 57
    :goto_9
    return-void

    .line 53
    :cond_a
    const-string v0, "#<promise - forced to a "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lkawa/lang/Promise;->result:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 55
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_9
.end method
