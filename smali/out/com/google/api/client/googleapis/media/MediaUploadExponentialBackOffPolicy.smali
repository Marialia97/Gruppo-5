.class Lcom/google/api/client/googleapis/media/MediaUploadExponentialBackOffPolicy;
.super Lcom/google/api/client/http/ExponentialBackOffPolicy;
.source "MediaUploadExponentialBackOffPolicy.java"


# instance fields
.field private final uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V
    .registers 2
    .param p1, "uploader"    # Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaUploadExponentialBackOffPolicy;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 39
    return-void
.end method


# virtual methods
.method public getNextBackOffMillis()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadExponentialBackOffPolicy;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->serverErrorCallback()V

    .line 55
    invoke-super {p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;->getNextBackOffMillis()J

    move-result-wide v0

    return-wide v0
.end method
