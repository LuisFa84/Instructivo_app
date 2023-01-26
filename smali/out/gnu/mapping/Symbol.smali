.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 350
    const-string v0, "(function)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    .line 362
    const-string v0, "(property-list)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .registers 3
    .param p1, "ns"    # Lgnu/mapping/Namespace;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 293
    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .registers 8
    .param p0, "sym1"    # Lgnu/mapping/Symbol;
    .param p1, "sym2"    # Lgnu/mapping/Symbol;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    if-ne p0, p1, :cond_5

    .line 322
    :cond_4
    :goto_4
    return v2

    .line 307
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v3

    .line 308
    goto :goto_4

    .line 312
    :cond_b
    iget-object v4, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    iget-object v5, p1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_21

    .line 315
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 316
    .local v0, "namespace1":Lgnu/mapping/Namespace;
    iget-object v1, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 319
    .local v1, "namespace2":Lgnu/mapping/Namespace;
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 320
    iget-object v4, v0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    iget-object v5, v1, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-eq v4, v5, :cond_4

    move v2, v3

    goto :goto_4

    .end local v0    # "namespace1":Lgnu/mapping/Namespace;
    .end local v1    # "namespace2":Lgnu/mapping/Namespace;
    :cond_21
    move v2, v3

    .line 322
    goto :goto_4
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_13

    check-cast p0, Ljava/lang/String;

    .end local p0    # "namespace":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    .line 119
    .local v0, "ns":Lgnu/mapping/Namespace;
    :goto_a
    if-eqz v0, :cond_e

    if-nez p1, :cond_17

    .line 120
    :cond_e
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 121
    :goto_12
    return-object v1

    .line 116
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    .restart local p0    # "namespace":Ljava/lang/Object;
    :cond_13
    check-cast p0, Lgnu/mapping/Namespace;

    move-object v0, p0

    goto :goto_a

    .line 121
    .end local p0    # "namespace":Ljava/lang/Object;
    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_12
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "local"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 14
    .param p0, "symbol"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 185
    .local v8, "slen":I
    const/4 v3, -0x1

    .local v3, "lbr":I
    const/4 v7, -0x1

    .line 186
    .local v7, "rbr":I
    const/4 v0, 0x0

    .line 187
    .local v0, "braceCount":I
    const/4 v4, 0x0

    .line 188
    .local v4, "mainStart":I
    const/4 v6, 0x0

    .line 189
    .local v6, "prefixEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v8, :cond_1a

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 192
    .local v1, "ch":C
    if-ne v1, v12, :cond_33

    if-nez v0, :cond_33

    .line 194
    move v6, v2

    .line 195
    add-int/lit8 v4, v2, 0x1

    .line 223
    .end local v1    # "ch":C
    :cond_1a
    :goto_1a
    if-ltz v3, :cond_5f

    if-lez v7, :cond_5f

    .line 225
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "uri":Ljava/lang/String;
    if-lez v6, :cond_5d

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "prefix":Ljava/lang/String;
    :goto_2a
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9, v5}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    .line 236
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    :goto_32
    return-object v10

    .line 198
    .restart local v1    # "ch":C
    :cond_33
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_3d

    .line 200
    if-gez v3, :cond_3b

    .line 202
    move v6, v2

    .line 203
    move v3, v2

    .line 205
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    .line 207
    :cond_3d
    const/16 v10, 0x7d

    if-ne v1, v10, :cond_5a

    .line 209
    add-int/lit8 v0, v0, -0x1

    .line 210
    if-nez v0, :cond_56

    .line 212
    move v7, v2

    .line 213
    if-ge v2, v8, :cond_53

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_53

    add-int/lit8 v4, v2, 0x2

    .line 214
    :goto_52
    goto :goto_1a

    .line 213
    :cond_53
    add-int/lit8 v4, v2, 0x1

    goto :goto_52

    .line 216
    :cond_56
    if-gez v0, :cond_5a

    .line 218
    move v4, v6

    .line 219
    goto :goto_1a

    .line 189
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 226
    .end local v1    # "ch":C
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_5d
    const/4 v5, 0x0

    goto :goto_2a

    .line 229
    .end local v9    # "uri":Ljava/lang/String;
    :cond_5f
    if-lez v6, :cond_6e

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    goto :goto_32

    .line 236
    :cond_6e
    invoke-static {p0}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    goto :goto_32
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "spec"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-eqz p1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_b

    .line 132
    :cond_6
    invoke-static {p0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 147
    .end local p1    # "spec":Ljava/lang/Object;
    :goto_a
    return-object v1

    .line 134
    .restart local p1    # "spec":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, Lgnu/mapping/Namespace;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 135
    check-cast v0, Lgnu/mapping/Namespace;

    .line 147
    .end local p1    # "spec":Ljava/lang/Object;
    .local v0, "ns":Lgnu/mapping/Namespace;
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_a

    .line 136
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    .restart local p1    # "spec":Ljava/lang/Object;
    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v1, :cond_22

    .line 137
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    goto :goto_12

    .line 141
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_22
    check-cast p1, Ljava/lang/CharSequence;

    .line 145
    .local p1, "spec":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 297
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 298
    .local v0, "other":Lgnu/mapping/Symbol;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_15

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "comparing Symbols in different namespaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_15
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 330
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_e

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 55
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public final getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 66
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-nez v0, :cond_7

    const-string v1, ""

    :goto_6
    return-object v1

    :cond_7
    iget-object v1, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    goto :goto_6
.end method

.method public final hasEmptyNamespace()Z
    .registers 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 74
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "nsname":Ljava/lang/String;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .end local v1    # "nsname":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    .restart local v1    # "nsname":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .registers 3
    .param p1, "key"    # Lgnu/mapping/EnvironmentKey;

    .prologue
    .line 44
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p1, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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
    .line 414
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_5

    .line 423
    .end local p0    # "this":Lgnu/mapping/Symbol;
    :goto_4
    return-object p0

    .restart local p0    # "this":Lgnu/mapping/Symbol;
    :cond_5
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_4
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .registers 2
    .param p1, "ns"    # Lgnu/mapping/Namespace;

    .prologue
    .line 346
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lgnu/mapping/Symbol;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(C)Ljava/lang/String;
    .registers 10
    .param p1, "style"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 377
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_59

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_59

    move v1, v0

    .line 380
    .local v1, "hasUri":Z
    :goto_13
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5b

    .line 381
    .local v0, "hasPrefix":Z
    :goto_1b
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "name":Ljava/lang/String;
    if-nez v1, :cond_23

    if-eqz v0, :cond_58

    .line 384
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v4, "sbuf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_33

    const/16 v6, 0x55

    if-ne p1, v6, :cond_30

    if-nez v1, :cond_33

    .line 386
    :cond_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_33
    if-eqz v1, :cond_4c

    const/16 v6, 0x50

    if-ne p1, v6, :cond_3b

    if-nez v0, :cond_4c

    .line 389
    :cond_3b
    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :cond_4c
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "sbuf":Ljava/lang/StringBuilder;
    :cond_58
    return-object v2

    .end local v0    # "hasPrefix":Z
    .end local v1    # "hasUri":Z
    :cond_59
    move v1, v6

    .line 379
    goto :goto_13

    .restart local v1    # "hasUri":Z
    :cond_5b
    move v0, v6

    .line 380
    goto :goto_1b
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 404
    .local v0, "ns":Lgnu/mapping/Namespace;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 406
    return-void
.end method
