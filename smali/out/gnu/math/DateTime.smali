.class public Lgnu/math/DateTime;
.super Lgnu/math/Quantity;
.source "DateTime.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DATE_MASK:I = 0xe

.field static final DAY_COMPONENT:I = 0x3

.field public static final DAY_MASK:I = 0x8

.field public static GMT:Ljava/util/TimeZone; = null

.field static final HOURS_COMPONENT:I = 0x4

.field public static final HOURS_MASK:I = 0x10

.field static final MINUTES_COMPONENT:I = 0x5

.field public static final MINUTES_MASK:I = 0x20

.field static final MONTH_COMPONENT:I = 0x2

.field public static final MONTH_MASK:I = 0x4

.field static final SECONDS_COMPONENT:I = 0x6

.field public static final SECONDS_MASK:I = 0x40

.field static final TIMEZONE_COMPONENT:I = 0x7

.field public static final TIMEZONE_MASK:I = 0x80

.field public static final TIME_MASK:I = 0x70

.field static final YEAR_COMPONENT:I = 0x1

.field public static final YEAR_MASK:I = 0x2

.field private static final minDate:Ljava/util/Date;


# instance fields
.field calendar:Ljava/util/GregorianCalendar;

.field mask:I

.field nanoSeconds:I

.field unit:Lgnu/math/Unit;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    .line 229
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "mask"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 96
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    sget-object v1, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 97
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 98
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/util/GregorianCalendar;)V
    .registers 4
    .param p1, "mask"    # I
    .param p2, "calendar"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 102
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 103
    iput-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 104
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    .line 105
    return-void
.end method

.method public static add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;
    .registers 27
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # Lgnu/math/Duration;
    .param p2, "k"    # I

    .prologue
    .line 513
    move-object/from16 v0, p1

    iget-object v15, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v16, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_20

    move-object/from16 v0, p1

    iget-object v15, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v16, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_28

    move-object/from16 v0, p0

    iget v15, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v15, v15, 0xe

    const/16 v16, 0xe

    move/from16 v0, v16

    if-eq v15, v0, :cond_28

    .line 515
    :cond_20
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "invalid date/time +/- duration combinatuion"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 516
    :cond_28
    new-instance v9, Lgnu/math/DateTime;

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/DateTime;->mask:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v15}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/GregorianCalendar;

    move/from16 v0, v16

    invoke-direct {v9, v0, v15}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 517
    .local v9, "r":Lgnu/math/DateTime;
    move-object/from16 v0, p1

    iget v15, v0, Lgnu/math/Duration;->months:I

    if-eqz v15, :cond_83

    .line 519
    invoke-virtual {v9}, Lgnu/math/DateTime;->getYear()I

    move-result v15

    mul-int/lit8 v15, v15, 0xc

    iget-object v0, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v16

    add-int v8, v15, v16

    .line 520
    .local v8, "month":I
    move-object/from16 v0, p1

    iget v15, v0, Lgnu/math/Duration;->months:I

    mul-int v15, v15, p2

    add-int/2addr v8, v15

    .line 521
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 523
    .local v2, "day":I
    const/16 v15, 0xc

    if-lt v8, v15, :cond_e5

    .line 525
    div-int/lit8 v14, v8, 0xc

    .line 526
    .local v14, "year":I
    rem-int/lit8 v8, v8, 0xc

    .line 527
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/util/GregorianCalendar;->set(II)V

    .line 528
    invoke-static {v8, v14}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v3

    .line 539
    .local v3, "daysInMonth":I
    :goto_7b
    if-le v2, v3, :cond_7e

    .line 540
    move v2, v3

    .line 541
    :cond_7e
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v15, v14, v8, v2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 543
    .end local v2    # "day":I
    .end local v3    # "daysInMonth":I
    .end local v8    # "month":I
    .end local v14    # "year":I
    :cond_83
    move-object/from16 v0, p0

    iget v15, v0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lgnu/math/Duration;->seconds:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x3b9aca00

    mul-long v20, v20, v22

    move-object/from16 v0, p1

    iget v15, v0, Lgnu/math/Duration;->nanos:I

    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    mul-long v18, v18, v20

    add-long v10, v16, v18

    .line 544
    .local v10, "nanos":J
    const-wide/16 v16, 0x0

    cmp-long v15, v10, v16

    if-eqz v15, :cond_e4

    .line 546
    move-object/from16 v0, p0

    iget v15, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v15, v15, 0x70

    if-nez v15, :cond_c4

    .line 548
    const-wide v12, 0x4e94914f0000L

    .line 549
    .local v12, "nanosPerDay":J
    rem-long v6, v10, v12

    .line 550
    .local v6, "mod":J
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_c3

    .line 551
    add-long/2addr v6, v12

    .line 552
    :cond_c3
    sub-long/2addr v10, v6

    .line 554
    .end local v6    # "mod":J
    .end local v12    # "nanosPerDay":J
    :cond_c4
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v15}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 555
    .local v4, "millis":J
    const-wide/32 v16, 0x3b9aca00

    div-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    add-long v4, v4, v16

    .line 556
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v15, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 557
    const-wide/32 v16, 0x3b9aca00

    rem-long v16, v10, v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v9, Lgnu/math/DateTime;->nanoSeconds:I

    .line 559
    .end local v4    # "millis":J
    :cond_e4
    return-object v9

    .line 532
    .end local v10    # "nanos":J
    .restart local v2    # "day":I
    .restart local v8    # "month":I
    :cond_e5
    rsub-int/lit8 v8, v8, 0xb

    .line 533
    iget-object v15, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Ljava/util/GregorianCalendar;->set(II)V

    .line 534
    div-int/lit8 v15, v8, 0xc

    add-int/lit8 v14, v15, 0x1

    .line 535
    .restart local v14    # "year":I
    rem-int/lit8 v15, v8, 0xc

    rsub-int/lit8 v8, v15, 0xb

    .line 536
    const/4 v15, 0x1

    invoke-static {v8, v15}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v3

    .restart local v3    # "daysInMonth":I
    goto/16 :goto_7b
.end method

.method public static addMinutes(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .registers 3
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # I

    .prologue
    .line 564
    mul-int/lit8 v0, p1, 0x3c

    invoke-static {p0, v0}, Lgnu/math/DateTime;->addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .registers 14
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # I

    .prologue
    const-wide/32 v10, 0xf4240

    .line 569
    new-instance v4, Lgnu/math/DateTime;

    iget v6, p0, Lgnu/math/DateTime;->mask:I

    iget-object v5, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v6, v5}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 570
    .local v4, "r":Lgnu/math/DateTime;
    int-to-long v6, p1

    const-wide/32 v8, 0x3b9aca00

    mul-long v2, v6, v8

    .line 571
    .local v2, "nanos":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_35

    .line 573
    iget v5, p0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 574
    iget-object v5, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 575
    .local v0, "millis":J
    div-long v6, v2, v10

    add-long/2addr v0, v6

    .line 576
    iget-object v5, v4, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 577
    rem-long v6, v2, v10

    long-to-int v5, v6

    iput v5, v4, Lgnu/math/DateTime;->nanoSeconds:I

    .line 579
    .end local v0    # "millis":J
    :cond_35
    return-object v4
.end method

.method private static append(ILjava/lang/StringBuffer;I)V
    .registers 7
    .param p0, "value"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "minWidth"    # I

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 601
    .local v1, "start":I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    add-int v2, v1, p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 603
    .local v0, "padding":I
    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 604
    const/16 v2, 0x30

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 605
    :cond_19
    return-void
.end method

.method public static compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I
    .registers 10
    .param p0, "date1"    # Lgnu/math/DateTime;
    .param p1, "date2"    # Lgnu/math/DateTime;

    .prologue
    .line 429
    iget-object v6, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 430
    .local v0, "millis1":J
    iget-object v6, p1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 431
    .local v2, "millis2":J
    iget v6, p0, Lgnu/math/DateTime;->mask:I

    iget v7, p1, Lgnu/math/DateTime;->mask:I

    or-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xe

    if-nez v6, :cond_29

    .line 433
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1f

    const-wide/32 v6, 0x5265c00

    add-long/2addr v0, v6

    .line 434
    :cond_1f
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_29

    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    .line 436
    :cond_29
    iget v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 437
    .local v4, "nanos1":I
    iget v5, p1, Lgnu/math/DateTime;->nanoSeconds:I

    .line 438
    .local v5, "nanos2":I
    const v6, 0xf4240

    div-int v6, v4, v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 439
    const v6, 0xf4240

    div-int v6, v5, v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 440
    const v6, 0xf4240

    rem-int/2addr v4, v6

    .line 441
    const v6, 0xf4240

    rem-int/2addr v5, v6

    .line 442
    cmp-long v6, v0, v2

    if-gez v6, :cond_49

    const/4 v6, -0x1

    :goto_48
    return v6

    :cond_49
    cmp-long v6, v0, v2

    if-lez v6, :cond_4f

    const/4 v6, 0x1

    goto :goto_48

    :cond_4f
    if-ge v4, v5, :cond_53

    const/4 v6, -0x1

    goto :goto_48

    :cond_53
    if-le v4, v5, :cond_57

    const/4 v6, 0x1

    goto :goto_48

    :cond_57
    const/4 v6, 0x0

    goto :goto_48
.end method

.method public static daysInMonth(II)I
    .registers 3
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_16

    .line 225
    :pswitch_3
    const/16 v0, 0x1f

    :goto_5
    return v0

    .line 221
    :pswitch_6
    const/16 v0, 0x1e

    goto :goto_5

    .line 223
    :pswitch_9
    invoke-static {p1}, Lgnu/math/DateTime;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1d

    goto :goto_5

    :cond_12
    const/16 v0, 0x1c

    goto :goto_5

    .line 215
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static isLeapYear(I)Z
    .registers 2
    .param p0, "year"    # I

    .prologue
    .line 210
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static minutesToTimeZone(I)Ljava/util/TimeZone;
    .registers 3
    .param p0, "minutes"    # I

    .prologue
    .line 663
    if-nez p0, :cond_5

    .line 664
    sget-object v1, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    .line 667
    :goto_4
    return-object v1

    .line 665
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_4
.end method

.method public static parse(Ljava/lang/String;I)Lgnu/math/DateTime;
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "mask"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    new-instance v2, Lgnu/math/DateTime;

    invoke-direct {v2, p1}, Lgnu/math/DateTime;-><init>(I)V

    .line 110
    .local v2, "result":Lgnu/math/DateTime;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 112
    .local v0, "len":I
    const/4 v1, 0x0

    .line 113
    .local v1, "pos":I
    and-int/lit8 v6, p1, 0xe

    if-eqz v6, :cond_59

    move v3, v4

    .line 114
    .local v3, "wantDate":Z
    :goto_15
    and-int/lit8 v6, p1, 0x70

    if-eqz v6, :cond_5b

    .line 115
    .local v4, "wantTime":Z
    :goto_19
    if-eqz v3, :cond_2e

    .line 117
    invoke-virtual {v2, p0, v1, p1}, Lgnu/math/DateTime;->parseDate(Ljava/lang/String;II)I

    move-result v1

    .line 118
    if-eqz v4, :cond_2e

    .line 120
    if-ltz v1, :cond_2d

    if-ge v1, v0, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_5d

    .line 121
    :cond_2d
    const/4 v1, -0x1

    .line 126
    :cond_2e
    :goto_2e
    if-eqz v4, :cond_34

    .line 127
    invoke-virtual {v2, p0, v1}, Lgnu/math/DateTime;->parseTime(Ljava/lang/String;I)I

    move-result v1

    .line 128
    :cond_34
    invoke-virtual {v2, p0, v1}, Lgnu/math/DateTime;->parseZone(Ljava/lang/String;I)I

    move-result v1

    .line 129
    if-eq v1, v0, :cond_60

    .line 130
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized date/time \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "wantDate":Z
    .end local v4    # "wantTime":Z
    :cond_59
    move v3, v5

    .line 113
    goto :goto_15

    .restart local v3    # "wantDate":Z
    :cond_5b
    move v4, v5

    .line 114
    goto :goto_19

    .line 123
    .restart local v4    # "wantTime":Z
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 131
    :cond_60
    return-object v2
.end method

.method private static parseDigits(Ljava/lang/String;I)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    .line 359
    move v2, p1

    .line 360
    .local v2, "i":I
    const/4 v4, -0x1

    .line 361
    .local v4, "val":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 362
    .local v3, "len":I
    :goto_6
    if-ge v2, v3, :cond_14

    .line 364
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "ch":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 366
    .local v1, "dig":I
    if-gez v1, :cond_17

    .line 373
    .end local v0    # "ch":C
    .end local v1    # "dig":I
    :cond_14
    if-gez v4, :cond_28

    .end local v2    # "i":I
    :goto_16
    return v2

    .line 368
    .restart local v0    # "ch":C
    .restart local v1    # "dig":I
    .restart local v2    # "i":I
    :cond_17
    const/16 v5, 0x4e20

    if-le v4, v5, :cond_1d

    .line 369
    const/4 v2, 0x0

    goto :goto_16

    .line 370
    :cond_1d
    if-gez v4, :cond_23

    move v4, v1

    .line 371
    :goto_20
    add-int/lit8 v2, v2, 0x1

    .line 372
    goto :goto_6

    .line 370
    :cond_23
    mul-int/lit8 v5, v4, 0xa

    add-int v4, v5, v1

    goto :goto_20

    .line 373
    .end local v0    # "ch":C
    .end local v1    # "dig":I
    :cond_28
    shl-int/lit8 v5, v4, 0x10

    or-int/2addr v2, v5

    goto :goto_16
.end method

.method public static sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;
    .registers 20
    .param p0, "date1"    # Lgnu/math/DateTime;
    .param p1, "date2"    # Lgnu/math/DateTime;

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v11, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 456
    .local v4, "millis1":J
    move-object/from16 v0, p1

    iget-object v11, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    .line 457
    .local v6, "millis2":J
    move-object/from16 v0, p0

    iget v9, v0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 458
    .local v9, "nanos1":I
    move-object/from16 v0, p1

    iget v10, v0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 459
    .local v10, "nanos2":I
    const v11, 0xf4240

    div-int v11, v9, v11

    int-to-long v14, v11

    add-long/2addr v4, v14

    .line 460
    const v11, 0xf4240

    div-int v11, v10, v11

    int-to-long v14, v11

    add-long/2addr v6, v14

    .line 461
    const v11, 0xf4240

    rem-int/2addr v9, v11

    .line 462
    const v11, 0xf4240

    rem-int/2addr v10, v11

    .line 463
    sub-long v2, v4, v6

    .line 464
    .local v2, "millis":J
    const-wide/16 v14, 0x3e8

    div-long v12, v2, v14

    .line 465
    .local v12, "seconds":J
    const-wide/16 v14, 0x3e8

    rem-long v14, v2, v14

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v10

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v8, v14

    .line 466
    .local v8, "nanos":I
    const v11, 0x3b9aca00

    div-int v11, v8, v11

    int-to-long v14, v11

    add-long/2addr v12, v14

    .line 467
    const v11, 0x3b9aca00

    rem-int/2addr v8, v11

    .line 468
    const/4 v11, 0x0

    sget-object v14, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {v11, v12, v13, v8, v14}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v11

    return-object v11
.end method

.method public static toStringZone(ILjava/lang/StringBuffer;)V
    .registers 4
    .param p0, "minutes"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x2

    .line 683
    if-nez p0, :cond_9

    .line 684
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 698
    :goto_8
    return-void

    .line 687
    :cond_9
    if-gez p0, :cond_21

    .line 689
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 690
    neg-int p0, p0

    .line 694
    :goto_11
    div-int/lit8 v0, p0, 0x3c

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 695
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    rem-int/lit8 v0, p0, 0x3c

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    goto :goto_8

    .line 693
    :cond_21
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 4
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .prologue
    .line 584
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_b

    .line 585
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    .line 587
    :goto_a
    return-object v0

    .line 586
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 587
    check-cast p1, Lgnu/math/DateTime;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/DateTime;->sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;

    move-result-object v0

    goto :goto_a

    .line 588
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .registers 4
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .prologue
    .line 593
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    .line 594
    check-cast p1, Lgnu/math/Duration;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-static {p0, p1, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0

    .line 595
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public adjustTimezone(I)Lgnu/math/DateTime;
    .registers 10
    .param p1, "newOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 483
    new-instance v2, Lgnu/math/DateTime;

    iget v6, p0, Lgnu/math/DateTime;->mask:I

    iget-object v5, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v6, v5}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 485
    .local v2, "r":Lgnu/math/DateTime;
    if-nez p1, :cond_48

    .line 486
    sget-object v4, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    .line 493
    .local v4, "zone":Ljava/util/TimeZone;
    :goto_14
    iget-object v5, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v4}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    iget v5, v2, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5b

    .line 496
    iget-object v5, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 497
    .local v0, "millis":J
    iget-object v5, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 498
    iget v5, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v5, v5, 0x70

    if-nez v5, :cond_47

    .line 500
    iget-object v5, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 501
    iget-object v5, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 502
    iget-object v5, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 503
    iput v7, v2, Lgnu/math/DateTime;->nanoSeconds:I

    .line 508
    .end local v0    # "millis":J
    :cond_47
    :goto_47
    return-object v2

    .line 489
    .end local v4    # "zone":Ljava/util/TimeZone;
    :cond_48
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "GMT"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p1, v3}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .restart local v4    # "zone":Ljava/util/TimeZone;
    goto :goto_14

    .line 507
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    :cond_5b
    iget v5, v2, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Lgnu/math/DateTime;->mask:I

    goto :goto_47
.end method

.method public cast(I)Lgnu/math/DateTime;
    .registers 7
    .param p1, "newComponents"    # I

    .prologue
    .line 55
    iget v3, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v2, v3, -0x81

    .line 56
    .local v2, "oldComponents":I
    if-ne p1, v2, :cond_7

    .line 87
    .end local p0    # "this":Lgnu/math/DateTime;
    :goto_6
    return-object p0

    .line 58
    .restart local p0    # "this":Lgnu/math/DateTime;
    :cond_7
    new-instance v0, Lgnu/math/DateTime;

    iget-object v3, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1, v3}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 60
    .local v0, "copy":Lgnu/math/DateTime;
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p1

    if-eqz v3, :cond_29

    const/16 v3, 0xe

    if-ne v2, v3, :cond_21

    const/16 v3, 0x7e

    if-eq p1, v3, :cond_29

    .line 64
    :cond_21
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "cannot cast DateTime - missing conponents"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_29
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 66
    iget v3, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v0, Lgnu/math/DateTime;->mask:I

    .line 69
    :goto_35
    xor-int/lit8 v3, p1, -0x1

    and-int v1, v2, v3

    .line 70
    .local v1, "extraComponents":I
    and-int/lit8 v3, v1, 0x70

    if-eqz v3, :cond_7f

    .line 72
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 73
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 74
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 78
    :goto_52
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_62

    .line 80
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 81
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 83
    :cond_62
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_6c

    .line 84
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 85
    :cond_6c
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_76

    .line 86
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    :cond_76
    move-object p0, v0

    .line 87
    goto :goto_6

    .line 68
    .end local v1    # "extraComponents":I
    :cond_78
    iget v3, v0, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v0, Lgnu/math/DateTime;->mask:I

    goto :goto_35

    .line 77
    .restart local v1    # "extraComponents":I
    :cond_7f
    iget v3, p0, Lgnu/math/DateTime;->nanoSeconds:I

    iput v3, v0, Lgnu/math/DateTime;->nanoSeconds:I

    goto :goto_52
.end method

.method public compare(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 448
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_b

    .line 449
    check-cast p1, Lgnu/math/DateTime;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v0

    .line 450
    :goto_a
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    goto :goto_a
.end method

.method public components()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, -0x81

    return v0
.end method

.method public getDay()I
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNanoSecondsOnly()I
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    return v0
.end method

.method public getSecondsOnly()I
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getWholeSeconds()I
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 4

    .prologue
    .line 378
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 379
    .local v0, "year":I
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-nez v1, :cond_12

    .line 380
    rsub-int/lit8 v0, v0, 0x1

    .line 381
    :cond_12
    return v0
.end method

.method public getZoneMinutes()I
    .registers 3

    .prologue
    .line 655
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 725
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isZero()Z
    .registers 3

    .prologue
    .line 730
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DateTime.isZero not meaningful!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoneUnspecified()Z
    .registers 2

    .prologue
    .line 650
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public number()Lgnu/math/Complex;
    .registers 3

    .prologue
    .line 736
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseDate(Ljava/lang/String;II)I
    .registers 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "mask"    # I

    .prologue
    .line 136
    if-gez p2, :cond_4

    move v6, p2

    .line 205
    :cond_3
    :goto_3
    return v6

    .line 138
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 139
    .local v1, "len":I
    const/4 v4, 0x0

    .line 140
    .local v4, "negYear":Z
    if-ge p2, v1, :cond_16

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_16

    .line 142
    add-int/lit8 p2, p2, 0x1

    .line 143
    const/4 v4, 0x1

    .line 145
    :cond_16
    move v6, p2

    .line 147
    .local v6, "pos":I
    and-int/lit8 v8, p3, 0x2

    if-nez v8, :cond_30

    .line 149
    if-nez v4, :cond_1f

    .line 150
    const/4 v6, -0x1

    goto :goto_3

    .line 151
    :cond_1f
    const/4 v7, -0x1

    .line 168
    .local v7, "year":I
    :goto_20
    and-int/lit8 v8, p3, 0xc

    if-eqz v8, :cond_3

    .line 170
    if-ge v6, v1, :cond_2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_68

    .line 171
    :cond_2e
    const/4 v6, -0x1

    goto :goto_3

    .line 155
    .end local v7    # "year":I
    :cond_30
    invoke-static {p1, v6}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v5

    .line 156
    .local v5, "part":I
    shr-int/lit8 v7, v5, 0x10

    .line 157
    .restart local v7    # "year":I
    const v8, 0xffff

    and-int v6, v5, v8

    .line 158
    add-int/lit8 v8, p2, 0x4

    if-eq v6, v8, :cond_4d

    add-int/lit8 v8, p2, 0x4

    if-le v6, v8, :cond_4b

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_4d

    .line 159
    :cond_4b
    const/4 v6, -0x1

    goto :goto_3

    .line 160
    :cond_4d
    if-nez v4, :cond_51

    if-nez v7, :cond_61

    .line 162
    :cond_51
    iget-object v8, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 163
    iget-object v8, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x1

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_20

    .line 166
    :cond_61
    iget-object v8, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_20

    .line 172
    .end local v5    # "part":I
    :cond_68
    add-int/lit8 v6, v6, 0x1

    move p2, v6

    .line 173
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_a0

    .line 175
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v5

    .line 176
    .restart local v5    # "part":I
    shr-int/lit8 v3, v5, 0x10

    .line 177
    .local v3, "month":I
    const v8, 0xffff

    and-int v6, v5, v8

    .line 178
    if-lez v3, :cond_84

    const/16 v8, 0xc

    if-gt v3, v8, :cond_84

    add-int/lit8 v8, p2, 0x2

    if-eq v6, v8, :cond_87

    .line 179
    :cond_84
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 180
    :cond_87
    iget-object v8, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x2

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 181
    and-int/lit8 v8, p3, 0x8

    if-eqz v8, :cond_3

    .line 186
    .end local v5    # "part":I
    :goto_93
    if-ge v6, v1, :cond_9d

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_a2

    .line 187
    :cond_9d
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 185
    .end local v3    # "month":I
    :cond_a0
    const/4 v3, -0x1

    .restart local v3    # "month":I
    goto :goto_93

    .line 188
    :cond_a2
    add-int/lit8 p2, v6, 0x1

    .line 189
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v5

    .line 190
    .restart local v5    # "part":I
    shr-int/lit8 v0, v5, 0x10

    .line 191
    .local v0, "day":I
    const v8, 0xffff

    and-int v6, v5, v8

    .line 192
    if-lez v0, :cond_d3

    add-int/lit8 v8, p2, 0x2

    if-ne v6, v8, :cond_d3

    .line 195
    and-int/lit8 v8, p3, 0x4

    if-nez v8, :cond_c5

    .line 196
    const/16 v2, 0x1f

    .line 199
    .end local v7    # "year":I
    .local v2, "maxDay":I
    :goto_bb
    if-gt v0, v2, :cond_d3

    .line 201
    iget-object v8, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_3

    .line 198
    .end local v2    # "maxDay":I
    .restart local v7    # "year":I
    :cond_c5
    add-int/lit8 v8, v3, -0x1

    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_d0

    .end local v7    # "year":I
    :goto_cb
    invoke-static {v8, v7}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v2

    .restart local v2    # "maxDay":I
    goto :goto_bb

    .end local v2    # "maxDay":I
    .restart local v7    # "year":I
    :cond_d0
    const/16 v7, 0x7d0

    goto :goto_cb

    .line 205
    .end local v7    # "year":I
    :cond_d3
    const/4 v6, -0x1

    goto/16 :goto_3
.end method

.method parseTime(Ljava/lang/String;I)I
    .registers 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 299
    if-gez p2, :cond_4

    move v8, p2

    .line 353
    :goto_3
    return v8

    .line 301
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 302
    .local v2, "len":I
    move v8, p2

    .line 303
    .local v8, "pos":I
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v7

    .line 304
    .local v7, "part":I
    shr-int/lit8 v1, v7, 0x10

    .line 305
    .local v1, "hour":I
    const v10, 0xffff

    and-int v8, v7, v10

    .line 306
    const/16 v10, 0x18

    if-gt v1, v10, :cond_d1

    add-int/lit8 v10, p2, 0x2

    if-ne v8, v10, :cond_d1

    if-eq v8, v2, :cond_d1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_d1

    .line 308
    add-int/lit8 p2, v8, 0x1

    .line 309
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v7

    .line 310
    shr-int/lit8 v3, v7, 0x10

    .line 311
    .local v3, "minute":I
    const v10, 0xffff

    and-int v8, v7, v10

    .line 312
    const/16 v10, 0x3c

    if-ge v3, v10, :cond_d1

    add-int/lit8 v10, p2, 0x2

    if-ne v8, v10, :cond_d1

    if-eq v8, v2, :cond_d1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_d1

    .line 315
    add-int/lit8 p2, v8, 0x1

    .line 316
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v7

    .line 317
    shr-int/lit8 v9, v7, 0x10

    .line 318
    .local v9, "second":I
    const v10, 0xffff

    and-int v8, v7, v10

    .line 320
    const/16 v10, 0x3c

    if-ge v9, v10, :cond_d1

    add-int/lit8 v10, p2, 0x2

    if-ne v8, v10, :cond_d1

    .line 322
    add-int/lit8 v10, v8, 0x1

    if-ge v10, v2, :cond_ab

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_ab

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-ltz v10, :cond_ab

    .line 325
    add-int/lit8 p2, v8, 0x1

    .line 326
    move v8, p2

    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, "nanos":I
    const/4 v5, 0x0

    .line 329
    .local v5, "nfrac":I
    :goto_79
    if-ge v8, v2, :cond_d4

    .line 331
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 332
    .local v0, "dig":I
    if-gez v0, :cond_92

    move v6, v5

    .line 339
    .end local v0    # "dig":I
    .end local v5    # "nfrac":I
    .local v6, "nfrac":I
    :goto_88
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "nfrac":I
    .restart local v5    # "nfrac":I
    const/16 v10, 0x9

    if-ge v6, v10, :cond_a9

    .line 340
    mul-int/lit8 v4, v4, 0xa

    move v6, v5

    .end local v5    # "nfrac":I
    .restart local v6    # "nfrac":I
    goto :goto_88

    .line 334
    .end local v6    # "nfrac":I
    .restart local v0    # "dig":I
    .restart local v5    # "nfrac":I
    :cond_92
    const/16 v10, 0x9

    if-ge v5, v10, :cond_9f

    .line 335
    mul-int/lit8 v10, v4, 0xa

    add-int v4, v10, v0

    .line 329
    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    .line 336
    :cond_9f
    const/16 v10, 0x9

    if-ne v5, v10, :cond_9a

    const/4 v10, 0x5

    if-lt v0, v10, :cond_9a

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    .line 341
    .end local v0    # "dig":I
    :cond_a9
    iput v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 343
    .end local v4    # "nanos":I
    .end local v5    # "nfrac":I
    :cond_ab
    const/16 v10, 0x18

    if-ne v1, v10, :cond_ba

    if-nez v3, :cond_b7

    if-nez v9, :cond_b7

    iget v10, p0, Lgnu/math/DateTime;->nanoSeconds:I

    if-eqz v10, :cond_ba

    .line 345
    :cond_b7
    const/4 v8, -0x1

    goto/16 :goto_3

    .line 346
    :cond_ba
    iget-object v10, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v11, 0xb

    invoke-virtual {v10, v11, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 347
    iget-object v10, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v11, 0xc

    invoke-virtual {v10, v11, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 348
    iget-object v10, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v11, 0xd

    invoke-virtual {v10, v11, v9}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_3

    .line 353
    .end local v3    # "minute":I
    .end local v9    # "second":I
    :cond_d1
    const/4 v8, -0x1

    goto/16 :goto_3

    .restart local v3    # "minute":I
    .restart local v4    # "nanos":I
    .restart local v5    # "nfrac":I
    .restart local v9    # "second":I
    :cond_d4
    move v6, v5

    .end local v5    # "nfrac":I
    .restart local v6    # "nfrac":I
    goto :goto_88
.end method

.method parseZone(Ljava/lang/String;I)I
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 233
    if-gez p2, :cond_3

    .line 249
    .end local p2    # "start":I
    :cond_2
    :goto_2
    return p2

    .line 235
    .restart local p2    # "start":I
    :cond_3
    invoke-virtual {p0, p1, p2}, Lgnu/math/DateTime;->parseZoneMinutes(Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, "part":I
    if-nez v1, :cond_b

    .line 237
    const/4 p2, -0x1

    goto :goto_2

    .line 238
    :cond_b
    if-eq v1, p2, :cond_2

    .line 240
    shr-int/lit8 v0, v1, 0x10

    .line 242
    .local v0, "minutes":I
    const v4, 0xffff

    and-int v2, v1, v4

    .line 243
    .local v2, "pos":I
    if-nez v0, :cond_25

    .line 244
    sget-object v3, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    .line 247
    .local v3, "zone":Ljava/util/TimeZone;
    :goto_18
    iget-object v4, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    iget v4, p0, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lgnu/math/DateTime;->mask:I

    move p2, v2

    .line 249
    goto :goto_2

    .line 246
    .end local v3    # "zone":Ljava/util/TimeZone;
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .restart local v3    # "zone":Ljava/util/TimeZone;
    goto :goto_18
.end method

.method parseZoneMinutes(Ljava/lang/String;I)I
    .registers 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const v11, 0xffff

    const/16 v10, 0x2d

    const/16 v9, 0xe

    const/4 v6, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 257
    .local v2, "len":I
    if-eq p2, v2, :cond_10

    if-gez p2, :cond_12

    :cond_10
    move v6, p2

    .line 294
    :cond_11
    :goto_11
    return v6

    .line 259
    :cond_12
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 260
    .local v0, "ch":C
    const/16 v7, 0x5a

    if-ne v0, v7, :cond_1d

    .line 261
    add-int/lit8 v6, p2, 0x1

    goto :goto_11

    .line 262
    :cond_1d
    const/16 v7, 0x2b

    if-eq v0, v7, :cond_25

    if-eq v0, v10, :cond_25

    move v6, p2

    .line 263
    goto :goto_11

    .line 264
    :cond_25
    add-int/lit8 p2, p2, 0x1

    .line 265
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v4

    .line 266
    .local v4, "part":I
    shr-int/lit8 v1, v4, 0x10

    .line 267
    .local v1, "hour":I
    if-gt v1, v9, :cond_11

    .line 269
    mul-int/lit8 v3, v1, 0x3c

    .line 270
    .local v3, "minute":I
    and-int v5, v4, v11

    .line 271
    .local v5, "pos":I
    add-int/lit8 v7, p2, 0x2

    if-ne v5, v7, :cond_11

    .line 273
    if-ge v5, v2, :cond_11

    .line 275
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_58

    .line 277
    add-int/lit8 p2, v5, 0x1

    .line 278
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v4

    .line 279
    and-int v5, v4, v11

    .line 280
    shr-int/lit8 v4, v4, 0x10

    .line 281
    if-lez v4, :cond_53

    const/16 v7, 0x3c

    if-ge v4, v7, :cond_11

    if-eq v1, v9, :cond_11

    .line 283
    :cond_53
    add-int/2addr v3, v4

    .line 284
    add-int/lit8 v7, p2, 0x2

    if-ne v5, v7, :cond_11

    .line 290
    :cond_58
    const/16 v7, 0x348

    if-gt v3, v7, :cond_11

    .line 292
    if-ne v0, v10, :cond_5f

    .line 293
    neg-int v3, v3

    .line 294
    :cond_5f
    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v6, v5

    goto :goto_11
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 672
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 673
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 719
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/math/DateTime;->toString(Ljava/lang/StringBuffer;)V

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 702
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v2

    .line 703
    .local v2, "mask":I
    and-int/lit8 v4, v2, 0xe

    if-eqz v4, :cond_24

    move v0, v1

    .line 704
    .local v0, "hasDate":Z
    :goto_b
    and-int/lit8 v4, v2, 0x70

    if-eqz v4, :cond_26

    .line 705
    .local v1, "hasTime":Z
    :goto_f
    if-eqz v0, :cond_1b

    .line 707
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 708
    if-eqz v1, :cond_1b

    .line 709
    const/16 v3, 0x54

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 711
    :cond_1b
    if-eqz v1, :cond_20

    .line 712
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 713
    :cond_20
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringZone(Ljava/lang/StringBuffer;)V

    .line 714
    return-void

    .end local v0    # "hasDate":Z
    .end local v1    # "hasTime":Z
    :cond_24
    move v0, v3

    .line 703
    goto :goto_b

    .restart local v0    # "hasDate":Z
    :cond_26
    move v1, v3

    .line 704
    goto :goto_f
.end method

.method public toStringDate(Ljava/lang/StringBuffer;)V
    .registers 8
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x2d

    .line 609
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v0

    .line 610
    .local v0, "mask":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_47

    .line 612
    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 613
    .local v1, "year":I
    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_22

    .line 615
    add-int/lit8 v1, v1, -0x1

    .line 616
    if-eqz v1, :cond_22

    .line 617
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 619
    :cond_22
    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 623
    .end local v1    # "year":I
    :goto_26
    and-int/lit8 v2, v0, 0xc

    if-eqz v2, :cond_46

    .line 625
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 626
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_38

    .line 627
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMonth()I

    move-result v2

    invoke-static {v2, p1, v5}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 628
    :cond_38
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_46

    .line 630
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 631
    invoke-virtual {p0}, Lgnu/math/DateTime;->getDay()I

    move-result v2

    invoke-static {v2, p1, v5}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 634
    :cond_46
    return-void

    .line 622
    :cond_47
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_26
.end method

.method public toStringTime(Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v2, 0x3a

    const/4 v1, 0x2

    .line 638
    invoke-virtual {p0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 639
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v0

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 641
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {p0}, Lgnu/math/DateTime;->getWholeSeconds()I

    move-result v0

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 643
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    invoke-static {v0, p1}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 644
    return-void
.end method

.method public toStringZone(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 677
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 680
    :goto_6
    return-void

    .line 679
    :cond_7
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v0

    invoke-static {v0, p1}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    goto :goto_6
.end method

.method public unit()Lgnu/math/Unit;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public withZoneUnspecified()Lgnu/math/DateTime;
    .registers 4

    .prologue
    .line 473
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 478
    .end local p0    # "this":Lgnu/math/DateTime;
    :goto_6
    return-object p0

    .line 475
    .restart local p0    # "this":Lgnu/math/DateTime;
    :cond_7
    new-instance v0, Lgnu/math/DateTime;

    iget v2, p0, Lgnu/math/DateTime;->mask:I

    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v2, v1}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 476
    .local v0, "r":Lgnu/math/DateTime;
    iget-object v1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 477
    iget v1, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lgnu/math/DateTime;->mask:I

    move-object p0, v0

    .line 478
    goto :goto_6
.end method
