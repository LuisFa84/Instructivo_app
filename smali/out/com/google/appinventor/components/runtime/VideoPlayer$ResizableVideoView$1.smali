.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

.field final synthetic val$specheight:I

.field final synthetic val$specwidth:I

.field final synthetic val$trycount:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V
    .registers 5
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->this$1:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$specwidth:I

    iput p3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$specheight:I

    iput p4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$trycount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->this$1:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$specwidth:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$specheight:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;->val$trycount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->access$000(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    .line 726
    return-void
.end method
