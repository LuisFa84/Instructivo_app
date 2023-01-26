.class Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$10;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$10;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotCellData(Ljava/lang/String;)V

    .line 1279
    return-void
.end method
