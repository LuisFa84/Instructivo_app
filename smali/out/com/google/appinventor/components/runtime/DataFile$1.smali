.class Lcom/google/appinventor/components/runtime/DataFile$1;
.super Ljava/lang/Object;
.source "DataFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataFile;->Rows()Lcom/google/appinventor/components/runtime/util/YailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataFile;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataFile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataFile$1;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile$1;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataFile;->access$000(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataFile$1;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method