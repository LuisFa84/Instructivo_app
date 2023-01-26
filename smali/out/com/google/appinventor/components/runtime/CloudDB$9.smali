.class Lcom/google/appinventor/components/runtime/CloudDB$9;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1129
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v2

    .line 1130
    .local v2, "jedis":Lredis/clients/jedis/Jedis;
    const/4 v4, 0x0

    .line 1132
    .local v4, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lredis/clients/jedis/Jedis;->keys(Ljava/lang/String;)Ljava/util/Set;
    :try_end_23
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_7 .. :try_end_23} :catch_5d

    move-result-object v4

    .line 1138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1140
    .local v3, "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6e

    .line 1141
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1133
    .end local v1    # "i":I
    .end local v3    # "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5d
    move-exception v0

    .line 1134
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1135
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 1150
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :goto_6d
    return-void

    .line 1144
    .restart local v1    # "i":I
    .restart local v3    # "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6e
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$900(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/CloudDB$9$1;

    invoke-direct {v6, p0, v3}, Lcom/google/appinventor/components/runtime/CloudDB$9$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$9;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6d
.end method
