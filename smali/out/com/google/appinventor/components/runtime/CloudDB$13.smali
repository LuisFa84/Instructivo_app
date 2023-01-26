.class Lcom/google/appinventor/components/runtime/CloudDB$13;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7

    .prologue
    .line 1498
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->val$key:Ljava/lang/String;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    .line 1501
    .local v1, "valueReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1504
    .local v2, "valueString":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1507
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1e

    .line 1508
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1512
    .end local v0    # "value":Ljava/lang/Object;
    :goto_1d
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1e
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    goto :goto_1d
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB$13;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
