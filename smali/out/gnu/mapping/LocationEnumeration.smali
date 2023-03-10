.class public Lgnu/mapping/LocationEnumeration;
.super Ljava/lang/Object;
.source "LocationEnumeration.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lgnu/mapping/Location;",
        ">;",
        "Ljava/util/Enumeration",
        "<",
        "Lgnu/mapping/Location;",
        ">;"
    }
.end annotation


# instance fields
.field bindings:[Lgnu/mapping/NamedLocation;

.field env:Lgnu/mapping/SimpleEnvironment;

.field index:I

.field inherited:Lgnu/mapping/LocationEnumeration;

.field nextLoc:Lgnu/mapping/NamedLocation;

.field prevLoc:Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .registers 5
    .param p1, "env"    # Lgnu/mapping/SimpleEnvironment;

    .prologue
    .line 30
    iget-object v0, p1, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v1, 0x1

    iget v2, p1, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 31
    return-void
.end method

.method public constructor <init>([Lgnu/mapping/NamedLocation;I)V
    .registers 3
    .param p1, "bindings"    # [Lgnu/mapping/NamedLocation;
    .param p2, "count"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 25
    iput p2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    .line 26
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0, p0}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Lgnu/mapping/Location;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->next()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lgnu/mapping/Location;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextLocation()Lgnu/mapping/Location;
    .registers 6

    .prologue
    .line 45
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_10

    .line 46
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 47
    :cond_10
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 48
    .local v1, "oldPrev":Lgnu/mapping/NamedLocation;
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-nez v3, :cond_22

    .line 50
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v4, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v3, v4

    .line 51
    .local v0, "first":Lgnu/mapping/NamedLocation;
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v3, v0, :cond_22

    .line 52
    iput-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 54
    .end local v0    # "first":Lgnu/mapping/NamedLocation;
    :cond_22
    :goto_22
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v4, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v3, v4, :cond_35

    .line 55
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v3, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    goto :goto_22

    .line 56
    :cond_35
    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 57
    .local v2, "r":Lgnu/mapping/Location;
    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v3, v3, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 58
    return-object v2
.end method

.method public remove()V
    .registers 5

    .prologue
    .line 73
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 74
    .local v0, "curLoc":Lgnu/mapping/NamedLocation;
    :goto_8
    if-eqz v0, :cond_10

    iget-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v1, v2, :cond_1d

    .line 75
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 73
    .end local v0    # "curLoc":Lgnu/mapping/NamedLocation;
    :cond_16
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v1, v2

    goto :goto_8

    .line 76
    .restart local v0    # "curLoc":Lgnu/mapping/NamedLocation;
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 77
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_33

    .line 78
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 81
    :goto_2a
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    iget v2, v1, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 82
    return-void

    .line 80
    :cond_33
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    aput-object v3, v1, v2

    goto :goto_2a
.end method
