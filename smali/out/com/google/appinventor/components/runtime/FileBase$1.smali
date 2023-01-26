.class Lcom/google/appinventor/components/runtime/FileBase$1;
.super Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;
.source "FileBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FileBase;->readFromFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FileBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FileBase;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V
    .registers 15
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FileBase;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "async"    # Z

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->this$0:Lcom/google/appinventor/components/runtime/FileBase;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .registers 9
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 113
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1f

    .line 114
    const-string v0, "FileComponent"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->this$0:Lcom/google/appinventor/components/runtime/FileBase;

    const-string v2, "ReadFrom"

    const/16 v3, 0x835

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->fileName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 122
    :goto_1e
    return-void

    .line 118
    :cond_1f
    const-string v0, "FileComponent"

    const-string v1, "IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->this$0:Lcom/google/appinventor/components/runtime/FileBase;

    const-string v2, "ReadFrom"

    const/16 v3, 0x836

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->fileName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public process(Ljava/lang/String;)Z
    .registers 4
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FileBase$1;->this$0:Lcom/google/appinventor/components/runtime/FileBase;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/FileBase;->afterRead(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method
