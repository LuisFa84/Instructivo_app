.class Lcom/google/appinventor/components/runtime/Twitter$2$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$2;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$2$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$2$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$2;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Twitter;->IsAuthorized()V

    .line 373
    return-void
.end method
