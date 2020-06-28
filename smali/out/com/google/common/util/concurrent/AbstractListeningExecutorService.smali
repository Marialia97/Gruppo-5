.class public abstract Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.super Ljava/lang/Object;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v8, 0x1

    .line 82
    if-nez p1, :cond_9

    .line 83
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 85
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v3, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 88
    .local v0, "done":Z
    :try_start_13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 89
    .local v5, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v5}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    .line 90
    .local v1, "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 105
    .end local v1    # "f":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_2e
    move-exception v6

    if-nez v0, :cond_78

    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 107
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_35

    .line 93
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_45
    :try_start_45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 94
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_2e

    move-result v6

    if-nez v6, :cond_49

    .line 96
    :try_start_5b
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5b .. :try_end_5e} :catch_79
    .catchall {:try_start_5b .. :try_end_5e} :catchall_2e

    goto :goto_49

    .line 97
    :catch_5f
    move-exception v6

    goto :goto_49

    .line 102
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_61
    const/4 v0, 0x1

    .line 105
    if-nez v0, :cond_7b

    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 107
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v2, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_68

    .line 108
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_78
    throw v6

    .line 98
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_79
    move-exception v6

    goto :goto_49

    .line 108
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_7b
    return-object v3
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 25
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 117
    :cond_4
    new-instance v17, Ljava/lang/NullPointerException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v17

    .line 119
    :cond_a
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 120
    .local v12, "nanos":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v6, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v4, 0x0

    .line 123
    .local v4, "done":Z
    :try_start_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Callable;

    .line 124
    .local v9, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {v9}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_38

    goto :goto_22

    .line 162
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_38
    move-exception v17

    if-nez v4, :cond_116

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_116

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 164
    .local v5, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3f

    .line 127
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_53
    :try_start_53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 131
    .local v10, "lastTime":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 132
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_99

    .line 133
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Runnable;

    check-cast v17, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_38

    move-result-wide v14

    .line 135
    .local v14, "now":J
    sub-long v18, v14, v10

    sub-long v12, v12, v18

    .line 136
    move-wide v10, v14

    .line 137
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gtz v17, :cond_5b

    .line 162
    if-nez v4, :cond_117

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 164
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_85

    .line 142
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "now":J
    :cond_99
    :try_start_99
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9d
    :goto_9d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_fb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 143
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_38

    move-result v17

    if-nez v17, :cond_9d

    .line 144
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gtz v17, :cond_cf

    .line 162
    if-nez v4, :cond_117

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_bb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 164
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_bb

    .line 148
    :cond_cf
    :try_start_cf
    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-interface {v5, v12, v13, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_d6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cf .. :try_end_d6} :catch_11a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_cf .. :try_end_d6} :catch_118
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_cf .. :try_end_d6} :catch_e0
    .catchall {:try_start_cf .. :try_end_d6} :catchall_38

    .line 154
    :goto_d6
    :try_start_d6
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_38

    move-result-wide v14

    .line 155
    .restart local v14    # "now":J
    sub-long v18, v14, v10

    sub-long v12, v12, v18

    .line 156
    move-wide v10, v14

    goto :goto_9d

    .line 151
    .end local v14    # "now":J
    :catch_e0
    move-exception v16

    .line 162
    .local v16, "toe":Ljava/util/concurrent/TimeoutException;
    if-nez v4, :cond_117

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 164
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_e7

    .line 159
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v16    # "toe":Ljava/util/concurrent/TimeoutException;
    :cond_fb
    const/4 v4, 0x1

    .line 162
    if-nez v4, :cond_117

    .line 163
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_102
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 164
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_102

    .line 165
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v10    # "lastTime":J
    :cond_116
    throw v17

    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v10    # "lastTime":J
    :cond_117
    return-object v6

    .line 150
    .restart local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_118
    move-exception v17

    goto :goto_d6

    .line 149
    :catch_11a
    move-exception v17

    goto :goto_d6
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-static {p0, p1, v1, v2, v3}, Lcom/google/common/util/concurrent/MoreExecutors;->invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 69
    :catch_8
    move-exception v0

    .line 70
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v2, v3}, Lcom/google/common/util/concurrent/MoreExecutors;->invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 49
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 55
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 61
    .local v0, "ftask":Lcom/google/common/util/concurrent/ListenableFutureTask;, "Lcom/google/common/util/concurrent/ListenableFutureTask<TT;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "x0"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
