.class final Lcom/google/common/io/ByteStreams$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .prologue
    .line 625
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 622
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    .line 626
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 628
    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 629
    return-void

    .line 627
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readLimit"    # I

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 638
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 639
    monitor-exit p0

    return-void

    .line 637
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 642
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    move v0, v1

    .line 650
    :cond_a
    :goto_a
    return v0

    .line 646
    :cond_b
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 647
    .local v0, "result":I
    if-eq v0, v1, :cond_a

    .line 648
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    goto :goto_a
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 654
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    move v0, v1

    .line 663
    :cond_a
    :goto_a
    return v0

    .line 658
    :cond_b
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 659
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 660
    .local v0, "result":I
    if-eq v0, v1, :cond_a

    .line 661
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    goto :goto_a
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_14

    .line 668
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 667
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 670
    :cond_14
    :try_start_14
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 671
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_24
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 675
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_11

    .line 676
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 680
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 681
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 682
    return-wide v0
.end method
