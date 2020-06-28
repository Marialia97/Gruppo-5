.class public final Lcom/google/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;,
        Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;,
        Lcom/google/common/util/concurrent/MoreExecutors$Application;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/util/concurrent/MoreExecutors;->useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p0, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 125
    return-void
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingExecutorService(Ljava/util/concurrent/ThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p1, "terminationTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$Application;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/MoreExecutors$Application;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors$Application;->getExitingScheduledExecutorService(Ljava/util/concurrent/ScheduledThreadPoolExecutor;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static invokeAnyImpl(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 28
    .param p0, "executorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
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
    .line 538
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 540
    .local v13, "ntasks":I
    if-lez v13, :cond_79

    const/16 v19, 0x1

    :goto_b
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 541
    invoke-static {v13}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 542
    .local v10, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-static {}, Lcom/google/common/collect/Queues;->newLinkedBlockingQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v9

    .line 553
    .local v9, "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v5, 0x0

    .line 554
    .local v5, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_7c

    :try_start_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 555
    .local v14, "lastTime":J
    :goto_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 557
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_8d

    .line 558
    add-int/lit8 v13, v13, -0x1

    .line 559
    const/4 v4, 0x1

    .local v4, "active":I
    move-object v6, v5

    .line 562
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_38
    :try_start_38
    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 563
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_59

    .line 564
    if-lez v13, :cond_7f

    .line 565
    add-int/lit8 v13, v13, -0x1

    .line 566
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_bc

    .line 567
    add-int/lit8 v4, v4, 0x1

    .line 582
    :cond_59
    :goto_59
    if-eqz v8, :cond_e3

    .line 583
    add-int/lit8 v4, v4, -0x1

    .line 585
    :try_start_5d
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_60
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5d .. :try_end_60} :catch_d1
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_60} :catch_d6
    .catchall {:try_start_5d .. :try_end_60} :catchall_bc

    move-result-object v19

    .line 599
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .line 600
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_65

    .line 540
    .end local v4    # "active":I
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v9    # "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v10    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    :cond_79
    const/16 v19, 0x0

    goto :goto_b

    .line 554
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "futureQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v10    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_7c
    const-wide/16 v14, 0x0

    goto :goto_1d

    .line 568
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14    # "lastTime":J
    :cond_7f
    if-nez v4, :cond_a6

    .line 594
    if-nez v6, :cond_e1

    .line 595
    :try_start_83
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_bc

    .line 597
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_8c
    :try_start_8c
    throw v5
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 599
    .end local v4    # "active":I
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    :catchall_8d
    move-exception v19

    :goto_8e
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_92
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_df

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 600
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_92

    .line 570
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14    # "lastTime":J
    :cond_a6
    if-eqz p2, :cond_ca

    .line 571
    :try_start_a8
    sget-object v19, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v19

    invoke-interface {v9, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .line 572
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_bf

    .line 573
    new-instance v19, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v19

    .line 599
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_bc
    move-exception v19

    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8e

    .line 575
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_bf
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 576
    .local v16, "now":J
    sub-long v20, v16, v14

    sub-long p3, p3, v20

    .line 577
    move-wide/from16 v14, v16

    .line 578
    goto :goto_59

    .line 579
    .end local v16    # "now":J
    :cond_ca
    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    goto :goto_59

    .line 586
    :catch_d1
    move-exception v7

    .line 587
    .local v7, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v5, v7

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v7    # "eex":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_d3
    move-object v6, v5

    .line 592
    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_38

    .line 588
    :catch_d6
    move-exception v18

    .line 589
    .local v18, "rex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_de
    .catchall {:try_start_a8 .. :try_end_de} :catchall_bc

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_d3

    .line 601
    .end local v4    # "active":I
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14    # "lastTime":J
    .end local v18    # "rex":Ljava/lang/RuntimeException;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_df
    throw v19

    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14    # "lastTime":J
    :cond_e0
    return-object v19

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_e1
    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8c

    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_e3
    move-object v5, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_d3
.end method

.method private static isAppEngine()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 649
    const-string v2, "com.google.appengine.runtime.environment"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 668
    :cond_9
    :goto_9
    return v1

    .line 654
    :cond_a
    :try_start_a
    const-string v2, "com.google.apphosting.api.ApiProxy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentEnvironment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_20} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_20} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_20} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_20} :catch_2b

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    .line 657
    :catch_25
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_9

    .line 660
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_27
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_9

    .line 663
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_29
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_9

    .line 666
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2b
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_9
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .registers 2
    .param p0, "delegate"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 411
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    .end local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :goto_6
    return-object p0

    .restart local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .end local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_6

    .restart local p0    # "delegate":Ljava/util/concurrent/ExecutorService;
    :cond_14
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
    .registers 2
    .param p0, "delegate"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 439
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .end local p0    # "delegate":Ljava/util/concurrent/ScheduledExecutorService;
    :goto_6
    return-object p0

    .restart local p0    # "delegate":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_7
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_6
.end method

.method static newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 677
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->platformThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 681
    .local v0, "result":Ljava/lang/Thread;
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_11} :catch_12

    .line 685
    :goto_11
    return-object v0

    .line 682
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static platformThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 630
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->isAppEngine()Z

    move-result v1

    if-nez v1, :cond_b

    .line 631
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 634
    :goto_a
    return-object v1

    :cond_b
    :try_start_b
    const-string v1, "com.google.appengine.api.ThreadManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentRequestThreadFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_24} :catch_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_24} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_24} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_24} :catch_40

    goto :goto_a

    .line 637
    :catch_25
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 639
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2e
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 641
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_37
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t invoke ThreadManager.currentRequestThreadFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 643
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_40
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .registers 2

    .prologue
    .line 264
    new-instance v0, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V

    return-object v0
.end method

.method private static submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .param p0, "executorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 612
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$1;

    invoke-direct {v1, p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors$1;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 617
    return-object v0
.end method

.method private static useDaemonThreadFactory(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 224
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 228
    return-void
.end method
