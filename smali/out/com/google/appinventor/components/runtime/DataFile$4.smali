.class Lcom/google/appinventor/components/runtime/DataFile$4;
.super Ljava/lang/Object;
.source "DataFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
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

.field final synthetic val$columns:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6

    .prologue
    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v3, "resultingColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v2, v4, :cond_20

    .line 285
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v4, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "columnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    invoke-virtual {v4, v1}, Lcom/google/appinventor/components/runtime/DataFile;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 287
    .local v0, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 291
    .end local v0    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_20
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataFile$4;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
