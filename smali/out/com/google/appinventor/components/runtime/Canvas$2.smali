.class Lcom/google/appinventor/components/runtime/Canvas$2;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;

.field final synthetic val$format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZLcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 18
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p6, "append"    # Z
    .param p7, "async"    # Z

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZ)V

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
    .line 1695
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas$2;->process(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .registers 6
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$1700(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$1700(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1699
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_16
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 1700
    const/4 v1, 0x1

    return v1

    .line 1698
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_29
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$2;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$1700(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1800(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16
.end method
