.class Lcom/google/appinventor/components/runtime/CloudDB$7;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->ClearTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1081
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 1082
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lredis/clients/jedis/Jedis;->del(Ljava/lang/String;)Ljava/lang/Long;

    .line 1084
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    const-string v4, "ClearTag"

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1090
    .end local v1    # "jedis":Lredis/clients/jedis/Jedis;
    :goto_39
    return-void

    .line 1086
    :catch_3a
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_39
.end method
