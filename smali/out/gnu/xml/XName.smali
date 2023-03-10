.class public Lgnu/xml/XName;
.super Lgnu/mapping/Symbol;
.source "XName.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/mapping/Symbol;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V
    .registers 5
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "namespaceNodes"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 20
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 22
    return-void
.end method

.method public static checkName(Ljava/lang/String;)I
    .registers 12
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const v10, 0xdc00

    const v9, 0xd800

    const/4 v6, -0x1

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 97
    .local v4, "len":I
    if-nez v4, :cond_f

    move v5, v6

    .line 116
    :cond_e
    :goto_e
    return v5

    .line 99
    :cond_f
    const/4 v5, 0x2

    .line 100
    .local v5, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_12
    if-ge v3, v4, :cond_e

    .line 102
    if-nez v3, :cond_3e

    const/4 v1, 0x1

    .line 103
    .local v1, "first":Z
    :goto_17
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, "ch":I
    if-lt v0, v9, :cond_34

    if-ge v0, v10, :cond_34

    if-ge v2, v4, :cond_34

    .line 105
    sub-int v7, v0, v9

    mul-int/lit16 v7, v7, 0x400

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v10

    add-int/2addr v7, v8

    const/high16 v8, 0x10000

    add-int v0, v7, v8

    move v2, v3

    .line 106
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_34
    const/16 v7, 0x3a

    if-ne v0, v7, :cond_40

    .line 108
    const/4 v7, 0x2

    if-ne v5, v7, :cond_3c

    .line 109
    const/4 v5, 0x1

    :cond_3c
    :goto_3c
    move v3, v2

    .line 115
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_12

    .line 102
    .end local v0    # "ch":I
    .end local v1    # "first":Z
    :cond_3e
    const/4 v1, 0x0

    goto :goto_17

    .line 111
    .end local v3    # "i":I
    .restart local v0    # "ch":I
    .restart local v1    # "first":Z
    .restart local v2    # "i":I
    :cond_40
    invoke-static {v0}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v7

    if-nez v7, :cond_48

    move v5, v6

    .line 112
    goto :goto_e

    .line 113
    :cond_48
    if-eqz v1, :cond_3c

    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 114
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method public static isNCName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNamePart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 67
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_e

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isNameStart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 57
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isNmToken(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_2
    if-eqz v0, :cond_e

    .line 35
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne p1, v1, :cond_b

    .line 36
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 38
    :goto_a
    return-object v1

    .line 33
    :cond_b
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_2

    .line 38
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
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
    .line 50
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->readExternal(Ljava/io/ObjectInput;)V

    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 52
    return-void
.end method

.method public final setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .registers 2
    .param p1, "nodes"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 29
    iput-object p1, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

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
    .line 43
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 44
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
