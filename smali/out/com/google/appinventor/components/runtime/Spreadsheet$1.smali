.class Lcom/google/appinventor/components/runtime/Spreadsheet$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v1, "ErrorOccurred"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$errorMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 326
    return-void
.end method
