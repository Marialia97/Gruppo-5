.class Lcom/google/appinventor/components/runtime/CloudDB$3;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 783
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 788
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "returnValue":Ljava/lang/String;
    if-eqz v2, :cond_68

    .line 793
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_46

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_37} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_37} :catch_74
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_7 .. :try_end_37} :catch_95

    .line 817
    .end local v3    # "val":Ljava/lang/String;
    :goto_37
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$3$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/CloudDB$3$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    .end local v2    # "returnValue":Ljava/lang/String;
    :goto_45
    return-void

    .line 795
    .restart local v2    # "returnValue":Ljava/lang/String;
    .restart local v3    # "val":Ljava/lang/String;
    :cond_46
    :try_start_46
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_4b} :catch_74
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_46 .. :try_end_4b} :catch_95

    goto :goto_37

    .line 803
    .end local v2    # "returnValue":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :catch_4c
    move-exception v0

    .line 804
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON conversion error for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    goto :goto_45

    .line 801
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "returnValue":Ljava/lang/String;
    :cond_68
    :try_start_68
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_73} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_73} :catch_74
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_68 .. :try_end_73} :catch_95

    goto :goto_37

    .line 806
    .end local v2    # "returnValue":Ljava/lang/String;
    :catch_74
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System Error getting tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 808
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_45

    .line 810
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_95
    move-exception v0

    .line 811
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    const-string v4, "CloudDB"

    const-string v5, "Exception in GetValue"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 813
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_45
.end method
