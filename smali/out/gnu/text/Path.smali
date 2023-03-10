.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .registers 3
    .param p0, "path"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v1, p0, Lgnu/text/Path;

    if-eqz v1, :cond_7

    .line 54
    check-cast p0, Lgnu/text/Path;

    .line 73
    .end local p0    # "path":Ljava/lang/Object;
    .local v0, "str":Ljava/lang/String;
    :goto_6
    return-object p0

    .line 55
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_7
    instance-of v1, p0, Ljava/net/URL;

    if-eqz v1, :cond_12

    .line 56
    check-cast p0, Ljava/net/URL;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object p0

    goto :goto_6

    .line 58
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_12
    instance-of v1, p0, Ljava/net/URI;

    if-eqz v1, :cond_1d

    .line 59
    check-cast p0, Ljava/net/URI;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    goto :goto_6

    .line 61
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_1d
    instance-of v1, p0, Ljava/io/File;

    if-eqz v1, :cond_28

    .line 62
    check-cast p0, Ljava/io/File;

    .end local p0    # "path":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object p0

    goto :goto_6

    .line 64
    .restart local p0    # "path":Ljava/lang/Object;
    :cond_28
    instance-of v1, p0, Lgnu/lists/FString;

    if-eqz v1, :cond_3b

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "str":Ljava/lang/String;
    :goto_30
    invoke-static {v0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 71
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p0

    goto :goto_6

    .line 66
    .end local v0    # "str":Ljava/lang/String;
    :cond_3b
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_41

    .line 67
    const/4 p0, 0x0

    goto :goto_6

    :cond_41
    move-object v0, p0

    .line 69
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_30

    .line 73
    :cond_45
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object p0

    goto :goto_6
.end method

.method public static currentPath()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 35
    sget-object v1, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Path;

    .line 36
    .local v0, "path":Lgnu/text/Path;
    if-eqz v0, :cond_b

    .line 39
    .end local v0    # "path":Lgnu/text/Path;
    :goto_a
    return-object v0

    .restart local v0    # "path":Lgnu/text/Path;
    :cond_b
    sget-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    goto :goto_a
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 2
    .param p0, "uri"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2f

    .line 329
    move-object v1, p1

    .line 330
    .local v1, "baseStr":Ljava/lang/String;
    move-object v7, p0

    .line 332
    .local v7, "inStr":Ljava/lang/String;
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 336
    .local v0, "baseLen":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 337
    .local v6, "inLen":I
    const/4 v5, 0x0

    .line 338
    .local v5, "i":I
    const/4 v9, 0x0

    .line 339
    .local v9, "sl":I
    const/4 v4, 0x0

    .line 340
    .local v4, "colon":I
    :goto_2c
    if-ge v5, v0, :cond_3a

    if-ge v5, v6, :cond_3a

    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 343
    .local v2, "cb":C
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 344
    .local v3, "ci":C
    if-eq v2, v3, :cond_73

    .line 351
    .end local v2    # "cb":C
    .end local v3    # "ci":C
    :cond_3a
    if-lez v4, :cond_85

    add-int/lit8 v10, v4, 0x2

    if-gt v9, v10, :cond_4c

    add-int/lit8 v10, v4, 0x2

    if-le v0, v10, :cond_4c

    add-int/lit8 v10, v4, 0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v11, :cond_85

    .line 360
    :cond_4c
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v8, "sbuf":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    :cond_63
    :goto_63
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7e

    .line 372
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_63

    .line 373
    const-string v10, "../"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 346
    .end local v8    # "sbuf":Ljava/lang/StringBuilder;
    .restart local v2    # "cb":C
    .restart local v3    # "ci":C
    :cond_73
    if-ne v2, v11, :cond_76

    .line 347
    move v9, v5

    .line 348
    :cond_76
    const/16 v10, 0x3a

    if-ne v2, v10, :cond_7b

    .line 349
    move v4, v5

    .line 340
    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 374
    .end local v2    # "cb":C
    .end local v3    # "ci":C
    .restart local v8    # "sbuf":Ljava/lang/StringBuilder;
    :cond_7e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v8    # "sbuf":Ljava/lang/StringBuilder;
    .end local p0    # "in":Ljava/lang/String;
    :cond_85
    return-object p0
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .registers 2
    .param p0, "path"    # Lgnu/text/Path;

    .prologue
    .line 45
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 91
    .local v0, "cur":Lgnu/text/Path;
    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    .line 92
    .local v2, "path":Lgnu/text/Path;
    invoke-virtual {v2}, Lgnu/text/Path;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 93
    invoke-virtual {v2}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 96
    .end local v0    # "cur":Lgnu/text/Path;
    .end local v2    # "path":Lgnu/text/Path;
    :goto_18
    return-object v3

    .line 94
    .restart local v0    # "cur":Lgnu/text/Path;
    .restart local v2    # "path":Lgnu/text/Path;
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    .end local v0    # "cur":Lgnu/text/Path;
    .end local v2    # "path":Lgnu/text/Path;
    :cond_1d
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_18

    .line 98
    :catch_23
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_30

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .local v0, "ch":C
    const/16 v4, 0x3a

    if-ne v0, v4, :cond_11

    .line 123
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :goto_10
    return v1

    .line 118
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_11
    if-nez v1, :cond_1b

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_19
    move v1, v3

    .line 121
    goto :goto_10

    .line 118
    :cond_1b
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2d

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_19

    .line 113
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0    # "ch":C
    :cond_30
    move v1, v3

    .line 123
    goto :goto_10
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "ulen":I
    if-ne v1, v3, :cond_24

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_24

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, "drive":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1a

    const/16 v4, 0x7a

    if-le v0, v4, :cond_23

    :cond_1a
    const/16 v4, 0x41

    if-lt v0, v4, :cond_22

    const/16 v4, 0x5a

    if-le v0, v4, :cond_23

    :cond_22
    move v2, v3

    .line 138
    .end local v0    # "drive":C
    :cond_23
    :goto_23
    return v2

    :cond_24
    if-lez v1, :cond_28

    :goto_26
    move v2, v3

    goto :goto_23

    :cond_28
    move v3, v2

    goto :goto_26
.end method

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {p0}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 79
    .local v0, "path":Lgnu/text/Path;
    if-nez v0, :cond_12

    .line 80
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "path"

    invoke-direct {v2, v1, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_12
    return-object v0
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAbsolute()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 385
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_b

    .line 386
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    .line 388
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_a
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 174
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    .end local p0    # "this":Lgnu/text/Path;
    :goto_6
    return-object p0

    .restart local p0    # "this":Lgnu/text/Path;
    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    goto :goto_6
.end method

.method public getExtension()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "p":Ljava/lang/String;
    if-nez v3, :cond_8

    .line 255
    :cond_7
    :goto_7
    return-object v5

    .line 238
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, "len":I
    move v1, v2

    .line 241
    .local v1, "i":I
    :cond_d
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_7

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, "c":C
    const/4 v4, 0x0

    .line 245
    .local v4, "sawDot":Z
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_21

    .line 247
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    const/4 v4, 0x1

    .line 250
    :cond_21
    const/16 v6, 0x2f

    if-eq v0, v6, :cond_7

    instance-of v6, p0, Lgnu/text/FilePath;

    if-eqz v6, :cond_2d

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-eq v0, v6, :cond_7

    .line 254
    :cond_2d
    if-eqz v4, :cond_d

    .line 255
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .registers 7

    .prologue
    .line 211
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "p":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 213
    const/4 v5, 0x0

    .line 228
    :goto_7
    return-object v5

    .line 214
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .local v3, "len":I
    move v1, v3

    .line 216
    .local v1, "end":I
    move v2, v3

    .line 218
    .local v2, "i":I
    :cond_e
    :goto_e
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_15

    .line 219
    const-string v5, ""

    goto :goto_7

    .line 220
    :cond_15
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, "c":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_25

    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_e

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v0, v5, :cond_e

    .line 225
    :cond_25
    add-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_2b

    .line 226
    move v1, v2

    goto :goto_e

    .line 228
    :cond_2b
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ".."

    :goto_8
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_8
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .registers 5

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    .local v1, "len":I
    if-lez v1, :cond_1a

    .line 153
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, "last":C
    const/16 v3, 0x2f

    if-eq v0, v3, :cond_18

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v0, v3, :cond_1a

    .line 155
    :cond_18
    const/4 v3, 0x1

    .line 157
    .end local v0    # "last":C
    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 3
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .registers 3
    .param p1, "relative"    # Lgnu/text/Path;

    .prologue
    .line 289
    invoke-virtual {p1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    .end local p1    # "relative":Lgnu/text/Path;
    :goto_6
    return-object p1

    .restart local p1    # "relative":Lgnu/text/Path;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p1

    goto :goto_6
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
