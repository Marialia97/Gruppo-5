.class public abstract Lcom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSource$1;,
        Lcom/google/common/io/ByteSource$SlicedByteSource;,
        Lcom/google/common/io/ByteSource$AsCharSource;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final countBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/io/ByteSource;->countBuffer:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method private countByReading(Ljava/io/InputStream;)J
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    .line 164
    .local v0, "count":J
    :goto_2
    sget-object v4, Lcom/google/common/io/ByteSource;->countBuffer:[B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    int-to-long v2, v4

    .local v2, "read":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_11

    .line 165
    add-long/2addr v0, v2

    goto :goto_2

    .line 167
    :cond_11
    return-wide v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 147
    .local v0, "count":J
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    const v5, 0x7fffffff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 148
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_24

    .line 149
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 150
    return-wide v0

    .line 152
    :cond_20
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_2

    .line 154
    :cond_24
    add-long/2addr v0, v2

    goto :goto_2
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/io/ByteSource$AsCharSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSource$1;)V

    return-object v0
.end method

.method public contentEquals(Lcom/google/common/io/ByteSource;)Z
    .registers 14
    .param p1, "other"    # Lcom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x1000

    .line 248
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-array v0, v11, [B

    .line 251
    .local v0, "buf1":[B
    new-array v1, v11, [B

    .line 253
    .local v1, "buf2":[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v2

    .line 255
    .local v2, "closer":Lcom/google/common/io/Closer;
    :try_start_e
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 256
    .local v4, "in1":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 258
    .local v5, "in2":Ljava/io/InputStream;
    :cond_22
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-static {v4, v0, v9, v10}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 259
    .local v6, "read1":I
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-static {v5, v1, v9, v10}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 260
    .local v7, "read2":I
    if-ne v6, v7, :cond_38

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_35} :catch_43
    .catchall {:try_start_e .. :try_end_35} :catchall_49

    move-result v9

    if-nez v9, :cond_3c

    .line 269
    :cond_38
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    :goto_3b
    return v8

    .line 262
    :cond_3c
    if-eq v6, v11, :cond_22

    .line 263
    const/4 v8, 0x1

    .line 269
    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    goto :goto_3b

    .line 266
    .end local v4    # "in1":Ljava/io/InputStream;
    .end local v5    # "in2":Ljava/io/InputStream;
    .end local v6    # "read1":I
    .end local v7    # "read2":I
    :catch_43
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_44
    invoke-virtual {v2, v3}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_49

    .line 269
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_49
    move-exception v8

    invoke-virtual {v2}, Lcom/google/common/io/Closer;->close()V

    throw v8
.end method

.method public copyTo(Lcom/google/common/io/ByteSink;)J
    .registers 8
    .param p1, "sink"    # Lcom/google/common/io/ByteSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 202
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 203
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    .line 204
    .local v3, "out":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_23
    .catchall {:try_start_7 .. :try_end_1e} :catchall_29

    move-result-wide v4

    .line 208
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 205
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_23
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_24
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 208
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_29
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .registers 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 182
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 183
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    move-result-wide v4

    .line 187
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 184
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_19
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 187
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 4
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 236
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 237
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public openBufferedStream()Ljava/io/BufferedInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 86
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/BufferedInputStream;

    .end local v0    # "in":Ljava/io/InputStream;
    :goto_a
    return-object v0

    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_b
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 220
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 221
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_1c

    move-result-object v3

    .line 225
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 222
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 225
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public size()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 119
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 120
    .local v2, "in":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_30

    move-result-wide v4

    .line 124
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 134
    :goto_15
    return-wide v4

    .line 121
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v3

    .line 124
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 127
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 129
    :try_start_1e
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 130
    .restart local v2    # "in":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/google/common/io/ByteSource;->countByReading(Ljava/io/InputStream;)J
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2b} :catch_35
    .catchall {:try_start_1e .. :try_end_2b} :catchall_3b

    move-result-wide v4

    .line 134
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    goto :goto_15

    .line 124
    .end local v2    # "in":Ljava/io/InputStream;
    :catchall_30
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3

    .line 131
    :catch_35
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_36
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3b

    .line 134
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_3b
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .registers 12
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    .line 98
    new-instance v0, Lcom/google/common/io/ByteSource$SlicedByteSource;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lcom/google/common/io/ByteSource;JJLcom/google/common/io/ByteSource$1;)V

    return-object v0
.end method
