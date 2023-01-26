.class Lcom/google/appinventor/components/runtime/Image$3;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->Picture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Image;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Image;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$3;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Image$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 156
    if-eqz p2, :cond_a

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image$3;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Image;->Picture(Ljava/lang/String;)V

    .line 161
    :goto_9
    return-void

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image$3;->this$0:Lcom/google/appinventor/components/runtime/Image;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Image$3;->this$0:Lcom/google/appinventor/components/runtime/Image;

    const-string v2, "Picture"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
