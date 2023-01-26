.class Lcom/google/appinventor/components/runtime/CloudDB$2;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
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
    .line 665
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 667
    const/4 v5, 0x0

    .line 668
    .local v5, "pendingValueList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 669
    .local v3, "pendingTag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 676
    .local v4, "pendingValue":Ljava/lang/String;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_66

    .line 680
    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 681
    .local v6, "size":I
    if-nez v6, :cond_53

    .line 685
    const/4 v9, 0x0

    .line 695
    .local v9, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :goto_1b
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_63

    .line 699
    if-nez v9, :cond_84

    .line 701
    if-eqz v3, :cond_52

    .line 702
    :try_start_20
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "jsonValueList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v11, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v12, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v2, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    .line 707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v11, "StoreValue"

    invoke-virtual {v10, v3, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_20 .. :try_end_52} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_52} :catch_66

    .line 755
    .end local v2    # "jsonValueList":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :cond_52
    :goto_52
    return-void

    .line 690
    .restart local v6    # "size":I
    :cond_53
    :try_start_53
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    .restart local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    goto :goto_1b

    .line 695
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catchall_63
    move-exception v10

    monitor-exit v11
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_63

    :try_start_65
    throw v10
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 752
    :catch_66
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CloudDB"

    const-string v11, "Exception in store worker!"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 709
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "size":I
    .restart local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catch_6f
    move-exception v1

    .line 710
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisException;
    :try_start_70
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_52

    .line 716
    .end local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :cond_84
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getValueList()Lorg/json/JSONArray;

    move-result-object v8

    .line 718
    .local v8, "valueList":Lorg/json/JSONArray;
    if-eqz v7, :cond_90

    if-nez v8, :cond_90

    .line 727
    :cond_90
    if-nez v3, :cond_9b

    .line 728
    move-object v3, v7

    .line 729
    move-object v5, v8

    .line 730
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 731
    :cond_9b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 732
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a9} :catch_66

    goto/16 :goto_3

    .line 736
    :cond_ab
    :try_start_ab
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    .restart local v2    # "jsonValueList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v11, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v12, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v2, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_d4
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_ab .. :try_end_d4} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_d4} :catch_66

    .line 747
    move-object v3, v7

    .line 748
    move-object v5, v8

    .line 749
    const/4 v10, 0x0

    :try_start_d7
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 741
    .end local v2    # "jsonValueList":Ljava/lang/String;
    :catch_dd
    move-exception v1

    .line 742
    .restart local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_fc} :catch_66

    goto/16 :goto_52
.end method
