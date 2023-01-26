.class public Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
.super Ljava/lang/Object;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private askPermission:Z

.field private async:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;",
            ">;"
        }
    .end annotation
.end field

.field private component:Lcom/google/appinventor/components/runtime/Component;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private method:Ljava/lang/String;

.field private final neededPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needsExternalStorage:Z

.field private final scopedFiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/appinventor/components/runtime/util/ScopedFile;",
            "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    .line 220
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 222
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .registers 6
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    .line 220
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 222
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 237
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 238
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    return v0
.end method


# virtual methods
.method public addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 3
    .param p1, "command"    # Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-object p0
.end method

.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 14
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .prologue
    .line 265
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    .line 266
    .local v0, "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v3, v4, :cond_2c

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-eq p3, v3, :cond_2c

    .line 267
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    const/16 v6, 0x83a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 268
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 267
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 269
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v3

    .line 271
    :cond_2c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "resolvedFileName":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 275
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v2, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "permission":Ljava/lang/String;
    if-eqz v1, :cond_6f

    .line 277
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_6f
    return-object p0
.end method

.method public build()Lcom/google/appinventor/components/runtime/util/FileOperation;
    .registers 7

    .prologue
    .line 303
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 2
    .param p1, "askPermission"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 294
    return-object p0
.end method

.method public setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 2
    .param p1, "async"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 289
    return-object p0
.end method

.method public setComponent(Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 248
    return-object p0
.end method

.method public setForm(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 2
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 243
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .registers 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    .line 253
    return-object p0
.end method
