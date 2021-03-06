.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = 0x4

.field static final COMPLETED:I = 0x2

.field static final COMPLETING:I = 0x1

.field static final INTERRUPTED:I = 0x8

.field static final RUNNING:I

.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "finalState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    .line 379
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v0

    .line 380
    .local v0, "doCompletion":Z
    if-eqz v0, :cond_1b

    .line 383
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    .line 385
    and-int/lit8 v1, p3, 0xc

    if-eqz v1, :cond_15

    new-instance p2, Ljava/util/concurrent/CancellationException;

    .end local p2    # "t":Ljava/lang/Throwable;
    const-string v1, "Future.cancel() was called."

    invoke-direct {p2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_15
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    .line 387
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    .line 393
    :cond_1a
    :goto_1a
    return v0

    .line 388
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1a

    .line 391
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireShared(I)V

    goto :goto_1a
.end method

.method private getValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 303
    .local v0, "state":I
    sparse-switch v0, :sswitch_data_38

    .line 317
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :sswitch_20
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    .line 306
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    :cond_2c
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v1

    .line 313
    :sswitch_2f
    const-string v1, "Task was cancelled."

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 303
    :sswitch_data_38
    .sparse-switch
        0x2 -> :sswitch_20
        0x4 -> :sswitch_2f
        0x8 -> :sswitch_2f
    .end sparse-switch
.end method


# virtual methods
.method cancel(Z)Z
    .registers 4
    .param p1, "interrupt"    # Z

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v1, 0x0

    .line 362
    if-eqz p1, :cond_a

    const/16 v0, 0x8

    :goto_5
    invoke-direct {p0, v1, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x4

    goto :goto_5
.end method

.method get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 293
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method get(J)Ljava/lang/Object;
    .registers 6
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_f

    .line 276
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_f
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isCancelled()Z
    .registers 2

    .prologue
    .line 334
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDone()Z
    .registers 2

    .prologue
    .line 327
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method set(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method setException(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 355
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .param p1, "ignored"    # I

    .prologue
    .line 250
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected tryReleaseShared(I)Z
    .registers 3
    .param p1, "finalState"    # I

    .prologue
    .line 262
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method wasInterrupted()Z
    .registers 3

    .prologue
    .line 341
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$Sync;, "Lcom/google/common/util/concurrent/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
