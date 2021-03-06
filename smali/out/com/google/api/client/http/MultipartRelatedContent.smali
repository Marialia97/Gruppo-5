.class public final Lcom/google/api/client/http/MultipartRelatedContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartRelatedContent.java"


# static fields
.field private static final CONTENT_TRANSFER_ENCODING:[B

.field private static final CONTENT_TYPE:[B

.field private static final CR_LF:[B

.field private static final TWO_DASHES:[B


# instance fields
.field private final parts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/HttpContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    .line 73
    const-string v0, "Content-Type: "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    .line 74
    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    .line 76
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/api/client/http/HttpContent;[Lcom/google/api/client/http/HttpContent;)V
    .registers 7
    .param p1, "firstPart"    # Lcom/google/api/client/http/HttpContent;
    .param p2, "otherParts"    # [Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 84
    new-instance v1, Lcom/google/api/client/http/HttpMediaType;

    const-string v2, "multipart/related"

    invoke-direct {v1, v2}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    const-string v3, "END_OF_PART"

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/http/HttpContent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iput-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    .line 89
    return-void
.end method

.method private static isTextBasedContentType(Ljava/lang/String;)Z
    .registers 5
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 207
    if-nez p0, :cond_4

    .line 211
    :cond_3
    :goto_3
    return v1

    .line 210
    :cond_4
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "hmt":Lcom/google/api/client/http/HttpMediaType;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_21
    const/4 v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public computeLength()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartRelatedContent;->getBoundary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 133
    .local v0, "boundaryBytes":[B
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    array-length v10, v0

    add-int/2addr v9, v10

    int-to-long v6, v9

    .line 134
    .local v6, "result":J
    iget-object v9, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/HttpContent;

    .line 135
    .local v3, "part":Lcom/google/api/client/http/HttpContent;
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v4

    .line 136
    .local v4, "length":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_2f

    .line 137
    const-wide/16 v6, -0x1

    .line 149
    .end local v3    # "part":Lcom/google/api/client/http/HttpContent;
    .end local v4    # "length":J
    .end local v6    # "result":J
    :cond_2e
    return-wide v6

    .line 139
    .restart local v3    # "part":Lcom/google/api/client/http/HttpContent;
    .restart local v4    # "length":J
    .restart local v6    # "result":J
    :cond_2f
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 142
    .local v8, "typeBytes":[B
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v9, v9

    sget-object v10, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    array-length v10, v10

    add-int/2addr v9, v10

    array-length v10, v8

    add-int/2addr v9, v10

    int-to-long v10, v9

    add-long/2addr v6, v10

    .line 144
    .end local v8    # "typeBytes":[B
    :cond_44
    invoke-static {v1}, Lcom/google/api/client/http/MultipartRelatedContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_53

    .line 145
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    array-length v9, v9

    sget-object v10, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v10, v10

    add-int/2addr v9, v10

    int-to-long v10, v9

    add-long/2addr v6, v10

    .line 147
    :cond_53
    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    int-to-long v10, v9

    add-long/2addr v10, v4

    sget-object v9, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    array-length v9, v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    array-length v9, v0

    int-to-long v12, v9

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    .line 148
    goto :goto_16
.end method

.method public forRequest(Lcom/google/api/client/http/HttpRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;

    .prologue
    .line 99
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 100
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setMimeVersion(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartRelatedContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/http/HttpContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .registers 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/HttpContent;

    .line 155
    .local v1, "onePart":Lcom/google/api/client/http/HttpContent;
    invoke-interface {v1}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v2

    if-nez v2, :cond_6

    .line 156
    const/4 v2, 0x0

    .line 159
    .end local v1    # "onePart":Lcom/google/api/client/http/HttpContent;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public setBoundary(Ljava/lang/String;)Lcom/google/api/client/http/MultipartRelatedContent;
    .registers 5
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartRelatedContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v1

    const-string v2, "boundary"

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 188
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/MultipartRelatedContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartRelatedContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartRelatedContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 165
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartRelatedContent;->getBoundary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 105
    .local v0, "boundaryBytes":[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v5, p0, Lcom/google/api/client/http/MultipartRelatedContent;->parts:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/HttpContent;

    .line 108
    .local v3, "part":Lcom/google/api/client/http/HttpContent;
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_39

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 111
    .local v4, "typeBytes":[B
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 112
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TYPE:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 113
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 115
    .end local v4    # "typeBytes":[B
    :cond_39
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-static {v1}, Lcom/google/api/client/http/MultipartRelatedContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 117
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CONTENT_TRANSFER_ENCODING:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 118
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 120
    :cond_4e
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 121
    invoke-interface {v3, p1}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 122
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->CR_LF:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 123
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_16

    .line 126
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "part":Lcom/google/api/client/http/HttpContent;
    :cond_64
    sget-object v5, Lcom/google/api/client/http/MultipartRelatedContent;->TWO_DASHES:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 128
    return-void
.end method
