.class public Lgnu/xquery/util/QNameUtils;
.super Ljava/lang/Object;
.source "QNameUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localNameFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;

    .prologue
    .line 158
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_7

    .line 162
    .end local p0    # "name":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .line 160
    .restart local p0    # "name":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_16

    .line 161
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "local-name-from-QName"

    const/4 v2, 0x1

    const-string v3, "xs:QName"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_16
    check-cast p0, Lgnu/mapping/Symbol;

    .end local p0    # "name":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object p0

    goto :goto_6
.end method

.method public static lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 94
    move-object v0, p1

    .line 96
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_1
    if-nez v0, :cond_e

    .line 98
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "uri":Ljava/lang/String;
    :goto_7
    if-nez v1, :cond_d

    if-nez p0, :cond_d

    .line 108
    const-string v1, ""

    .line 109
    :cond_d
    return-object v1

    .line 101
    .end local v1    # "uri":Ljava/lang/String;
    :cond_e
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p0, :cond_19

    .line 103
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "uri":Ljava/lang/String;
    goto :goto_7

    .line 94
    .end local v1    # "uri":Ljava/lang/String;
    :cond_19
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    goto :goto_1
.end method

.method public static makeQName(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 9
    .param p0, "paramURI"    # Ljava/lang/Object;
    .param p1, "paramQName"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p0, :cond_6

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v4, :cond_8

    .line 135
    :cond_6
    const-string p0, ""

    .line 136
    .end local p0    # "paramURI":Ljava/lang/Object;
    :cond_8
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "colon":I
    move-object v2, p0

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "namespaceURI":Ljava/lang/String;
    if-gez v0, :cond_43

    .line 140
    move-object v1, p1

    .line 141
    .local v1, "localPart":Ljava/lang/String;
    const-string v3, ""

    .line 148
    .local v3, "prefix":Ljava/lang/String;
    :goto_16
    invoke-static {v1}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-ltz v0, :cond_53

    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 150
    :cond_24
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid QName syntax \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_43
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "localPart":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_16

    .line 151
    :cond_53
    if-ltz v0, :cond_7a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7a

    .line 152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty uri for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_7a
    invoke-static {v2, v1, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    return-object v4
.end method

.method public static namespaceURIForPrefix(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "prefix"    # Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 196
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 197
    .local v0, "el":Lgnu/kawa/xml/KNode;
    if-nez v0, :cond_11

    .line 198
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "namespace-uri-for-prefix"

    const/4 v5, 0x2

    const-string v6, "node()"

    invoke-direct {v3, v4, v5, p1, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_11
    if-eqz p0, :cond_17

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v3, :cond_21

    .line 201
    :cond_17
    const/4 v1, 0x0

    .line 210
    .local v1, "str":Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-virtual {v0, v1}, Lgnu/kawa/xml/KNode;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "uri":Ljava/lang/String;
    if-nez v2, :cond_20

    .line 212
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 214
    .end local v2    # "uri":Ljava/lang/String;
    :cond_20
    return-object v2

    .line 202
    .end local v1    # "str":Ljava/lang/String;
    :cond_21
    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_34

    instance-of v3, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v3, :cond_34

    .line 203
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "namespace-uri-for-prefix"

    const/4 v5, 0x1

    const-string v6, "xs:string"

    invoke-direct {v3, v4, v5, p1, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1    # "str":Ljava/lang/String;
    const-string v3, ""

    if-ne v1, v3, :cond_18

    .line 208
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "name"    # Ljava/lang/Object;

    .prologue
    .line 181
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v2, :cond_6

    if-nez p0, :cond_7

    .line 185
    .end local p0    # "name":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .restart local p0    # "name":Ljava/lang/Object;
    :cond_7
    :try_start_7
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_12} :catch_14

    move-result-object p0

    goto :goto_6

    .line 187
    :catch_14
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "namespace-uri"

    const/4 v4, 0x1

    const-string v5, "xs:QName"

    invoke-direct {v2, v3, v4, p0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public static prefixFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;

    .prologue
    .line 167
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_6

    if-nez p0, :cond_7

    .line 174
    .end local p0    # "name":Ljava/lang/Object;
    .local v0, "prefix":Ljava/lang/String;
    :cond_6
    :goto_6
    return-object p0

    .line 169
    .end local v0    # "prefix":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_21

    .line 171
    check-cast p0, Lgnu/mapping/Symbol;

    .end local p0    # "name":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "prefix":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 173
    :cond_19
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_6

    .line 174
    :cond_1c
    invoke-static {v0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object p0

    goto :goto_6

    .line 176
    .end local v0    # "prefix":Ljava/lang/String;
    .restart local p0    # "name":Ljava/lang/Object;
    :cond_21
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "prefix-from-QName"

    const/4 v3, 0x1

    const-string v4, "xs:QName"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public static resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_25
    return-object v0
.end method

.method public static resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;
    .registers 11
    .param p0, "qname"    # Ljava/lang/Object;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .prologue
    .line 57
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    instance-of v5, p0, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_9

    .line 82
    .end local p0    # "qname":Ljava/lang/Object;
    :goto_8
    return-object p0

    .line 60
    .restart local p0    # "qname":Ljava/lang/Object;
    :cond_9
    instance-of v5, p0, Lgnu/mapping/Values;

    if-nez v5, :cond_15

    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_1d

    instance-of v5, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v5, :cond_1d

    .line 62
    :cond_15
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "bad argument to QName"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 66
    .local v0, "colon":I
    if-gez v0, :cond_5d

    .line 68
    move-object v1, v2

    .line 69
    .local v1, "localPart":Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, "prefix":Ljava/lang/String;
    :goto_30
    invoke-static {v1}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v3, :cond_6d

    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 79
    :cond_3e
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid QName syntax \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_5d
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "localPart":Ljava/lang/String;
    goto :goto_30

    .line 81
    :cond_6d
    invoke-static {v3, p1, p2}, Lgnu/xquery/util/QNameUtils;->resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "uri":Ljava/lang/String;
    if-nez v3, :cond_75

    const-string v3, ""

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_75
    invoke-static {v4, v1, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_8
.end method

.method public static resolveQNameUsingElement(Ljava/lang/Object;Lgnu/kawa/xml/KElement;)Ljava/lang/Object;
    .registers 10
    .param p0, "qname"    # Ljava/lang/Object;
    .param p1, "node"    # Lgnu/kawa/xml/KElement;

    .prologue
    .line 11
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v5, :cond_a

    if-nez p0, :cond_b

    .line 43
    .end local p0    # "qname":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-object p0

    .line 14
    .restart local p0    # "qname":Ljava/lang/Object;
    :cond_b
    instance-of v5, p0, Lgnu/mapping/Values;

    if-nez v5, :cond_17

    instance-of v5, p0, Ljava/lang/String;

    if-nez v5, :cond_1f

    instance-of v5, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v5, :cond_1f

    .line 16
    :cond_17
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "bad argument to QName"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 17
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 20
    .local v0, "colon":I
    if-gez v0, :cond_69

    .line 22
    const/4 v3, 0x0

    .line 23
    .local v3, "prefix":Ljava/lang/String;
    move-object v1, v2

    .line 30
    .local v1, "localPart":Ljava/lang/String;
    :goto_32
    invoke-virtual {p1, v3}, Lgnu/kawa/xml/KElement;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "uri":Ljava/lang/String;
    if-nez v4, :cond_3c

    .line 33
    if-nez v3, :cond_79

    .line 34
    const-string v4, ""

    .line 38
    :cond_3c
    invoke-static {v1}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz v3, :cond_98

    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 41
    :cond_4a
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid QName syntax \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 27
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_69
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 28
    .restart local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "localPart":Ljava/lang/String;
    goto :goto_32

    .line 36
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_79
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown namespace for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 43
    :cond_98
    if-nez v3, :cond_9c

    const-string v3, ""

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_9c
    invoke-static {v4, v1, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto/16 :goto_a
.end method

.method public static resolveURI(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "relative"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 220
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-eqz v1, :cond_8

    .line 221
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 222
    :cond_8
    instance-of v1, p1, Lgnu/kawa/xml/KNode;

    if-eqz v1, :cond_10

    .line 223
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 224
    :cond_10
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_16

    if-nez p0, :cond_17

    .line 234
    .end local p0    # "relative":Ljava/lang/Object;
    .end local p1    # "base":Ljava/lang/Object;
    .local v0, "baseP":Lgnu/text/Path;
    :cond_16
    :goto_16
    return-object p0

    .line 226
    .end local v0    # "baseP":Lgnu/text/Path;
    .restart local p0    # "relative":Ljava/lang/Object;
    .restart local p1    # "base":Ljava/lang/Object;
    :cond_17
    instance-of v1, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v1, :cond_1f

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    .end local p0    # "relative":Ljava/lang/Object;
    :cond_1f
    instance-of v1, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v1, :cond_27

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    .end local p1    # "base":Ljava/lang/Object;
    :cond_27
    instance-of v1, p1, Lgnu/text/Path;

    if-eqz v1, :cond_39

    check-cast p1, Lgnu/text/Path;

    move-object v0, p1

    .line 231
    .restart local v0    # "baseP":Lgnu/text/Path;
    :goto_2e
    instance-of v1, p0, Lgnu/text/Path;

    if-eqz v1, :cond_3e

    .line 232
    check-cast p0, Lgnu/text/Path;

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p0

    goto :goto_16

    .line 230
    .end local v0    # "baseP":Lgnu/text/Path;
    :cond_39
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_2e

    .line 234
    .restart local v0    # "baseP":Lgnu/text/Path;
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    goto :goto_16
.end method

.method public static validNCName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
