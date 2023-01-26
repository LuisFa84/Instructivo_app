.class public Lgnu/xml/NodeTree;
.super Lgnu/lists/TreeList;
.source "NodeTree.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field idCount:I

.field idNames:[Ljava/lang/String;

.field idOffsets:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    return-void
.end method

.method public static make()Lgnu/xml/NodeTree;
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "ipos"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 209
    const/4 v0, 0x0

    .line 212
    :cond_4
    return v0

    .line 210
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "attr":I
    if-nez v0, :cond_4

    .line 213
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->parentPos(I)I

    move-result p1

    .line 214
    goto :goto_0
.end method

.method public baseUriOfPos(IZ)Lgnu/text/Path;
    .registers 11
    .param p1, "pos"    # I
    .param p2, "resolveRelative"    # Z

    .prologue
    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, "uri":Lgnu/text/Path;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    .line 224
    .local v3, "index":I
    :goto_5
    iget-object v6, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v6, v6

    if-ne v3, v6, :cond_c

    .line 225
    const/4 v6, 0x0

    .line 250
    :goto_b
    return-object v6

    .line 226
    :cond_c
    iget-object v6, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v2, v6, v3

    .line 227
    .local v2, "datum":C
    const/4 v1, 0x0

    .line 228
    .local v1, "base":Lgnu/text/Path;
    const v6, 0xf112

    if-ne v2, v6, :cond_37

    .line 230
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v4

    .line 231
    .local v4, "oindex":I
    if-ltz v4, :cond_26

    .line 232
    iget-object v6, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-static {v6}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v1

    .line 242
    .end local v4    # "oindex":I
    :cond_26
    :goto_26
    if-eqz v1, :cond_5e

    .line 244
    if-eqz v5, :cond_2c

    if-nez p2, :cond_59

    :cond_2c
    move-object v5, v1

    .line 245
    :goto_2d
    invoke-virtual {v5}, Lgnu/text/Path;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_35

    if-nez p2, :cond_5e

    :cond_35
    move-object v6, v5

    .line 246
    goto :goto_b

    .line 234
    :cond_37
    const v6, 0xa000

    if-lt v2, v6, :cond_41

    const v6, 0xafff

    if-le v2, v6, :cond_46

    :cond_41
    const v6, 0xf108

    if-ne v2, v6, :cond_26

    .line 238
    :cond_46
    const-string v6, "http://www.w3.org/XML/1998/namespace"

    const-string v7, "base"

    invoke-virtual {p0, p1, v6, v7}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "attr":I
    if-eqz v0, :cond_26

    .line 240
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    goto :goto_26

    .line 244
    .end local v0    # "attr":I
    :cond_59
    invoke-virtual {v1, v5}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v5

    goto :goto_2d

    .line 248
    :cond_5e
    invoke-virtual {p0, v3}, Lgnu/xml/NodeTree;->parentOrEntityI(I)I

    move-result v3

    .line 249
    const/4 v6, -0x1

    if-ne v3, v6, :cond_67

    move-object v6, v5

    .line 250
    goto :goto_b

    .line 251
    :cond_67
    shl-int/lit8 p1, v3, 0x1

    .line 252
    goto :goto_5
.end method

.method enterID(Ljava/lang/String;I)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 302
    iget-object v7, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 303
    .local v7, "tmpNames":[Ljava/lang/String;
    iget-object v8, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 304
    .local v8, "tmpOffsets":[I
    if-nez v7, :cond_2d

    .line 306
    const/16 v5, 0x40

    .line 307
    .local v5, "size":I
    new-array v9, v5, [Ljava/lang/String;

    iput-object v9, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 308
    new-array v9, v5, [I

    iput-object v9, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 325
    :cond_10
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 326
    .local v0, "hash":I
    add-int/lit8 v3, v5, -0x1

    .line 327
    .local v3, "mask":I
    and-int v2, v0, v3

    .line 329
    .local v2, "index":I
    xor-int/lit8 v9, v0, -0x1

    shl-int/lit8 v9, v9, 0x1

    or-int/lit8 v6, v9, 0x1

    .line 332
    .local v6, "step":I
    :goto_1e
    aget-object v4, v7, v2

    .line 333
    .local v4, "oldName":Ljava/lang/String;
    if-nez v4, :cond_5d

    .line 335
    aput-object p1, v7, v2

    .line 336
    aput p2, v8, v2

    .line 346
    iget v9, p0, Lgnu/xml/NodeTree;->idCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lgnu/xml/NodeTree;->idCount:I

    .line 347
    :cond_2c
    return-void

    .line 310
    .end local v0    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "mask":I
    .end local v4    # "oldName":Ljava/lang/String;
    .end local v5    # "size":I
    .end local v6    # "step":I
    :cond_2d
    iget v9, p0, Lgnu/xml/NodeTree;->idCount:I

    mul-int/lit8 v9, v9, 0x4

    iget-object v10, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v5, v10

    .restart local v5    # "size":I
    mul-int/lit8 v10, v5, 0x3

    if-lt v9, v10, :cond_10

    .line 312
    mul-int/lit8 v9, v5, 0x2

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 313
    mul-int/lit8 v9, v5, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 314
    const/4 v9, 0x0

    iput v9, p0, Lgnu/xml/NodeTree;->idCount:I

    .line 315
    move v1, v5

    .local v1, "i":I
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_56

    .line 317
    aget-object v4, v7, v1

    .line 318
    .restart local v4    # "oldName":Ljava/lang/String;
    if-eqz v4, :cond_48

    .line 319
    aget v9, v8, v1

    invoke-virtual {p0, v4, v9}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    goto :goto_48

    .line 321
    .end local v4    # "oldName":Ljava/lang/String;
    :cond_56
    iget-object v7, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 322
    iget-object v8, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 323
    mul-int/lit8 v5, v5, 0x2

    goto :goto_10

    .line 339
    .end local v1    # "i":I
    .restart local v0    # "hash":I
    .restart local v2    # "index":I
    .restart local v3    # "mask":I
    .restart local v4    # "oldName":Ljava/lang/String;
    .restart local v6    # "step":I
    :cond_5d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 344
    add-int v9, v2, v6

    and-int v2, v9, v3

    .line 345
    goto :goto_1e
.end method

.method public getAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "parent"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p2, :cond_b

    move-object v1, v0

    :goto_4
    if-nez p3, :cond_10

    :goto_6
    invoke-virtual {p0, p1, v1, v0}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_10
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getAttributeI(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "parent"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v0

    .line 166
    .local v0, "attr":I
    :goto_4
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_10

    .line 167
    :cond_e
    const/4 v0, 0x0

    .line 170
    .end local v0    # "attr":I
    :cond_f
    return v0

    .line 168
    .restart local v0    # "attr":I
    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p3, :cond_20

    :cond_18
    if-eqz p2, :cond_f

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_f

    .line 171
    :cond_20
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v0

    goto :goto_4
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    if-nez v0, :cond_c

    .line 43
    sget v0, Lgnu/xml/NodeTree;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/xml/NodeTree;->counter:I

    iput v0, p0, Lgnu/xml/NodeTree;->id:I

    .line 44
    :cond_c
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    return v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 68
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public lookupID(Ljava/lang/String;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v6, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 358
    .local v6, "tmpNames":[Ljava/lang/String;
    iget-object v7, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 359
    .local v7, "tmpOffsets":[I
    iget-object v8, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v4, v8

    .line 360
    .local v4, "size":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 361
    .local v0, "hash":I
    add-int/lit8 v2, v4, -0x1

    .line 362
    .local v2, "mask":I
    and-int v1, v0, v2

    .line 364
    .local v1, "index":I
    xor-int/lit8 v8, v0, -0x1

    shl-int/lit8 v8, v8, 0x1

    or-int/lit8 v5, v8, 0x1

    .line 367
    .local v5, "step":I
    :goto_15
    aget-object v3, v6, v1

    .line 368
    .local v3, "oldName":Ljava/lang/String;
    if-nez v3, :cond_1b

    .line 369
    const/4 v8, -0x1

    .line 372
    :goto_1a
    return v8

    .line 370
    :cond_1b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 372
    aget v8, v7, v1

    goto :goto_1a

    .line 374
    :cond_24
    add-int v8, v1, v5

    and-int v1, v8, v2

    .line 375
    goto :goto_15
.end method

.method public makeIDtableIfNeeded()V
    .registers 7

    .prologue
    .line 275
    iget-object v4, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 297
    :cond_4
    return-void

    .line 279
    :cond_5
    const/16 v3, 0x40

    .line 280
    .local v3, "size":I
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 281
    new-array v4, v3, [I

    iput-object v4, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 282
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->endPos()I

    move-result v2

    .line 283
    .local v2, "limit":I
    const/4 v1, 0x0

    .line 286
    .local v1, "ipos":I
    :cond_14
    :goto_14
    sget-object v4, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v2, v5}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 287
    if-eqz v1, :cond_4

    .line 291
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "id"

    invoke-virtual {p0, v1, v4, v5}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "attr":I
    if-eqz v0, :cond_14

    .line 294
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    goto :goto_14
.end method

.method public nextPos(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 21
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_16

    const/4 v1, 0x1

    .line 22
    .local v1, "isAfter":Z
    :goto_6
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    .line 23
    .local v0, "index":I
    const v4, 0x7fffffff

    invoke-virtual {p0, v0, v4}, Lgnu/xml/NodeTree;->nextNodeIndex(II)I

    move-result v2

    .line 24
    .local v2, "next":I
    if-eq v2, v0, :cond_18

    .line 25
    shl-int/lit8 v3, v2, 0x1

    .line 28
    :cond_15
    :goto_15
    return v3

    .end local v0    # "index":I
    .end local v1    # "isAfter":Z
    .end local v2    # "next":I
    :cond_16
    move v1, v3

    .line 21
    goto :goto_6

    .line 26
    .restart local v0    # "index":I
    .restart local v1    # "isAfter":Z
    .restart local v2    # "next":I
    :cond_18
    iget-object v4, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v4, v4

    if-eq v0, v4, :cond_15

    .line 28
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_15
.end method

.method public posFirstChild(I)I
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    const/4 v2, -0x1

    .line 124
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lgnu/xml/NodeTree;->gotoChildrenStart(I)I

    move-result v1

    .line 125
    .local v1, "index":I
    if-gez v1, :cond_c

    .line 131
    :cond_b
    :goto_b
    return v2

    .line 127
    :cond_c
    iget-object v3, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v0, v3, v1

    .line 128
    .local v0, "datum":C
    const v3, 0xf10b

    if-eq v0, v3, :cond_b

    const v3, 0xf10c

    if-eq v0, v3, :cond_b

    const v3, 0xf111

    if-eq v0, v3, :cond_b

    .line 131
    shl-int/lit8 v2, v1, 0x1

    goto :goto_b
.end method

.method public posHasAttributes(I)Z
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lgnu/xml/NodeTree;->gotoAttributesStart(I)I

    move-result v0

    .line 137
    .local v0, "index":I
    if-gez v0, :cond_c

    .line 139
    :cond_b
    :goto_b
    return v1

    :cond_c
    if-ltz v0, :cond_b

    iget-object v2, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v2, v2, v0

    const v3, 0xf109

    if-ne v2, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method public posIsDefaultNamespace(ILjava/lang/String;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Error;

    const-string v1, "posIsDefaultNamespace not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public posLocalName(I)Ljava/lang/String;
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "type":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/xml/XName;

    if-eqz v1, :cond_f

    .line 94
    check-cast v0, Lgnu/xml/XName;

    .end local v0    # "type":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_e
    return-object v1

    .line 95
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1a

    .line 96
    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0    # "type":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 97
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "ipos"    # I
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    .line 108
    .local v0, "kind":I
    const/16 v2, 0x21

    if-eq v0, v2, :cond_10

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "argument must be an element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_10
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/xml/XName;

    if-eqz v2, :cond_1f

    .line 112
    check-cast v1, Lgnu/xml/XName;

    .end local v1    # "type":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lgnu/xml/XName;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_1e
    return-object v2

    .restart local v1    # "type":Ljava/lang/Object;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Error;

    const-string v1, "posLookupPrefix not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public posNamespaceURI(I)Ljava/lang/String;
    .registers 4
    .param p1, "ipos"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "type":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/xml/XName;

    if-eqz v1, :cond_f

    .line 75
    check-cast v0, Lgnu/xml/XName;

    .end local v0    # "type":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_e
    return-object v1

    .line 76
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1a

    .line 77
    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0    # "type":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 78
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public posPrefix(I)Ljava/lang/String;
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 87
    :cond_7
    :goto_7
    return-object v2

    .line 86
    :cond_8
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 87
    .local v0, "colon":I
    if-ltz v0, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public posTarget(I)Ljava/lang/String;
    .registers 5
    .param p1, "ipos"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    .line 193
    .local v0, "index":I
    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf114

    if-eq v1, v2, :cond_15

    .line 194
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "expected process-instruction"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_15
    iget-object v1, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .registers 7
    .param p1, "other"    # Lgnu/lists/AbstractSequence;

    .prologue
    const/4 v3, 0x0

    .line 49
    if-ne p0, p1, :cond_4

    .line 63
    .end local p1    # "other":Lgnu/lists/AbstractSequence;
    :goto_3
    return v3

    .line 56
    .restart local p1    # "other":Lgnu/lists/AbstractSequence;
    :cond_4
    invoke-super {p0, p1}, Lgnu/lists/TreeList;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v0

    .line 57
    .local v0, "comp":I
    if-nez v0, :cond_1b

    instance-of v4, p1, Lgnu/xml/NodeTree;

    if-eqz v4, :cond_1b

    .line 59
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->getId()I

    move-result v1

    .line 60
    .local v1, "id1":I
    check-cast p1, Lgnu/xml/NodeTree;

    .end local p1    # "other":Lgnu/lists/AbstractSequence;
    invoke-virtual {p1}, Lgnu/xml/NodeTree;->getId()I

    move-result v2

    .line 61
    .local v2, "id2":I
    if-ge v1, v2, :cond_1d

    const/4 v0, -0x1

    .end local v1    # "id1":I
    .end local v2    # "id2":I
    :cond_1b
    :goto_1b
    move v3, v0

    .line 63
    goto :goto_3

    .line 61
    .restart local v1    # "id1":I
    .restart local v2    # "id2":I
    :cond_1d
    if-le v1, v2, :cond_21

    const/4 v0, 0x1

    goto :goto_1b

    :cond_21
    move v0, v3

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 257
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 258
    .local v0, "wr":Lgnu/mapping/CharArrayOutPort;
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 259
    .local v1, "xp":Lgnu/xml/XMLPrinter;
    invoke-virtual {p0, v1}, Lgnu/xml/NodeTree;->consume(Lgnu/lists/Consumer;)V

    .line 260
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 261
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public typedValue(I)Ljava/lang/Object;
    .registers 6
    .param p1, "ipos"    # I

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    .line 183
    .local v0, "kind":I
    const/16 v3, 0x25

    if-eq v0, v3, :cond_1c

    const/16 v3, 0x24

    if-ne v0, v3, :cond_1d

    .line 186
    .end local v2    # "str":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-object v2

    .restart local v2    # "str":Ljava/lang/String;
    :cond_1d
    new-instance v3, Lgnu/kawa/xml/UntypedAtomic;

    invoke-direct {v3, v2}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1c
.end method
