.class public Lgnu/lists/GeneralArray1;
.super Lgnu/lists/GeneralArray;
.source "GeneralArray1.java"

# interfaces
.implements Lgnu/lists/Sequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/lists/GeneralArray;-><init>()V

    return-void
.end method


# virtual methods
.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 9
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 20
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    :cond_6
    return-void

    .line 22
    :cond_7
    move v0, p1

    .line 23
    .local v0, "it":I
    :goto_8
    invoke-virtual {p0, v0, p2}, Lgnu/lists/GeneralArray1;->equals(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 25
    invoke-virtual {p0, v0}, Lgnu/lists/GeneralArray1;->hasNext(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 27
    :cond_1a
    iget-object v1, p0, Lgnu/lists/GeneralArray1;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GeneralArray1;->offset:I

    iget-object v3, p0, Lgnu/lists/GeneralArray1;->strides:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    ushr-int/lit8 v4, v0, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p3}, Lgnu/lists/SimpleVector;->consume(IILgnu/lists/Consumer;)V

    .line 28
    invoke-virtual {p0, v0}, Lgnu/lists/GeneralArray1;->nextPos(I)I

    move-result v0

    goto :goto_8
.end method

.method public createPos(IZ)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .prologue
    .line 10
    shl-int/lit8 v1, p1, 0x1

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_5
    or-int/2addr v0, v1

    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected nextIndex(I)I
    .registers 3
    .param p1, "ipos"    # I

    .prologue
    .line 15
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lgnu/lists/GeneralArray1;->size()I

    move-result v0

    :goto_7
    return v0

    :cond_8
    ushr-int/lit8 v0, p1, 0x1

    goto :goto_7
.end method
