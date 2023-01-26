.class Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "async"    # Z

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/List;
    .registers 3
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
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected needsExternalStorage()Z
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$500(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v0

    return v0
.end method

.method protected needsPermission()Z
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected performOperation()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 311
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$200(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v5

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_85

    .line 313
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5, v4}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 321
    .end local v4    # "perm":Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->needsPermission()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 322
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " need permissions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v7, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .line 324
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$100(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v5

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v7, p0, v8, v9, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 331
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v5

    .line 336
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_85
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$300(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-array v6, v10, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 337
    .local v2, "filesArray":[Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->access$400(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    .line 339
    .local v0, "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :try_start_ad
    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;->call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_a1

    .line 340
    :catch_b1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 344
    .end local v0    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b8
    return-void
.end method
