.class public Lgnu/text/LineBufferedReader;
.super Ljava/io/Reader;
.source "LineBufferedReader.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final CONVERT_CR:I = 0x1

.field private static final DONT_KEEP_FULL_LINES:I = 0x8

.field private static final PREV_WAS_CR:I = 0x4

.field private static final USER_BUFFER:I = 0x2


# instance fields
.field public buffer:[C

.field private flags:I

.field highestPos:I

.field protected in:Ljava/io/Reader;

.field public limit:I

.field protected lineNumber:I

.field private lineStartPos:I

.field protected markPos:I

.field path:Lgnu/text/Path;

.field public pos:I

.field protected readAheadLimit:I

.field public readState:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 134
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 139
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 140
    return-void
.end method

.method private clearMark()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 164
    iput v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 166
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v2, :cond_10

    .line 169
    .local v1, "i":I
    :cond_9
    :goto_9
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lt v1, v2, :cond_13

    .line 180
    return-void

    .line 166
    .end local v1    # "i":I
    :cond_10
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_9

    .line 171
    .restart local v1    # "i":I
    :cond_13
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v0, v2, v3

    .line 172
    .local v0, "ch":C
    if-eq v0, v4, :cond_2b

    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, v4, :cond_9

    .line 175
    :cond_2b
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 176
    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_9
.end method

.method static countLines([CII)I
    .registers 9
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v5, 0xd

    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, "count":I
    const/4 v3, 0x0

    .line 639
    .local v3, "prev":C
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, p2, :cond_17

    .line 641
    aget-char v0, p0, v2

    .line 642
    .local v0, "ch":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_f

    if-ne v3, v5, :cond_11

    :cond_f
    if-ne v0, v5, :cond_13

    .line 643
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 644
    :cond_13
    move v3, v0

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 646
    .end local v0    # "ch":C
    :cond_17
    return v1
.end method

.method private reserve([CI)V
    .registers 7
    .param p1, "buffer"    # [C
    .param p2, "reserve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr p2, v1

    .line 212
    array-length v1, p1

    if-gt p2, v1, :cond_16

    .line 213
    const/4 v0, 0x0

    .line 249
    .local v0, "saveStart":I
    :goto_7
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v1, :cond_13

    .line 250
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :cond_13
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 252
    return-void

    .line 216
    .end local v0    # "saveStart":I
    :cond_16
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 217
    .restart local v0    # "saveStart":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v1, :cond_3b

    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v1, v2, :cond_3b

    .line 219
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gt v1, v2, :cond_38

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_63

    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int v1, p2, v1

    array-length v2, p1

    if-le v1, v2, :cond_63

    .line 222
    :cond_38
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 227
    :cond_3b
    :goto_3b
    array-length v1, p1

    sub-int/2addr p2, v1

    .line 228
    if-gt p2, v0, :cond_66

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v1, :cond_49

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_66

    .line 243
    :cond_49
    :goto_49
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 244
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 245
    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    .line 246
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 247
    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    goto :goto_7

    .line 224
    :cond_63
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    goto :goto_3b

    .line 232
    :cond_66
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gt p2, v1, :cond_71

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v1, :cond_71

    .line 233
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_49

    .line 234
    :cond_71
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7d

    .line 235
    sub-int v1, v0, p2

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_49

    .line 238
    :cond_7d
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v1, :cond_83

    .line 239
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 240
    :cond_83
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array p1, v1, [C

    goto :goto_49
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public fill(I)I
    .registers 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .registers 11

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 433
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v6, :cond_16

    .line 435
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    aget-char v4, v6, v7

    .line 436
    .local v4, "prev":C
    if-eq v4, v8, :cond_15

    if-ne v4, v9, :cond_16

    .line 454
    .end local v4    # "prev":C
    :cond_15
    :goto_15
    return v5

    .line 439
    :cond_16
    iget v6, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v6, :cond_21

    .line 440
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int v5, v6, v7

    goto :goto_15

    .line 444
    :cond_21
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v6, :cond_37

    .line 445
    .local v5, "start":I
    :goto_25
    move v2, v5

    .local v2, "i":I
    :goto_26
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v2, v6, :cond_3a

    .line 447
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-char v0, v6, v2

    .line 448
    .local v0, "ch":C
    if-eq v0, v8, :cond_34

    if-ne v0, v9, :cond_35

    .line 449
    :cond_34
    move v5, v3

    :cond_35
    move v2, v3

    .line 450
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_26

    .line 444
    .end local v0    # "ch":C
    .end local v2    # "i":I
    .end local v5    # "start":I
    :cond_37
    iget v5, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_25

    .line 451
    .restart local v2    # "i":I
    .restart local v5    # "start":I
    :cond_3a
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v1, v6, v5

    .line 452
    .local v1, "col":I
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v6, :cond_45

    .line 453
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v1, v6

    :cond_45
    move v5, v1

    .line 454
    goto :goto_15
.end method

.method public final getConvertCR()Z
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLineNumber()I
    .registers 6

    .prologue
    .line 404
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 405
    .local v0, "lineno":I
    iget v2, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-nez v2, :cond_23

    .line 407
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_22

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v2, v3, :cond_22

    .line 409
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    aget-char v1, v2, v3

    .line 410
    .local v1, "prev":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    const/16 v2, 0xd

    if-ne v1, v2, :cond_22

    .line 411
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 416
    .end local v1    # "prev":C
    :cond_22
    :goto_22
    return v0

    .line 415
    :cond_23
    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v2, :cond_32

    const/4 v2, 0x0

    :goto_2a
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-static {v3, v2, v4}, Lgnu/text/LineBufferedReader;->countLines([CII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_22

    :cond_32
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_2a
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPath()Lgnu/text/Path;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    return-object v0
.end method

.method public getReadState()C
    .registers 2

    .prologue
    .line 53
    iget-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    return v0
.end method

.method public incrLineNumber(II)V
    .registers 4
    .param p1, "lineDelta"    # I
    .param p2, "lineStartPos"    # I

    .prologue
    .line 426
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 427
    iput p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 428
    return-void
.end method

.method public lineStart(Z)V
    .registers 2
    .param p1, "revisited"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 464
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_8

    .line 465
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 466
    :cond_8
    iput p1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 467
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->markPos:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 468
    monitor-exit p0

    return-void

    .line 464
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    .line 711
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_2b

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_2b

    .line 713
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    aget-char v1, v2, v3

    .line 714
    .local v1, "ch":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2b

    if-eq v1, v4, :cond_2b

    .line 716
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v2, v3

    .line 717
    if-ne v1, v4, :cond_2a

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 718
    const/16 v1, 0xa

    .line 725
    .end local v1    # "ch":C
    :cond_2a
    :goto_2a
    return v1

    .line 722
    :cond_2b
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 723
    .local v0, "c":I
    if-ltz v0, :cond_34

    .line 724
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    :cond_34
    move v1, v0

    .line 725
    goto :goto_2a
.end method

.method public read()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xa

    const/16 v8, 0xd

    .line 257
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v6, :cond_77

    .line 258
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    aget-char v1, v6, v7

    .line 265
    .local v1, "prev":C
    :goto_11
    if-eq v1, v8, :cond_15

    if-ne v1, v4, :cond_4d

    .line 267
    :cond_15
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v6, v7, :cond_2f

    iget v6, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-eqz v6, :cond_25

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->markPos:I

    if-gt v6, v7, :cond_2f

    .line 269
    :cond_25
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 270
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 272
    :cond_2f
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-ge v6, v7, :cond_89

    move v3, v5

    .line 273
    .local v3, "revisited":Z
    :goto_36
    if-ne v1, v4, :cond_42

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-gt v6, v5, :cond_8b

    iget v6, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_45

    .line 276
    :cond_42
    :goto_42
    invoke-virtual {p0, v3}, Lgnu/text/LineBufferedReader;->lineStart(Z)V

    .line 278
    :cond_45
    if-nez v3, :cond_4d

    .line 279
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 282
    .end local v3    # "revisited":Z
    :cond_4d
    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v6, v7, :cond_af

    .line 284
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez v6, :cond_96

    .line 285
    const/16 v5, 0x2000

    new-array v5, v5, [C

    iput-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 288
    :cond_5d
    :goto_5d
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v5, :cond_69

    .line 290
    if-ne v1, v8, :cond_a3

    .line 291
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 295
    :cond_69
    :goto_69
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lgnu/text/LineBufferedReader;->fill(I)I

    move-result v2

    .line 296
    .local v2, "readCount":I
    if-gtz v2, :cond_aa

    .line 297
    const/4 v0, -0x1

    .line 324
    .end local v2    # "readCount":I
    :cond_76
    :goto_76
    return v0

    .line 259
    .end local v1    # "prev":C
    :cond_77
    iget v6, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_80

    .line 260
    const/16 v1, 0xd

    .restart local v1    # "prev":C
    goto :goto_11

    .line 261
    .end local v1    # "prev":C
    :cond_80
    iget v6, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v6, :cond_87

    .line 262
    const/16 v1, 0xa

    .restart local v1    # "prev":C
    goto :goto_11

    .line 264
    .end local v1    # "prev":C
    :cond_87
    const/4 v1, 0x0

    .restart local v1    # "prev":C
    goto :goto_11

    .line 272
    :cond_89
    const/4 v3, 0x0

    goto :goto_36

    .line 273
    .restart local v3    # "revisited":Z
    :cond_8b
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v7, -0x2

    aget-char v6, v6, v7

    if-eq v6, v8, :cond_45

    goto :goto_42

    .line 286
    .end local v3    # "revisited":Z
    :cond_96
    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget-object v7, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v7, v7

    if-ne v6, v7, :cond_5d

    .line 287
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    invoke-direct {p0, v6, v5}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_5d

    .line 293
    :cond_a3
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v5, v5, -0x5

    iput v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_69

    .line 298
    .restart local v2    # "readCount":I
    :cond_aa
    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr v5, v2

    iput v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 301
    .end local v2    # "readCount":I
    :cond_af
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v5, v6

    .line 302
    .local v0, "ch":I
    if-ne v0, v4, :cond_dc

    .line 304
    if-ne v1, v8, :cond_76

    .line 310
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_d1

    .line 312
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 313
    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 315
    :cond_d1
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 316
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    goto :goto_76

    .line 319
    :cond_dc
    if-ne v0, v8, :cond_76

    .line 321
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v5

    if-eqz v5, :cond_76

    move v0, v4

    .line 322
    goto :goto_76
.end method

.method public read([CII)I
    .registers 13
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 331
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v5, v6, :cond_24

    .line 332
    const/4 v0, 0x0

    .line 339
    .local v0, "ch":I
    :goto_b
    move v4, p3

    .local v4, "to_do":I
    move v2, p2

    .line 340
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_d
    if-lez v4, :cond_7b

    .line 342
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v5, v6, :cond_19

    if-eq v0, v7, :cond_19

    if-ne v0, v8, :cond_56

    .line 346
    :cond_19
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v5, v6, :cond_40

    if-ge v4, p3, :cond_40

    .line 347
    sub-int v5, p3, v4

    .line 377
    :goto_23
    return v5

    .line 333
    .end local v0    # "ch":I
    .end local v2    # "off":I
    .end local v4    # "to_do":I
    .restart local p2    # "off":I
    :cond_24
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v5, :cond_31

    .line 334
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v6, -0x1

    aget-char v0, v5, v6

    .restart local v0    # "ch":I
    goto :goto_b

    .line 335
    .end local v0    # "ch":I
    :cond_31
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3b

    iget v5, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v5, :cond_3e

    .line 336
    :cond_3b
    const/16 v0, 0xa

    .restart local v0    # "ch":I
    goto :goto_b

    .line 338
    .end local v0    # "ch":I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "ch":I
    goto :goto_b

    .line 348
    .end local p2    # "off":I
    .restart local v2    # "off":I
    .restart local v4    # "to_do":I
    :cond_40
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 349
    if-gez v0, :cond_4d

    .line 351
    sub-int/2addr p3, v4

    .line 352
    if-gtz p3, :cond_4b

    const/4 v5, -0x1

    goto :goto_23

    :cond_4b
    move v5, p3

    goto :goto_23

    .line 354
    :cond_4d
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 355
    add-int/lit8 v4, v4, -0x1

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_d

    .line 359
    :cond_56
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 360
    .local v3, "p":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 361
    .local v1, "lim":I
    sub-int v5, v1, v3

    if-ge v4, v5, :cond_60

    .line 362
    add-int v1, v3, v4

    .line 363
    :cond_60
    :goto_60
    if-ge v3, v1, :cond_6a

    .line 365
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v5, v3

    .line 368
    if-eq v0, v7, :cond_6a

    if-ne v0, v8, :cond_72

    .line 373
    :cond_6a
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    .line 374
    iput v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_d

    .line 370
    :cond_72
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-char v5, v0

    aput-char v5, p1, v2

    .line 371
    add-int/lit8 v3, v3, 0x1

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_60

    .end local v1    # "lim":I
    .end local v3    # "p":I
    :cond_7b
    move v5, p3

    .line 377
    goto :goto_23
.end method

.method public readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 533
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 534
    .local v0, "ch":I
    if-gez v0, :cond_c

    .line 535
    const/4 v4, 0x0

    .line 561
    :goto_b
    return-object v4

    .line 536
    :cond_c
    if-eq v0, v8, :cond_10

    if-ne v0, v7, :cond_13

    .line 537
    :cond_10
    const-string v4, ""

    goto :goto_b

    .line 538
    :cond_13
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v4, -0x1

    .line 539
    .local v3, "start":I
    :cond_17
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v4, v5, :cond_43

    .line 541
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v4, v5

    .line 542
    if-eq v0, v8, :cond_2b

    if-ne v0, v7, :cond_17

    .line 544
    :cond_2b
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v1, v4, -0x1

    .line 545
    .local v1, "end":I
    if-eq v0, v7, :cond_6a

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 547
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_5c

    .line 549
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 558
    .end local v1    # "end":I
    :cond_43
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 560
    const/16 v4, 0x49

    invoke-virtual {p0, v2, v4}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 552
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v1    # "end":I
    :cond_5c
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_6a

    .line 553
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 555
    :cond_6a
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int v6, v1, v3

    invoke-direct {v4, v5, v3, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b
.end method

.method public readLine(Ljava/lang/StringBuffer;C)V
    .registers 11
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "mode"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x49

    const/16 v5, 0xa

    .line 491
    :goto_6
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 492
    .local v0, "ch":I
    if-gez v0, :cond_d

    .line 524
    :cond_c
    :goto_c
    return-void

    .line 494
    :cond_d
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 495
    .local v1, "start":I
    :cond_13
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_61

    .line 497
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v2, v3

    .line 498
    if-eq v0, v7, :cond_27

    if-ne v0, v5, :cond_13

    .line 500
    :cond_27
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 501
    const/16 v2, 0x50

    if-ne p2, v2, :cond_3c

    .line 503
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_c

    .line 506
    :cond_3c
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-nez v2, :cond_44

    if-ne v0, v5, :cond_4a

    .line 508
    :cond_44
    if-eq p2, v6, :cond_c

    .line 509
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 513
    :cond_4a
    if-eq p2, v6, :cond_4f

    .line 514
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_4f
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 516
    if-ne v0, v5, :cond_5b

    .line 518
    if-eq p2, v6, :cond_c

    .line 519
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 521
    :cond_5b
    if-ltz v0, :cond_c

    .line 522
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_c

    .line 527
    :cond_61
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_6
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v0, :cond_c

    .line 473
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_c
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-le v0, v1, :cond_16

    .line 475
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 476
    :cond_16
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 478
    return-void
.end method

.method public setBuffer([C)V
    .registers 5
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    if-nez p1, :cond_1d

    .line 188
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-eqz v0, :cond_16

    .line 190
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v0, v0

    new-array p1, v0, [C

    .line 191
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 194
    :cond_16
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 203
    :goto_1c
    return-void

    .line 198
    :cond_1d
    iget v0, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v0, v1

    array-length v1, p1

    if-le v0, v1, :cond_2d

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "setBuffer - too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2d
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 201
    invoke-direct {p0, p1, v2}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    goto :goto_1c
.end method

.method public final setConvertCR(Z)V
    .registers 3
    .param p1, "convertCR"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_9

    .line 102
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 105
    :goto_8
    return-void

    .line 104
    :cond_9
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_8
.end method

.method public setKeepFullLines(Z)V
    .registers 3
    .param p1, "keep"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_9

    .line 91
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 94
    :goto_8
    return-void

    .line 93
    :cond_9
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_8
.end method

.method public setLineNumber(I)V
    .registers 4
    .param p1, "lineNumber"    # I

    .prologue
    .line 421
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 422
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 397
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/LineBufferedReader;->setPath(Lgnu/text/Path;)V

    .line 398
    return-void
.end method

.method public setPath(Lgnu/text/Path;)V
    .registers 2
    .param p1, "path"    # Lgnu/text/Path;

    .prologue
    .line 387
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    .line 388
    return-void
.end method

.method public skip(I)I
    .registers 10
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    .line 567
    if-gez p1, :cond_15

    .line 569
    neg-int v3, p1

    .line 570
    .local v3, "to_do":I
    :goto_7
    if-lez v3, :cond_13

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_13

    .line 571
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 570
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 572
    :cond_13
    add-int/2addr p1, v3

    .line 615
    .end local p1    # "n":I
    :cond_14
    :goto_14
    return p1

    .line 577
    .end local v3    # "to_do":I
    .restart local p1    # "n":I
    :cond_15
    move v3, p1

    .line 579
    .restart local v3    # "to_do":I
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_31

    .line 580
    const/4 v0, 0x0

    .line 587
    .local v0, "ch":I
    :goto_1d
    if-lez v3, :cond_14

    .line 589
    if-eq v0, v6, :cond_29

    if-eq v0, v7, :cond_29

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_50

    .line 591
    :cond_29
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 592
    if-gez v0, :cond_4d

    .line 593
    sub-int/2addr p1, v3

    goto :goto_14

    .line 581
    .end local v0    # "ch":I
    :cond_31
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v4, :cond_3e

    .line 582
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v5, -0x1

    aget-char v0, v4, v5

    .restart local v0    # "ch":I
    goto :goto_1d

    .line 583
    .end local v0    # "ch":I
    :cond_3e
    iget v4, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_48

    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v4, :cond_4b

    .line 584
    :cond_48
    const/16 v0, 0xa

    .restart local v0    # "ch":I
    goto :goto_1d

    .line 586
    .end local v0    # "ch":I
    :cond_4b
    const/4 v0, 0x0

    .restart local v0    # "ch":I
    goto :goto_1d

    .line 594
    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 598
    :cond_50
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 599
    .local v2, "p":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 600
    .local v1, "lim":I
    sub-int v4, v1, v2

    if-ge v3, v4, :cond_5a

    .line 601
    add-int v1, v2, v3

    .line 602
    :cond_5a
    :goto_5a
    if-ge v2, v1, :cond_64

    .line 604
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v4, v2

    .line 607
    if-eq v0, v6, :cond_64

    if-ne v0, v7, :cond_6c

    .line 611
    :cond_64
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    .line 612
    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_1d

    .line 609
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a
.end method

.method public skip()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    .line 633
    return-void
.end method

.method public skipRestOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 655
    :cond_2
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 656
    .local v0, "c":I
    if-gez v0, :cond_9

    .line 668
    :cond_8
    :goto_8
    return-void

    .line 658
    :cond_9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_19

    .line 660
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 661
    if-ltz v0, :cond_8

    if-eq v0, v2, :cond_8

    .line 662
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    goto :goto_8

    .line 665
    :cond_19
    if-ne v0, v2, :cond_2

    goto :goto_8
.end method

.method public final skip_quick()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 628
    return-void
.end method

.method public unread()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 674
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v2, :cond_10

    .line 675
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unread too much"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 676
    :cond_10
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 677
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v2, v3

    .line 678
    .local v0, "ch":C
    if-eq v0, v4, :cond_20

    if-ne v0, v5, :cond_5a

    .line 680
    :cond_20
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v2, :cond_3c

    if-ne v0, v4, :cond_3c

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_3c

    .line 681
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 682
    :cond_3c
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v2, v3, :cond_5a

    .line 684
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 686
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .local v1, "i":I
    :cond_4a
    if-lez v1, :cond_58

    .line 688
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v2, v1

    .line 689
    if-eq v0, v5, :cond_56

    if-ne v0, v4, :cond_4a

    .line 691
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 695
    :cond_58
    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 698
    .end local v1    # "i":I
    :cond_5a
    return-void
.end method

.method public unread_quick()V
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 706
    return-void
.end method
