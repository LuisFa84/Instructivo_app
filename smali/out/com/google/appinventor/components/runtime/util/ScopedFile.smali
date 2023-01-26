.class public Lcom/google/appinventor/components/runtime/util/ScopedFile;
.super Ljava/lang/Object;
.source "ScopedFile.java"


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V
    .registers 4
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 20
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 21
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_12
    :goto_12
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    .line 30
    return-void

    .line 22
    :cond_17
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_26

    .line 24
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_12

    .line 25
    :cond_26
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-eq p1, v0, :cond_12

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_12
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    if-eqz v2, :cond_e

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 49
    .local v0, "other":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    if-eq v2, v3, :cond_f

    .line 60
    .end local v0    # "other":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    :cond_e
    :goto_e
    return v1

    .line 52
    .restart local v0    # "other":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    :cond_f
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 53
    const/4 v1, 0x1

    goto :goto_e

    .line 54
    :cond_19
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 57
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_e
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lcom/google/appinventor/components/common/FileScope;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/FileScope;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;
    .registers 5
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScopedFile{scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
