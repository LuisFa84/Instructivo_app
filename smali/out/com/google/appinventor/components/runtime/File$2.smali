.class Lcom/google/appinventor/components/runtime/File$2;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$recursive:Z

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$recursive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 7
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    .line 235
    const/4 v2, 0x0

    :try_start_1
    aget-object v1, p1, v2

    .line 236
    .local v1, "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/File$2;->val$recursive:Z

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->removeDirectory(Ljava/io/File;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 240
    .end local v1    # "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    :goto_1a
    return-void

    .line 237
    :catch_1b
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
