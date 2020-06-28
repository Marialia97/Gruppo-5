.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/IntMath$1;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 160
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 163
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 167
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 485
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 533
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    .line 160
    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 163
    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 167
    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 485
    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 533
    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 11
    .param p0, "n"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 508
    const-string v1, "n"

    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 509
    const-string v1, "k"

    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 510
    if-gt p1, p0, :cond_38

    move v1, v4

    :goto_f
    const-string v6, "k (%s) > n (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 511
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_29

    .line 512
    sub-int p1, p0, p1

    .line 514
    :cond_29
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_34

    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_3a

    .line 515
    :cond_34
    const v4, 0x7fffffff

    .line 528
    :goto_37
    :pswitch_37
    return v4

    :cond_38
    move v1, v5

    .line 510
    goto :goto_f

    .line 517
    :cond_3a
    packed-switch p1, :pswitch_data_52

    .line 523
    const-wide/16 v2, 0x1

    .line 524
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    if-ge v0, p1, :cond_4f

    .line 525
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 526
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .end local v0    # "i":I
    .end local v2    # "result":J
    :pswitch_4d
    move v4, p0

    .line 521
    goto :goto_37

    .line 528
    .restart local v0    # "i":I
    .restart local v2    # "result":J
    :cond_4f
    long-to-int v4, v2

    goto :goto_37

    .line 517
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_37
        :pswitch_4d
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 398
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 399
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 400
    long-to-int v2, v0

    return v2

    .line 399
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static checkedMultiply(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 420
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 421
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 422
    long-to-int v2, v0

    return v2

    .line 421
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static checkedPow(II)I
    .registers 7
    .param p0, "b"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 434
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 435
    packed-switch p0, :pswitch_data_5e

    .line 451
    const/4 v0, 0x1

    .line 453
    .local v0, "accum":I
    :cond_c
    :goto_c
    packed-switch p1, :pswitch_data_6c

    .line 459
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_17

    .line 460
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 462
    :cond_17
    shr-int/lit8 p1, p1, 0x1

    .line 463
    if-lez p1, :cond_c

    .line 464
    const v3, -0xb504

    if-gt v3, p0, :cond_5a

    move v4, v1

    :goto_21
    const v3, 0xb504

    if-gt p0, v3, :cond_5c

    move v3, v1

    :goto_27
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 465
    mul-int/2addr p0, p0

    goto :goto_c

    .line 437
    .end local v0    # "accum":I
    :pswitch_2d
    if-nez p1, :cond_30

    .line 457
    :cond_2f
    :goto_2f
    :pswitch_2f
    return v1

    :cond_30
    move v1, v2

    .line 437
    goto :goto_2f

    .line 441
    :pswitch_32
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2f

    move v1, v3

    goto :goto_2f

    .line 443
    :pswitch_38
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_3d

    move v2, v1

    :cond_3d
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 444
    shl-int/2addr v1, p1

    goto :goto_2f

    .line 446
    :pswitch_42
    const/16 v4, 0x20

    if-ge p1, v4, :cond_47

    move v2, v1

    :cond_47
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 447
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_50

    shl-int/2addr v1, p1

    goto :goto_2f

    :cond_50
    shl-int v1, v3, p1

    goto :goto_2f

    .restart local v0    # "accum":I
    :pswitch_53
    move v1, v0

    .line 455
    goto :goto_2f

    .line 457
    :pswitch_55
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    goto :goto_2f

    :cond_5a
    move v4, v2

    .line 464
    goto :goto_21

    :cond_5c
    move v3, v2

    goto :goto_27

    .line 435
    :pswitch_data_5e
    .packed-switch -0x2
        :pswitch_42
        :pswitch_32
        :pswitch_2d
        :pswitch_2f
        :pswitch_38
    .end packed-switch

    .line 453
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_55
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 409
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 410
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 411
    long-to-int v2, v0

    return v2

    .line 410
    :cond_10
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 13
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 264
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    if-nez p1, :cond_f

    .line 266
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_f
    div-int v2, p0, p1

    .line 269
    .local v2, "div":I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 271
    .local v4, "rem":I
    if-nez v4, :cond_18

    .line 316
    .end local v2    # "div":I
    :cond_17
    :goto_17
    return v2

    .line 282
    .restart local v2    # "div":I
    :cond_18
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 284
    .local v5, "signum":I
    sget-object v8, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_76

    .line 314
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 286
    :pswitch_2f
    if-nez v4, :cond_39

    :goto_31
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 289
    :pswitch_34
    const/4 v3, 0x0

    .line 316
    .local v3, "increment":Z
    :goto_35
    if-eqz v3, :cond_17

    add-int/2addr v2, v5

    goto :goto_17

    .end local v3    # "increment":Z
    :cond_39
    move v6, v7

    .line 286
    goto :goto_31

    .line 292
    :pswitch_3b
    const/4 v3, 0x1

    .line 293
    .restart local v3    # "increment":Z
    goto :goto_35

    .line 295
    .end local v3    # "increment":Z
    :pswitch_3d
    if-lez v5, :cond_41

    move v3, v6

    .line 296
    .restart local v3    # "increment":Z
    :goto_40
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_41
    move v3, v7

    .line 295
    goto :goto_40

    .line 298
    :pswitch_43
    if-gez v5, :cond_47

    move v3, v6

    .line 299
    .restart local v3    # "increment":Z
    :goto_46
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_47
    move v3, v7

    .line 298
    goto :goto_46

    .line 303
    :pswitch_49
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 304
    .local v0, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 307
    .local v1, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_6f

    .line 308
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_67

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_69

    move v9, v6

    :goto_5f
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_6b

    move v8, v6

    :goto_64
    and-int/2addr v8, v9

    if-eqz v8, :cond_6d

    :cond_67
    move v3, v6

    .restart local v3    # "increment":Z
    :goto_68
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_69
    move v9, v7

    goto :goto_5f

    :cond_6b
    move v8, v7

    goto :goto_64

    :cond_6d
    move v3, v7

    goto :goto_68

    .line 310
    :cond_6f
    if-lez v1, :cond_73

    move v3, v6

    .line 312
    .restart local v3    # "increment":Z
    :goto_72
    goto :goto_35

    .end local v3    # "increment":Z
    :cond_73
    move v3, v7

    .line 310
    goto :goto_72

    .line 284
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_34
        :pswitch_43
        :pswitch_3b
        :pswitch_3d
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2
    .param p0, "n"    # I

    .prologue
    .line 481
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 482
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_e
    return v0

    :cond_f
    const v0, 0x7fffffff

    goto :goto_e
.end method

.method public static gcd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 353
    const-string v4, "a"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 354
    const-string v4, "b"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 355
    if-nez p0, :cond_e

    move p0, p1

    .line 389
    .end local p0    # "a":I
    :cond_d
    :goto_d
    return p0

    .line 359
    .restart local p0    # "a":I
    :cond_e
    if-eqz p1, :cond_d

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 367
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 369
    .local v1, "bTwos":I
    shr-int/2addr p1, v1

    .line 370
    :goto_1a
    if-eq p0, p1, :cond_2d

    .line 378
    sub-int v2, p0, p1

    .line 380
    .local v2, "delta":I
    shr-int/lit8 v4, v2, 0x1f

    and-int v3, v2, v4

    .line 383
    .local v3, "minDeltaOrZero":I
    sub-int v4, v2, v3

    sub-int p0, v4, v3

    .line 386
    add-int/2addr p1, v3

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr p0, v4

    .line 388
    goto :goto_1a

    .line 389
    .end local v2    # "delta":I
    .end local v3    # "minDeltaOrZero":I
    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    shl-int/2addr p0, v4

    goto :goto_d
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-lez p0, :cond_c

    move v2, v0

    :goto_5
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_e

    :goto_a
    and-int/2addr v0, v2

    return v0

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_a
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 117
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 118
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 119
    .local v1, "logFloor":I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v2, v1

    .line 120
    .local v0, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    .line 136
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 122
    :pswitch_1e
    if-ne p0, v0, :cond_25

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 134
    .end local v1    # "logFloor":I
    :cond_24
    :goto_24
    :pswitch_24
    return v1

    .line 122
    .restart local v1    # "logFloor":I
    :cond_25
    const/4 v2, 0x0

    goto :goto_21

    .line 129
    :pswitch_27
    if-eq p0, v0, :cond_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 134
    :pswitch_2c
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v1

    if-le p0, v2, :cond_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 120
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_27
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 5
    .param p0, "x"    # I

    .prologue
    .line 148
    sget-object v2, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    aget-byte v1, v2, v3

    .line 151
    .local v1, "y":I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v2, v2, v1

    sub-int v2, p0, v2

    ushr-int/lit8 v0, v2, 0x1f

    .line 156
    .local v0, "sgn":I
    sub-int v2, v1, v0

    return v2
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 76
    const-string v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 77
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3e

    .line 100
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 79
    :pswitch_16
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 83
    :pswitch_1d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x1f

    .line 97
    :cond_23
    :goto_23
    return v2

    .line 87
    :pswitch_24
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x20

    goto :goto_23

    .line 93
    :pswitch_2d
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 94
    .local v1, "leadingZeros":I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 96
    .local v0, "cmp":I
    rsub-int/lit8 v2, v1, 0x1f

    .line 97
    .local v2, "logFloor":I
    if-le p0, v0, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 77
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1d
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 563
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "m"    # I

    .prologue
    .line 334
    if-gtz p1, :cond_21

    .line 335
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_21
    rem-int v0, p0, p1

    .line 338
    .local v0, "result":I
    if-ltz v0, :cond_26

    .end local v0    # "result":I
    :goto_25
    return v0

    .restart local v0    # "result":I
    :cond_26
    add-int/2addr v0, p1

    goto :goto_25
.end method

.method public static pow(II)I
    .registers 7
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 182
    packed-switch p0, :pswitch_data_40

    .line 200
    const/4 v0, 0x1

    .line 201
    .local v0, "accum":I
    :goto_d
    packed-switch p1, :pswitch_data_4e

    .line 207
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3d

    move v2, v1

    :goto_15
    mul-int/2addr v0, v2

    .line 208
    mul-int/2addr p0, p0

    .line 200
    shr-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 184
    .end local v0    # "accum":I
    :pswitch_1a
    if-nez p1, :cond_1d

    .line 205
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v1

    :cond_1d
    move v1, v2

    .line 184
    goto :goto_1c

    .line 188
    :pswitch_1f
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1c

    const/4 v1, -0x1

    goto :goto_1c

    .line 190
    :pswitch_25
    if-ge p1, v4, :cond_29

    shl-int v2, v1, p1

    :cond_29
    move v1, v2

    goto :goto_1c

    .line 192
    :pswitch_2b
    if-ge p1, v4, :cond_36

    .line 193
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_33

    shl-int/2addr v1, p1

    goto :goto_1c

    :cond_33
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_1c

    :cond_36
    move v1, v2

    .line 195
    goto :goto_1c

    .restart local v0    # "accum":I
    :pswitch_38
    move v1, v0

    .line 203
    goto :goto_1c

    .line 205
    :pswitch_3a
    mul-int v1, p0, v0

    goto :goto_1c

    :cond_3d
    move v2, p0

    .line 207
    goto :goto_15

    .line 182
    nop

    :pswitch_data_40
    .packed-switch -0x2
        :pswitch_2b
        :pswitch_1f
        :pswitch_1a
        :pswitch_1c
        :pswitch_25
    .end packed-switch

    .line 201
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 8
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    const-string v4, "x"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 224
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 225
    .local v1, "sqrtFloor":I
    sget-object v4, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_40

    .line 245
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 227
    :pswitch_1c
    mul-int v4, v1, v1

    if-ne v4, p0, :cond_24

    :goto_20
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 243
    .end local v1    # "sqrtFloor":I
    :cond_23
    :goto_23
    :pswitch_23
    return v1

    .restart local v1    # "sqrtFloor":I
    :cond_24
    move v2, v3

    .line 227
    goto :goto_20

    .line 233
    :pswitch_26
    mul-int v2, v1, v1

    if-eq v2, p0, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 237
    :pswitch_2d
    mul-int v4, v1, v1

    add-int v0, v4, v1

    .line 243
    .local v0, "halfSquare":I
    if-gt p0, v0, :cond_3c

    move v4, v2

    :goto_34
    if-gez v0, :cond_3e

    :goto_36
    or-int/2addr v2, v4

    if-nez v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3c
    move v4, v3

    goto :goto_34

    :cond_3e
    move v2, v3

    goto :goto_36

    .line 225
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_26
        :pswitch_26
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 252
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
