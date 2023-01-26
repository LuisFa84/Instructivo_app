.class Lcom/google/appinventor/components/runtime/File$5;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 13
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 353
    .local v2, "out":Ljava/io/OutputStream;
    aget-object v4, p1, v8

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 354
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 355
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "CopyFile"

    const/16 v7, 0x83c

    new-array v8, v8, [Ljava/lang/Object;

    .line 356
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 355
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 357
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 375
    :goto_3d
    return-void

    .line 361
    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v1

    .line 362
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;

    move-result-object v2

    .line 363
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_57} :catch_6b
    .catchall {:try_start_3e .. :try_end_57} :catchall_9d

    .line 371
    const-string v4, "FileComponent"

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 372
    const-string v4, "FileComponent"

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 374
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    goto :goto_3d

    .line 364
    :catch_6b
    move-exception v0

    .line 365
    .local v0, "e":Ljava/io/IOException;
    :try_start_6c
    const-string v4, "FileComponent"

    const-string v5, "Unable to copy file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v6, "CopyFile"

    const/16 v7, 0x642

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, p1, v10

    .line 367
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 366
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 368
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v4, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_6c .. :try_end_92} :catchall_9d

    .line 371
    const-string v4, "FileComponent"

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 372
    const-string v4, "FileComponent"

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_3d

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_9d
    move-exception v4

    const-string v5, "FileComponent"

    invoke-static {v5, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 372
    const-string v5, "FileComponent"

    invoke-static {v5, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v4
.end method
