.class Lcom/google/appinventor/components/runtime/ReplForm$2;
.super Ljava/lang/Object;
.source "ReplForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->closeApplicationFromBlocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ReplForm;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$2;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 219
    const-string v0, "Closing forms is not currently supported during development."

    .line 220
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$2;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 221
    return-void
.end method
