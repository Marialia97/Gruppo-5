.class public abstract Lcom/google/api/client/http/AbstractInputStreamContent;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private closeInputStream:Z

.field private encoding:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 67
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 167
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeInputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 199
    if-eqz p2, :cond_8

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_8
    return-void

    .line 199
    :catchall_9
    move-exception v0

    if-eqz p2, :cond_f

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v0
.end method


# virtual methods
.method public final getCloseInputStream()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 2
    .param p1, "closeInputStream"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 135
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->encoding:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    invoke-static {v0, p1, v1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 85
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 86
    return-void
.end method
