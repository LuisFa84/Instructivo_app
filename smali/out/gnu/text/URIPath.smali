.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "URIPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field final uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    iput-object p1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .registers 3
    .param p0, "path"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v1, p0, Lgnu/text/URIPath;

    if-eqz v1, :cond_7

    .line 35
    check-cast p0, Lgnu/text/URIPath;

    .line 49
    .end local p0    # "path":Ljava/lang/Object;
    .local v0, "str":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 36
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Ljava/net/URL;

    if-eqz v1, :cond_12

    .line 37
    check-cast p0, Ljava/net/URL;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object p0

    goto :goto_6

    .line 39
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_12
    instance-of v1, p0, Ljava/net/URI;

    if-eqz v1, :cond_1d

    .line 40
    check-cast p0, Ljava/net/URI;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    goto :goto_6

    .line 43
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_1d
    instance-of v1, p0, Ljava/io/File;

    if-nez v1, :cond_29

    instance-of v1, p0, Lgnu/text/Path;

    if-nez v1, :cond_29

    instance-of v1, p0, Lgnu/lists/FString;

    if-eqz v1, :cond_32

    .line 44
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "str":Ljava/lang/String;
    :goto_2d
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p0

    goto :goto_6

    .line 45
    .end local v0    # "str":Ljava/lang/String;
    :cond_32
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3a

    move-object v0, p0

    .line 46
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_2d

    .line 48
    .end local v0    # "str":Ljava/lang/String;
    :cond_3a
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .registers 18
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # C

    .prologue
    .line 323
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v12, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 325
    .local v8, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_b
    if-ge v6, v8, :cond_121

    .line 327
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 329
    .local v3, "ch":I
    const v13, 0xd800

    if-lt v3, v13, :cond_3a

    const v13, 0xdc00

    if-ge v3, v13, :cond_3a

    if-ge v5, v8, :cond_3a

    .line 330
    const v13, 0xd800

    sub-int v13, v3, v13

    mul-int/lit16 v13, v13, 0x400

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xdc00

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    const/high16 v14, 0x10000

    add-int v3, v13, v14

    move v5, v6

    .line 332
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_3a
    const/16 v13, 0x48

    move/from16 v0, p1

    if-ne v0, v13, :cond_4e

    const/16 v13, 0x20

    if-lt v3, v13, :cond_c8

    const/16 v13, 0x7e

    if-gt v3, v13, :cond_c8

    .line 342
    :cond_48
    int-to-char v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4c
    move v6, v5

    .line 381
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_b

    .line 332
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_4e
    const/16 v13, 0x61

    if-lt v3, v13, :cond_56

    const/16 v13, 0x7a

    if-le v3, v13, :cond_48

    :cond_56
    const/16 v13, 0x41

    if-lt v3, v13, :cond_5e

    const/16 v13, 0x5a

    if-le v3, v13, :cond_48

    :cond_5e
    const/16 v13, 0x30

    if-lt v3, v13, :cond_66

    const/16 v13, 0x39

    if-le v3, v13, :cond_48

    :cond_66
    const/16 v13, 0x2d

    if-eq v3, v13, :cond_48

    const/16 v13, 0x5f

    if-eq v3, v13, :cond_48

    const/16 v13, 0x2e

    if-eq v3, v13, :cond_48

    const/16 v13, 0x7e

    if-eq v3, v13, :cond_48

    const/16 v13, 0x49

    move/from16 v0, p1

    if-ne v0, v13, :cond_c8

    const/16 v13, 0x3b

    if-eq v3, v13, :cond_48

    const/16 v13, 0x2f

    if-eq v3, v13, :cond_48

    const/16 v13, 0x3f

    if-eq v3, v13, :cond_48

    const/16 v13, 0x3a

    if-eq v3, v13, :cond_48

    const/16 v13, 0x2a

    if-eq v3, v13, :cond_48

    const/16 v13, 0x27

    if-eq v3, v13, :cond_48

    const/16 v13, 0x28

    if-eq v3, v13, :cond_48

    const/16 v13, 0x29

    if-eq v3, v13, :cond_48

    const/16 v13, 0x40

    if-eq v3, v13, :cond_48

    const/16 v13, 0x26

    if-eq v3, v13, :cond_48

    const/16 v13, 0x3d

    if-eq v3, v13, :cond_48

    const/16 v13, 0x2b

    if-eq v3, v13, :cond_48

    const/16 v13, 0x24

    if-eq v3, v13, :cond_48

    const/16 v13, 0x2c

    if-eq v3, v13, :cond_48

    const/16 v13, 0x5b

    if-eq v3, v13, :cond_48

    const/16 v13, 0x5d

    if-eq v3, v13, :cond_48

    const/16 v13, 0x23

    if-eq v3, v13, :cond_48

    const/16 v13, 0x21

    if-eq v3, v13, :cond_48

    const/16 v13, 0x25

    if-eq v3, v13, :cond_48

    .line 345
    :cond_c8
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 346
    .local v11, "pos":I
    const/4 v9, 0x0

    .line 347
    .local v9, "nbytes":I
    const/16 v13, 0x80

    if-ge v3, v13, :cond_fb

    const/4 v10, 0x1

    .line 354
    .local v10, "needed":I
    :cond_d2
    :goto_d2
    if-nez v9, :cond_109

    const/4 v1, 0x7

    .line 356
    .local v1, "availbits":I
    :goto_d5
    const/4 v13, 0x1

    shl-int/2addr v13, v1

    if-ge v3, v13, :cond_10c

    .line 359
    move v2, v3

    .line 360
    .local v2, "b":I
    if-lez v9, :cond_e3

    .line 361
    const v13, 0xff80

    shr-int/2addr v13, v9

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v2, v13

    .line 362
    :cond_e3
    const/4 v3, 0x0

    .line 369
    :goto_e4
    add-int/lit8 v9, v9, 0x1

    .line 370
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_e7
    const/4 v13, 0x1

    if-gt v7, v13, :cond_118

    .line 372
    and-int/lit8 v4, v2, 0xf

    .line 373
    .local v4, "hex":I
    const/16 v13, 0x9

    if-gt v4, v13, :cond_113

    add-int/lit8 v13, v4, 0x30

    :goto_f2
    int-to-char v13, v13

    invoke-virtual {v12, v11, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 375
    shr-int/lit8 v2, v2, 0x4

    .line 370
    add-int/lit8 v7, v7, 0x1

    goto :goto_e7

    .line 347
    .end local v1    # "availbits":I
    .end local v2    # "b":I
    .end local v4    # "hex":I
    .end local v7    # "j":I
    .end local v10    # "needed":I
    :cond_fb
    const/16 v13, 0x800

    if-ge v3, v13, :cond_101

    const/4 v10, 0x2

    goto :goto_d2

    :cond_101
    const/high16 v13, 0x10000

    if-ge v3, v13, :cond_107

    const/4 v10, 0x3

    goto :goto_d2

    :cond_107
    const/4 v10, 0x4

    goto :goto_d2

    .line 354
    .restart local v10    # "needed":I
    :cond_109
    rsub-int/lit8 v1, v9, 0x6

    goto :goto_d5

    .line 366
    .restart local v1    # "availbits":I
    :cond_10c
    and-int/lit8 v13, v3, 0x3f

    or-int/lit16 v2, v13, 0x80

    .line 367
    .restart local v2    # "b":I
    shr-int/lit8 v3, v3, 0x6

    goto :goto_e4

    .line 373
    .restart local v4    # "hex":I
    .restart local v7    # "j":I
    :cond_113
    add-int/lit8 v13, v4, -0xa

    add-int/lit8 v13, v13, 0x41

    goto :goto_f2

    .line 377
    .end local v4    # "hex":I
    :cond_118
    const/16 v13, 0x25

    invoke-virtual {v12, v11, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 379
    if-nez v3, :cond_d2

    goto/16 :goto_4c

    .line 382
    .end local v1    # "availbits":I
    .end local v2    # "b":I
    .end local v3    # "ch":I
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v9    # "nbytes":I
    .end local v10    # "needed":I
    .end local v11    # "pos":I
    .restart local v6    # "i":I
    :cond_121
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p0}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    .line 55
    .local v0, "path":Lgnu/text/URIPath;
    if-nez v0, :cond_12

    .line 56
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "URI"

    invoke-direct {v2, v1, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_12
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lgnu/text/URIStringPath;

    new-instance v2, Ljava/net/URI;

    const/16 v3, 0x49

    invoke-static {p0, v3}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lgnu/text/URIStringPath;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 72
    :catch_11
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .registers 2
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 62
    new-instance v0, Lgnu/text/URIPath;

    invoke-direct {v0, p0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .registers 4
    .param p1, "path"    # Lgnu/text/URIPath;

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lgnu/text/URIPath;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 202
    instance-of v0, p1, Lgnu/text/URIPath;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    check-cast p1, Lgnu/text/URIPath;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public exists()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    :try_start_2
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 95
    .local v0, "conn":Ljava/net/URLConnection;
    instance-of v4, v0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_1b

    .line 96
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0    # "conn":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_19

    .line 103
    :cond_18
    :goto_18
    return v2

    :cond_19
    move v2, v3

    .line 96
    goto :goto_18

    .line 99
    .restart local v0    # "conn":Ljava/net/URLConnection;
    :cond_1b
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_27

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    move v2, v3

    goto :goto_18

    .line 101
    .end local v0    # "conn":Ljava/net/URLConnection;
    :catch_27
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    move v2, v3

    .line 103
    goto :goto_18
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .registers 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 309
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 310
    .local v0, "norm":Ljava/net/URI;
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    if-ne v0, v1, :cond_11

    .line 318
    .end local v0    # "norm":Ljava/net/URI;
    .end local p0    # "this":Lgnu/text/URIPath;
    :goto_10
    return-object p0

    .line 312
    .restart local v0    # "norm":Ljava/net/URI;
    .restart local p0    # "this":Lgnu/text/URIPath;
    :cond_11
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    goto :goto_10

    .line 318
    .end local v0    # "norm":Ljava/net/URI;
    :cond_16
    invoke-virtual {p0}, Lgnu/text/URIPath;->getAbsolute()Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object p0

    goto :goto_10
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .registers 10
    .param p1, "rstr"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 128
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v3

    .line 185
    :goto_e
    return-object v3

    .line 129
    :cond_f
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 130
    .local v1, "fileSep":C
    if-eq v1, v7, :cond_46

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_42

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_2c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_42

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_42

    .line 137
    :cond_38
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v3

    goto :goto_e

    .line 139
    :cond_42
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_46
    :try_start_46
    iget-object v3, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    new-instance v4, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_52} :catch_58

    move-result-object v2

    .line 185
    .local v2, "resolved":Ljava/net/URI;
    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v3

    goto :goto_e

    .line 147
    .end local v2    # "resolved":Ljava/net/URI;
    :catch_58
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-object v0
.end method
