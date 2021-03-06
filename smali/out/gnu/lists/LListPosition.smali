.class Lgnu/lists/LListPosition;
.super Lgnu/lists/ExtPosition;
.source "LListPosition.java"


# instance fields
.field xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/LList;IZ)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/LList;
    .param p2, "index"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lgnu/lists/LListPosition;)V
    .registers 3
    .param p1, "old"    # Lgnu/lists/LListPosition;

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 31
    iget-object v0, p1, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 32
    iget v0, p1, Lgnu/lists/LListPosition;->ipos:I

    iput v0, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 33
    iget-object v0, p1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public copy()Lgnu/lists/SeqPosition;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lgnu/lists/LListPosition;

    invoke-direct {v0, p0}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    return-object v0
.end method

.method public getNext()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 129
    .local v0, "pair":Lgnu/lists/Pair;
    if-nez v0, :cond_9

    sget-object v1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_8
.end method

.method public getNextPair()Lgnu/lists/Pair;
    .registers 4

    .prologue
    .line 101
    iget v2, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v0, v2, 0x1

    .line 103
    .local v0, "isAfter":I
    if-lez v0, :cond_29

    .line 105
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_1c

    .line 107
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 108
    .local v1, "next":Lgnu/lists/AbstractSequence;
    iget v2, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    .line 109
    check-cast v1, Lgnu/lists/Pair;

    .end local v1    # "next":Lgnu/lists/AbstractSequence;
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 121
    :cond_16
    :goto_16
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_37

    .line 122
    const/4 v1, 0x0

    .line 123
    :goto_1b
    return-object v1

    .line 112
    :cond_1c
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v2, Lgnu/lists/Pair;

    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v2, Lgnu/lists/Pair;

    check-cast v2, Lgnu/lists/Pair;

    iget-object v1, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v1, "next":Ljava/lang/Object;
    goto :goto_16

    .line 116
    .end local v1    # "next":Ljava/lang/Object;
    :cond_29
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_30

    .line 117
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .local v1, "next":Lgnu/lists/AbstractSequence;
    goto :goto_16

    .line 119
    .end local v1    # "next":Lgnu/lists/AbstractSequence;
    :cond_30
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v2, Lgnu/lists/Pair;

    iget-object v1, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v1, "next":Ljava/lang/Object;
    goto :goto_16

    .line 123
    .end local v1    # "next":Ljava/lang/Object;
    :cond_37
    check-cast v1, Lgnu/lists/Pair;

    goto :goto_1b
.end method

.method public getPrevious()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 155
    .local v0, "pair":Lgnu/lists/Pair;
    if-nez v0, :cond_9

    sget-object v1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_8
.end method

.method public getPreviousPair()Lgnu/lists/Pair;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v0, v3, 0x1

    .line 142
    .local v0, "isAfter":I
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 143
    .local v1, "p":Ljava/lang/Object;
    if-lez v0, :cond_17

    .line 144
    if-nez v1, :cond_12

    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 147
    :cond_d
    :goto_d
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v3, :cond_1a

    .line 149
    :goto_11
    return-object v2

    .line 144
    :cond_12
    check-cast v1, Lgnu/lists/Pair;

    .end local v1    # "p":Ljava/lang/Object;
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_d

    .line 145
    .restart local v1    # "p":Ljava/lang/Object;
    :cond_17
    if-nez v1, :cond_d

    goto :goto_11

    :cond_1a
    move-object v2, v1

    .line 149
    check-cast v2, Lgnu/lists/Pair;

    goto :goto_11
.end method

.method public gotoNext()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    iget v3, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    move v0, v4

    .line 172
    .local v0, "isAfter":Z
    :goto_9
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 173
    .local v1, "old_i":I
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 174
    .local v2, "xp":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 176
    if-eqz v0, :cond_15

    .line 177
    check-cast v2, Lgnu/lists/Pair;

    .end local v2    # "xp":Ljava/lang/Object;
    iget-object v2, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .restart local v2    # "xp":Ljava/lang/Object;
    :cond_15
    move-object v3, v2

    .line 178
    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v6, :cond_21

    .line 197
    .end local v2    # "xp":Ljava/lang/Object;
    :cond_1e
    :goto_1e
    return v5

    .end local v0    # "isAfter":Z
    .end local v1    # "old_i":I
    :cond_1f
    move v0, v5

    .line 171
    goto :goto_9

    .line 180
    .restart local v0    # "isAfter":Z
    .restart local v1    # "old_i":I
    .restart local v2    # "xp":Ljava/lang/Object;
    :cond_21
    iput-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 181
    iget v3, p0, Lgnu/lists/LListPosition;->ipos:I

    or-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lgnu/lists/LListPosition;->ipos:I

    .end local v2    # "xp":Ljava/lang/Object;
    :goto_2b
    move v5, v4

    .line 197
    goto :goto_1e

    .line 183
    .restart local v2    # "xp":Ljava/lang/Object;
    :cond_2d
    iget v3, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3d

    .line 185
    iget-object v3, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v6, :cond_1e

    .line 187
    const/4 v3, 0x3

    iput v3, p0, Lgnu/lists/LListPosition;->ipos:I

    goto :goto_2b

    .line 191
    :cond_3d
    iget-object v2, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .local v2, "xp":Lgnu/lists/AbstractSequence;
    move-object v3, v2

    .line 192
    check-cast v3, Lgnu/lists/Pair;

    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v6, :cond_1e

    .line 194
    const/4 v3, 0x5

    iput v3, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 195
    iput-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_2b
.end method

.method public gotoPrevious()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    ushr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_a

    move v1, v2

    .line 212
    :goto_9
    return v1

    .line 204
    :cond_a
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 207
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lgnu/lists/LListPosition;->ipos:I

    move v1, v3

    .line 208
    goto :goto_9

    .line 210
    :cond_18
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->nextIndex()I

    move-result v0

    .line 211
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/LList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v1, v4, v2}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    move v1, v3

    .line 212
    goto :goto_9
.end method

.method public hasNext()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v1, :cond_23

    .line 82
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_17

    .line 83
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v4, :cond_15

    move v1, v2

    :goto_13
    move v2, v1

    .line 90
    :cond_14
    :goto_14
    return v2

    :cond_15
    move v1, v3

    .line 83
    goto :goto_13

    .line 84
    :cond_17
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/Pair;

    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v4, :cond_14

    move v2, v3

    goto :goto_14

    .line 87
    :cond_23
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/Pair;

    iget-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 88
    .local v0, "next":Ljava/lang/Object;
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_33

    .line 89
    check-cast v0, Lgnu/lists/Pair;

    .end local v0    # "next":Ljava/lang/Object;
    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 90
    .restart local v0    # "next":Ljava/lang/Object;
    :cond_33
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_14

    move v2, v3

    goto :goto_14
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lgnu/lists/LListPosition;->ipos:I

    ushr-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "index"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 74
    check-cast p1, Lgnu/lists/LList;

    .end local p1    # "seq":Lgnu/lists/AbstractSequence;
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 75
    return-void
.end method

.method public set(Lgnu/lists/LList;IZ)V
    .registers 8
    .param p1, "seq"    # Lgnu/lists/LList;
    .param p2, "index"    # I
    .param p3, "isAfter"    # Z

    .prologue
    .line 48
    iput-object p1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 49
    shl-int/lit8 v3, p2, 0x1

    if-eqz p3, :cond_1b

    const/4 v2, 0x1

    :goto_7
    or-int/2addr v2, v3

    iput v2, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 50
    move v1, p2

    .line 51
    .local v1, "skip":I
    if-eqz p3, :cond_1d

    .line 53
    add-int/lit8 v1, v1, -0x2

    .line 59
    :goto_f
    if-ltz v1, :cond_23

    .line 61
    move-object v0, p1

    .line 62
    :goto_12
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_20

    .line 64
    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v0, "p":Ljava/lang/Object;
    goto :goto_12

    .line 49
    .end local v0    # "p":Ljava/lang/Object;
    .end local v1    # "skip":I
    :cond_1b
    const/4 v2, 0x0

    goto :goto_7

    .line 57
    .restart local v1    # "skip":I
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 66
    :cond_20
    iput-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 70
    :goto_22
    return-void

    .line 69
    :cond_23
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_22
.end method

.method public setNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 134
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 135
    .local v0, "pair":Lgnu/lists/Pair;
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 160
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 161
    .local v0, "pair":Lgnu/lists/Pair;
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "LListPos["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->isAfter()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    const-string v1, " after"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_1f
    iget v1, p0, Lgnu/lists/LListPosition;->position:I

    if-ltz v1, :cond_2d

    .line 226
    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget v1, p0, Lgnu/lists/LListPosition;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 229
    :cond_2d
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
