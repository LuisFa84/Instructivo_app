.class Lcom/google/appinventor/components/runtime/File$1;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .registers 19
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p8, "async"    # Z

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$1$1;-><init>(Lcom/google/appinventor/components/runtime/File$1;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 7
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    .line 197
    :goto_17
    return-void

    .line 187
    :cond_18
    const/16 v1, 0x83d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    goto :goto_17

    .line 190
    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 191
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    goto :goto_17

    .line 194
    :cond_30
    const/16 v1, 0x83c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    goto :goto_17
.end method
