.class public abstract Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "SingleFileOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field protected final file:Ljava/io/File;

.field protected final fileName:Ljava/lang/String;

.field protected final resolvedPath:Ljava/lang/String;

.field protected final scope:Lcom/google/appinventor/components/common/FileScope;

.field protected final scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .registers 10
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p5, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p6, "async"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 70
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 71
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolvedPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V
    .registers 15
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .prologue
    .line 90
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .registers 11
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p7, "async"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 46
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 47
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 48
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v0, p5, p4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolvedPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 99
    :goto_10
    return-object v1

    :cond_11
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_10
.end method

.method public final getScope()Lcom/google/appinventor/components/common/FileScope;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public final getScopedFile()Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    return-object v0
.end method

.method public final isAsset()Z
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected needsExternalStorage()Z
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final needsPermission()Z
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected performOperation()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    .line 154
    return-void
.end method

.method protected abstract processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
.end method
