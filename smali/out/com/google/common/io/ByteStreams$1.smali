.class final Lcom/google/common/io/ByteStreams$1;
.super Ljava/io/OutputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public write(I)V
    .registers 2
    .param p1, "b"    # I

    .prologue
    .line 581
    return-void
.end method

.method public write([B)V
    .registers 2
    .param p1, "b"    # [B

    .prologue
    .line 584
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method public write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 588
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method
