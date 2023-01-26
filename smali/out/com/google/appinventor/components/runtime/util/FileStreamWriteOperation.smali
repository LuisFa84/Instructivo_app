.class public abstract Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "FileStreamWriteOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V
    .registers 8
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "append"    # Z
    .param p7, "async"    # Z

    .prologue
    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method protected final process(Ljava/io/OutputStream;)Z
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "close":Z
    const/4 v1, 0x0

    .line 49
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_13

    .line 50
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    :try_start_7
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStreamWriter;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1c

    move-result v0

    .line 52
    if-eqz v0, :cond_12

    .line 53
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 56
    :cond_12
    return v0

    .line 52
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v1    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_13
    move-exception v3

    :goto_14
    if-eqz v0, :cond_1b

    .line 53
    sget-object v4, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    :cond_1b
    throw v3

    .line 52
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1c
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v1    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_14
.end method

.method protected abstract process(Ljava/io/OutputStreamWriter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
