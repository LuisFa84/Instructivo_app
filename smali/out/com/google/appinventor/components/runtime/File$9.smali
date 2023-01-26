.class Lcom/google/appinventor/components/runtime/File$9;
.super Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "append"    # Z
    .param p8, "async"    # Z

    .prologue
    .line 589
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->val$filename:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .registers 9
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 625
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->onError(Ljava/io/IOException;)V

    .line 626
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$9;->method:Ljava/lang/String;

    const/16 v3, 0x838

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 627
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$9;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 626
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 628
    return-void
.end method

.method public process(Ljava/io/OutputStreamWriter;)Z
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$9$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$9$1;-><init>(Lcom/google/appinventor/components/runtime/File$9;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 12
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .prologue
    .line 592
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v1

    .line 593
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 594
    const/4 v2, 0x0

    .line 596
    .local v2, "success":Z
    :try_start_d
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 597
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_2c

    move-result v2

    .line 601
    :goto_14
    if-nez v2, :cond_4a

    .line 602
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File$9;->method:Ljava/lang/String;

    const/16 v6, 0x837

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 603
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 602
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 608
    .end local v2    # "success":Z
    :goto_2b
    return-void

    .line 598
    .restart local v2    # "success":Z
    :catch_2c
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "FileComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 607
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "success":Z
    :cond_4a
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    goto :goto_2b
.end method
