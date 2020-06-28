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
    .line 656
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 658
    const/4 v5, 0x0

    .line 659
    .local v5, "pendingValueList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 660
    .local v3, "pendingTag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 667
    .local v4, "pendingValue":Ljava/lang/String;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_5d

    .line 671
    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 672
    .local v6, "size":I
    if-nez v6, :cond_4a

    .line 676
    const/4 v9, 0x0

    .line 686
    .local v9, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :goto_1b
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_5a

    .line 690
    if-nez v9, :cond_7b

    .line 692
    if-eqz v3, :cond_49

    .line 693
    :try_start_20
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
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
    :try_end_49
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_20 .. :try_end_49} :catch_66
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_49} :catch_5d

    .line 745
    .end local v2    # "jsonValueList":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :cond_49
    :goto_49
    return-void

    .line 681
    .restart local v6    # "size":I
    :cond_4a
    :try_start_4a
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

    .line 686
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catchall_5a
    move-exception v10

    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v10
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 742
    :catch_5d
    move-exception v1

    .line 743
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CloudDB"

    const-string v11, "Exception in store worker!"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 699
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "size":I
    .restart local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catch_66
    move-exception v1

    .line 700
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisException;
    :try_start_67
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_49

    .line 706
    .end local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :cond_7b
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getValueList()Lorg/json/JSONArray;

    move-result-object v8

    .line 708
    .local v8, "valueList":Lorg/json/JSONArray;
    if-eqz v7, :cond_87

    if-nez v8, :cond_87

    .line 717
    :cond_87
    if-nez v3, :cond_92

    .line 718
    move-object v3, v7

    .line 719
    move-object v5, v8

    .line 720
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 721
    :cond_92
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 722
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a0} :catch_5d

    goto/16 :goto_3

    .line 726
    :cond_a2
    :try_start_a2
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
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
    :try_end_cb
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_a2 .. :try_end_cb} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_cb} :catch_5d

    .line 737
    move-object v3, v7

    .line 738
    move-object v5, v8

    .line 739
    const/4 v10, 0x0

    :try_start_ce
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 731
    .end local v2    # "jsonValueList":Ljava/lang/String;
    :catch_d4
    move-exception v1

    .line 732
    .restart local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$600(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_f3} :catch_5d

    goto/16 :goto_49
.end method
