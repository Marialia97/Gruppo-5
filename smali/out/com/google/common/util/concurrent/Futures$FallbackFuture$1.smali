.class Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$FallbackFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

.field final synthetic val$fallback:Lcom/google/common/util/concurrent/FutureFallback;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/FutureFallback;)V
    .registers 3

    .prologue
    .line 456
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture.1;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 493
    :goto_8
    return-void

    .line 468
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-interface {v2, p1}, Lcom/google/common/util/concurrent/FutureFallback;->create(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$102(Lcom/google/common/util/concurrent/Futures$FallbackFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 469
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 470
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_2b} :catch_46

    goto :goto_8

    .line 488
    :catch_2c
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_8

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->access$100(Lcom/google/common/util/concurrent/Futures$FallbackFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;

    invoke-direct {v2, p0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1$1;-><init>(Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_45} :catch_2c
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_45} :catch_46

    goto :goto_8

    .line 490
    :catch_46
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_8
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;, "Lcom/google/common/util/concurrent/Futures$FallbackFuture.1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method
