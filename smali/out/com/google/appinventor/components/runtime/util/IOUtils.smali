.class public final Lcom/google/appinventor/components/runtime/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 19
    if-eqz p1, :cond_5

    .line 20
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 25
    :cond_5
    :goto_5
    return-void

    .line 22
    :catch_6
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to close resource"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
