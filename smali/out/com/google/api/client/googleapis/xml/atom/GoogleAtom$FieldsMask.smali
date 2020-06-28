.class Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
.super Ljava/lang/Object;
.source "GoogleAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldsMask"
.end annotation


# instance fields
.field buf:Ljava/lang/StringBuilder;

.field numDifferences:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    .line 245
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    .line 246
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    return-void
.end method

.method append(Ljava/lang/String;Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subFields"    # Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    .prologue
    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    .line 254
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v2, p2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    if-ne v2, v1, :cond_1e

    .line 255
    .local v1, "isSingle":Z
    :goto_a
    if-eqz v1, :cond_20

    .line 256
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :goto_11
    iget-object v2, p2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 261
    if-nez v1, :cond_1d

    .line 262
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_1d
    return-void

    .line 254
    .end local v1    # "isSingle":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_a

    .line 258
    .restart local v1    # "isSingle":Z
    :cond_20
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11
.end method
