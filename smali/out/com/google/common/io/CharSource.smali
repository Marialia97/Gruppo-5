.class public abstract Lcom/google/common/io/CharSource;
.super Ljava/lang/Object;
.source "CharSource.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/google/common/io/CharSink;)J
    .registers 8
    .param p1, "sink"    # Lcom/google/common/io/CharSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 118
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    .line 119
    .local v2, "reader":Ljava/io/Reader;
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/Writer;

    .line 120
    .local v3, "writer":Ljava/io/Writer;
    invoke-static {v2, v3}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_23
    .catchall {:try_start_7 .. :try_end_1e} :catchall_29

    move-result-wide v4

    .line 124
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 121
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_23
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_24
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 124
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_29
    move-exception v4

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v4
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .registers 8
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 98
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    .line 99
    .local v2, "reader":Ljava/io/Reader;
    invoke-static {v2, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_1f

    move-result-wide v4

    .line 103
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v4

    .line 100
    .end local v2    # "reader":Ljava/io/Reader;
    :catch_19
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1a
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    .line 103
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public openBufferedStream()Ljava/io/BufferedReader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    .line 81
    .local v0, "reader":Ljava/io/Reader;
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/BufferedReader;

    .end local v0    # "reader":Ljava/io/Reader;
    :goto_a
    return-object v0

    .restart local v0    # "reader":Ljava/io/Reader;
    :cond_b
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    goto :goto_a
.end method

.method public abstract openStream()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 136
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    .line 137
    .local v2, "reader":Ljava/io/Reader;
    invoke-static {v2}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_1c

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 138
    .end local v2    # "reader":Ljava/io/Reader;
    :catch_16
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 141
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public readFirstLine()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 157
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/BufferedReader;

    .line 158
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_1c

    move-result-object v3

    .line 162
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v3

    .line 159
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_16
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    .line 162
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1c
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public readLines()Lcom/google/common/collect/ImmutableList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 179
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/BufferedReader;

    .line 180
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 182
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 183
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1b} :catch_1c
    .catchall {:try_start_4 .. :try_end_1b} :catchall_22

    goto :goto_12

    .line 186
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1c
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1d
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_22

    .line 189
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_22
    move-exception v5

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v5

    .line 185
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    :try_start_27
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_1c
    .catchall {:try_start_27 .. :try_end_2a} :catchall_22

    move-result-object v5

    .line 189
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v5
.end method
