.class public abstract Lcom/google/api/client/http/AbstractHttpContent;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private computedLength:J

.field private mediaType:Lcom/google/api/client/http/HttpMediaType;


# direct methods
.method protected constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpMediaType;)V
    .registers 4
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 61
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 54
    return-void

    .line 53
    :cond_7
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected computeLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->retrySupported()Z

    move-result v1

    if-nez v1, :cond_9

    .line 130
    const-wide/16 v2, -0x1

    .line 138
    :goto_8
    return-wide v2

    .line 132
    :cond_9
    new-instance v0, Lcom/google/api/client/http/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/http/ByteCountingOutputStream;-><init>()V

    .line 134
    .local v0, "countingStream":Lcom/google/api/client/http/ByteCountingOutputStream;
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_17

    .line 136
    invoke-virtual {v0}, Lcom/google/api/client/http/ByteCountingOutputStream;->close()V

    .line 138
    iget-wide v2, v0, Lcom/google/api/client/http/ByteCountingOutputStream;->count:J

    goto :goto_8

    .line 136
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/http/ByteCountingOutputStream;->close()V

    throw v1
.end method

.method protected final getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_e
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 75
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    .line 77
    :cond_e
    iget-wide v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->computedLength:J

    return-wide v0
.end method

.method public final getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/client/http/AbstractHttpContent;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 101
    return-object p0
.end method
