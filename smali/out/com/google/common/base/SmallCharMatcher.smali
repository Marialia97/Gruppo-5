.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "no precomputation is done in GWT"
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .registers 6
    .param p1, "table"    # [C
    .param p2, "filter"    # J
    .param p4, "containsZero"    # Z
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 42
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 43
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 44
    return-void
.end method

.method private checkFilter(I)Z
    .registers 6
    .param p1, "c"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 62
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static chooseTableSize(I)I
    .registers 7
    .param p0, "setSize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .line 79
    const/4 v0, 0x2

    .line 87
    :cond_4
    return v0

    .line 83
    :cond_5
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 84
    .local v0, "tableSize":I
    :goto_d
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 85
    shl-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 14
    .param p0, "chars"    # Ljava/util/BitSet;
    .param p1, "description"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .local v2, "filter":J
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v9

    .line 95
    .local v9, "size":I
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 97
    .local v4, "containsZero":Z
    invoke-static {v9}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v1, v0, [C

    .line 98
    .local v1, "table":[C
    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    .line 99
    .local v8, "mask":I
    invoke-virtual {p0, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .local v6, "c":I
    :goto_18
    const/4 v0, -0x1

    if-eq v6, v0, :cond_38

    .line 101
    const-wide/16 v10, 0x1

    shl-long/2addr v10, v6

    or-long/2addr v2, v10

    .line 102
    invoke-static {v6}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v0

    and-int v7, v0, v8

    .line 105
    .local v7, "index":I
    :goto_25
    aget-char v0, v1, v7

    if-nez v0, :cond_33

    .line 106
    int-to-char v0, v6

    aput-char v0, v1, v7

    .line 99
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_18

    .line 110
    :cond_33
    add-int/lit8 v0, v7, 0x1

    and-int v7, v0, v8

    goto :goto_25

    .line 113
    .end local v7    # "index":I
    :cond_38
    new-instance v0, Lcom/google/common/base/SmallCharMatcher;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v0
.end method

.method static smear(I)I
    .registers 4
    .param p0, "hashCode"    # I

    .prologue
    .line 58
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public matches(C)Z
    .registers 7
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x0

    .line 118
    if-nez p1, :cond_6

    .line 119
    iget-boolean v3, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    .line 140
    :cond_5
    :goto_5
    return v3

    .line 121
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 124
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 125
    .local v1, "mask":I
    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v4

    and-int v2, v4, v1

    .line 126
    .local v2, "startingIndex":I
    move v0, v2

    .line 129
    .local v0, "index":I
    :cond_18
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_5

    .line 132
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_26

    .line 133
    const/4 v3, 0x1

    goto :goto_5

    .line 136
    :cond_26
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    .line 139
    if-ne v0, v2, :cond_18

    goto :goto_5
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 7
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 146
    iget-boolean v4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    if-eqz v4, :cond_8

    .line 147
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 149
    :cond_8
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_18

    aget-char v1, v0, v2

    .line 150
    .local v1, "c":C
    if-eqz v1, :cond_15

    .line 151
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 149
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 154
    .end local v1    # "c":C
    :cond_18
    return-void
.end method
