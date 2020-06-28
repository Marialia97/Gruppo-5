.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private function:Lcom/google/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;"
        }
    .end annotation
.end field

.field private inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private final outputCreated:Ljava/util/concurrent/CountDownLatch;

.field private volatile outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    .local p2, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 809
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    .line 814
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AsyncFunction;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 815
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 816
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AsyncFunction;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/ListenableFuture;
    .param p3, "x2"    # Lcom/google/common/util/concurrent/Futures$1;

    .prologue
    .line 803
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private cancel(Ljava/util/concurrent/Future;Z)V
    .registers 3
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_5

    .line 837
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 839
    :cond_5
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 824
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 827
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 828
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 829
    const/4 v0, 0x1

    .line 831
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public run()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    const/4 v5, 0x0

    .line 846
    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_6} :catch_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_6} :catch_38
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_6} :catch_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_72
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_6} :catch_80
    .catchall {:try_start_1 .. :try_end_6} :catchall_8e

    move-result-object v2

    .line 859
    .local v2, "sourceResult":Ljava/lang/Object;, "TI;"
    :try_start_7
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-interface {v3, v2}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 861
    .local v1, "outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 862
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->wasInterrupted()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 863
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1f
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_7 .. :try_end_1f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_72
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_1f} :catch_80
    .catchall {:try_start_7 .. :try_end_1f} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 906
    .end local v1    # "outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    .end local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :goto_28
    return-void

    .line 847
    :catch_29
    move-exception v0

    .line 851
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const/4 v3, 0x0

    :try_start_2b
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_2e
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2b .. :try_end_2e} :catch_60
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_72
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_2e} :catch_80
    .catchall {:try_start_2b .. :try_end_2e} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 853
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_38
    move-exception v0

    .line 855
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_39
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_40
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_39 .. :try_end_40} :catch_60
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_72
    .catch Ljava/lang/Error; {:try_start_39 .. :try_end_40} :catch_80
    .catchall {:try_start_39 .. :try_end_40} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 866
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v1    # "outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    .restart local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :cond_4a
    :try_start_4a
    new-instance v3, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v3, p0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_56
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4a .. :try_end_56} :catch_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_72
    .catch Ljava/lang/Error; {:try_start_4a .. :try_end_56} :catch_80
    .catchall {:try_start_4a .. :try_end_56} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 889
    .end local v1    # "outputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    .end local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :catch_60
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 892
    .end local v0    # "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_72
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Error;
    :try_start_81
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_8e

    .line 901
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_28

    .line 901
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_8e
    move-exception v3

    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 902
    iput-object v5, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v3
.end method
