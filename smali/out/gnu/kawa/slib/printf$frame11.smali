.class public Lgnu/kawa/slib/printf$frame11;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation


# instance fields
.field fc:Ljava/lang/Object;

.field format$Mnreal:Lgnu/mapping/Procedure;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame10;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    sget-object v2, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    const/16 v3, -0xffc

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, -0xffd

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:401"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_48

    .line 401
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    .line 386
    :pswitch_d
    aget-object v1, p2, v1

    aget-object v2, p2, v3

    aget-object v3, p2, v4

    const/4 v0, 0x3

    aget-object v4, p2, v0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x4

    new-array v5, v0, [Ljava/lang/Object;

    :goto_1b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_25

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_25
    add-int/lit8 v6, v0, 0x4

    aget-object v6, p2, v6

    aput-object v6, v5, v0

    goto :goto_1b

    .line 401
    :pswitch_2c
    aget-object v2, p2, v1

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    array-length v0, p2

    add-int/lit8 v1, v0, -0x3

    new-array v0, v1, [Ljava/lang/Object;

    :goto_37
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_40

    invoke-virtual {p0, v2, v3, v4, v0}, Lgnu/kawa/slib/printf$frame11;->lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_40
    add-int/lit8 v5, v1, 0x3

    aget-object v5, p2, v5

    aput-object v5, v0, v1

    goto :goto_37

    .line 4294967295
    nop

    :pswitch_data_48
    .packed-switch 0xd
        :pswitch_d
        :pswitch_2c
    .end packed-switch
.end method

.method public lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "digs"    # Ljava/lang/Object;
    .param p2, "exp"    # Ljava/lang/Object;
    .param p3, "strip$Mn0s"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 307
    :try_start_3
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_115

    .end local p1    # "digs":Ljava/lang/Object;
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 309
    iget-object v7, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v6, :cond_85

    move-object v6, p2

    :goto_14
    invoke-static {p1, v7, v6}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 310
    .restart local p1    # "digs":Ljava/lang/Object;
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_aa

    .line 311
    :try_start_24
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_28} :catch_11e

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-eqz v6, :cond_87

    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .local v2, "i0":Lgnu/math/IntNum;
    :goto_30
    new-array v6, v11, [Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    aput-object v7, v6, v9

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "i1":Ljava/lang/Object;
    :try_start_44
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_48
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_48} :catch_130

    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_4b} :catch_139

    move-result v8

    :try_start_4c
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_53} :catch_142

    move-result v7

    invoke-static {v6, v8, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "idigs":Ljava/lang/CharSequence;
    :try_start_58
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_5c
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_5c} :catch_14c

    :try_start_5c
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_63
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_63} :catch_155

    move-result v7

    :try_start_64
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_66} :catch_15e

    .end local p1    # "digs":Ljava/lang/Object;
    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 319
    .local v1, "fdigs":Ljava/lang/CharSequence;
    const-string v6, ""

    invoke-static {v1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .local v5, "x":Z
    if-eqz v5, :cond_a1

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_a3

    :cond_7e
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_80
    invoke-static {v4, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .line 328
    .end local v1    # "fdigs":Ljava/lang/CharSequence;
    .end local v2    # "i0":Lgnu/math/IntNum;
    .end local v3    # "i1":Ljava/lang/Object;
    .end local v4    # "idigs":Ljava/lang/CharSequence;
    .end local v5    # "x":Z
    :cond_84
    :goto_84
    return-object v5

    :cond_85
    move-object v6, p3

    .line 309
    goto :goto_14

    .line 311
    .restart local p1    # "digs":Ljava/lang/Object;
    :cond_87
    sget-object v7, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_89
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_8d
    .catch Ljava/lang/ClassCastException; {:try_start_89 .. :try_end_8d} :catch_127

    invoke-static {v6, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v7, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 312
    sget-object v2, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    goto :goto_30

    .line 313
    :cond_9e
    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto :goto_30

    .line 319
    .end local p1    # "digs":Ljava/lang/Object;
    .restart local v1    # "fdigs":Ljava/lang/CharSequence;
    .restart local v2    # "i0":Lgnu/math/IntNum;
    .restart local v3    # "i1":Ljava/lang/Object;
    .restart local v4    # "idigs":Ljava/lang/CharSequence;
    .restart local v5    # "x":Z
    :cond_a1
    if-nez v5, :cond_7e

    :cond_a3
    const-string v6, "."

    invoke-static {v6, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_80

    .end local v1    # "fdigs":Ljava/lang/CharSequence;
    .end local v2    # "i0":Lgnu/math/IntNum;
    .end local v3    # "i1":Ljava/lang/Object;
    .end local v4    # "idigs":Ljava/lang/CharSequence;
    .end local v5    # "x":Z
    .restart local p1    # "digs":Ljava/lang/Object;
    :cond_aa
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_ae
    check-cast v6, Ljava/lang/Number;
    :try_end_b0
    .catch Ljava/lang/ClassCastException; {:try_start_ae .. :try_end_b0} :catch_167

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-eqz v6, :cond_c8

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_c5

    .line 324
    const-string v6, "0."

    :goto_c0
    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    goto :goto_84

    :cond_c5
    const-string v6, "0"

    goto :goto_c0

    .line 325
    :cond_c8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v6, :cond_113

    const-string v6, ""

    invoke-static {p1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .restart local v5    # "x":Z
    if-eqz v5, :cond_10b

    const-string v6, "0"

    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    :goto_da
    move-object v5, v6

    .line 310
    .local v5, "x":Ljava/lang/Object;
    :goto_db
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_84

    const-string v8, "0."

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    aput-object v7, v6, v9

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 328
    sget-object v9, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v7, v9, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_f7
    move-object v0, v7

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_fe
    .catch Ljava/lang/ClassCastException; {:try_start_f7 .. :try_end_fe} :catch_170

    move-result v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v6, v7}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v8, v6, p1}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    goto/16 :goto_84

    .line 325
    .local v5, "x":Z
    :cond_10b
    if-eqz v5, :cond_110

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_da

    :cond_110
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_da

    .end local v5    # "x":Z
    :cond_113
    move-object v5, p3

    goto :goto_db

    .line 309
    :catch_115
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "stdio:round-string"

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 311
    :catch_11e
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "zero?"

    invoke-direct {v7, v6, v8, v10, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 312
    :catch_127
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 315
    .restart local v2    # "i0":Lgnu/math/IntNum;
    .restart local v3    # "i1":Ljava/lang/Object;
    :catch_130
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_139
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_142
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x3

    invoke-direct {v7, v6, v8, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 316
    .restart local v4    # "idigs":Ljava/lang/CharSequence;
    :catch_14c
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_155
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 317
    :catch_15e
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 323
    .end local v2    # "i0":Lgnu/math/IntNum;
    .end local v3    # "i1":Ljava/lang/Object;
    .end local v4    # "idigs":Ljava/lang/CharSequence;
    :catch_167
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "zero?"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 328
    .local v5, "x":Ljava/lang/Object;
    :catch_170
    move-exception v6

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "make-string"

    invoke-direct {v8, v6, v9, v10, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25
    .param p1, "signed$Qu"    # Ljava/lang/Object;
    .param p2, "sgn"    # Ljava/lang/Object;
    .param p3, "digs"    # Ljava/lang/Object;
    .param p4, "exp"    # Ljava/lang/Object;
    .param p5, "argsArray"    # [Ljava/lang/Object;

    .prologue
    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v13

    .line 387
    .local v13, "rest":Lgnu/lists/LList;
    invoke-static {v13}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32f

    .line 388
    sget-object v3, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_f
    check-cast p2, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_363

    .end local p2    # "sgn":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 389
    const-string v3, "-"

    move-object v5, v3

    .line 391
    :goto_1c
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .local v16, "x":Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_119

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_129

    .line 392
    :cond_34
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 331
    .end local v16    # "x":Ljava/lang/Object;
    :goto_36
    :try_start_36
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_36f

    .end local p3    # "digs":Ljava/lang/Object;
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 332
    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v9, v4, :cond_4c

    sget-object v9, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :cond_4c
    move-object/from16 v0, p3

    invoke-static {v0, v3, v9}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 331
    .restart local p3    # "digs":Ljava/lang/Object;
    sget-object v4, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_54
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_59
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_59} :catch_37b

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v4, v3}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_14e

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    .local v12, "istrt":Lgnu/math/IntNum;
    :goto_6a
    :try_start_6a
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_6f
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_6f} :catch_387

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    :try_start_75
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_7a
    .catch Ljava/lang/ClassCastException; {:try_start_75 .. :try_end_7a} :catch_393

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v3, v6, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "fdigs":Ljava/lang/CharSequence;
    invoke-static {v12}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_152

    :goto_88
    :try_start_88
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_8a
    .catch Ljava/lang/ClassCastException; {:try_start_88 .. :try_end_8a} :catch_39f

    .end local p3    # "digs":Ljava/lang/Object;
    :try_start_8a
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I
    :try_end_8d
    .catch Ljava/lang/ClassCastException; {:try_start_8a .. :try_end_8d} :catch_3ab

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 339
    const-string v3, ""

    invoke-static {v10, v3}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    .local v16, "x":Z
    if-eqz v16, :cond_15e

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_160

    :cond_b0
    const-string v3, ""

    move-object v4, v3

    :goto_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    :try_start_b7
    check-cast v3, Lgnu/text/Char;
    :try_end_b9
    .catch Ljava/lang/ClassCastException; {:try_start_b7 .. :try_end_b9} :catch_3b5

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 342
    const-string v3, "E"

    :goto_c1
    :try_start_c1
    invoke-static/range {p4 .. p4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_c4
    .catch Ljava/lang/ClassCastException; {:try_start_c1 .. :try_end_c4} :catch_3bf

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 343
    const-string v6, "-"

    :goto_cd
    invoke-static {v7, v4, v10, v3, v6}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 344
    sget-object v6, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    move-object/from16 v0, p4

    invoke-virtual {v3, v6, v0, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_16d

    const-string v3, "0"

    :goto_e3
    invoke-static {v4, v3}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    :try_start_e7
    check-cast p4, Ljava/lang/Number;
    :try_end_e9
    .catch Ljava/lang/ClassCastException; {:try_start_e7 .. :try_end_e9} :catch_3cb

    .end local p4    # "exp":Ljava/lang/Object;
    invoke-static/range {p4 .. p4}, Lkawa/lib/numbers;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-object v3, v7

    .line 396
    .end local v10    # "fdigs":Ljava/lang/CharSequence;
    .end local v12    # "istrt":Lgnu/math/IntNum;
    .end local v16    # "x":Z
    :goto_f5
    invoke-static {v5, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .line 398
    :goto_f9
    return-object v3

    .line 390
    .restart local p3    # "digs":Ljava/lang/Object;
    .restart local p4    # "exp":Ljava/lang/Object;
    :cond_fa
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_105

    const-string v3, "+"

    move-object v5, v3

    goto/16 :goto_1c

    :cond_105
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_114

    const-string v3, " "

    move-object v5, v3

    goto/16 :goto_1c

    :cond_114
    const-string v3, ""

    move-object v5, v3

    goto/16 :goto_1c

    .line 391
    .local v16, "x":Ljava/lang/Object;
    :cond_119
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_34

    .line 344
    :cond_129
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_171

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_181

    .line 393
    :cond_141
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_f5

    .line 331
    .end local v16    # "x":Ljava/lang/Object;
    :cond_14e
    sget-object v12, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto/16 :goto_6a

    .restart local v10    # "fdigs":Ljava/lang/CharSequence;
    .restart local v12    # "istrt":Lgnu/math/IntNum;
    :cond_152
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto/16 :goto_88

    .line 339
    .end local p3    # "digs":Ljava/lang/Object;
    .local v16, "x":Z
    :cond_15e
    if-nez v16, :cond_b0

    :cond_160
    const-string v3, "."

    move-object v4, v3

    goto/16 :goto_b3

    .line 342
    :cond_165
    const-string v3, "e"

    goto/16 :goto_c1

    .line 343
    :cond_169
    const-string v6, "+"

    goto/16 :goto_cd

    .line 344
    :cond_16d
    const-string v3, ""

    goto/16 :goto_e3

    .line 391
    .end local v10    # "fdigs":Ljava/lang/CharSequence;
    .end local v12    # "istrt":Lgnu/math/IntNum;
    .local v16, "x":Ljava/lang/Object;
    .restart local p3    # "digs":Ljava/lang/Object;
    :cond_171
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_141

    .line 393
    :cond_181
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_1f6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_206

    .line 346
    .end local v16    # "x":Ljava/lang/Object;
    :cond_199
    :goto_199
    move-object/from16 v9, p0

    .line 347
    .local v9, "closureEnv":Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    :try_start_1a1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1a3
    .catch Ljava/lang/ClassCastException; {:try_start_1a1 .. :try_end_1a3} :catch_3d7

    if-eq v3, v4, :cond_2d2

    const/4 v3, 0x1

    :goto_1a6
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v14, v3, 0x1

    .line 348
    .local v14, "strip$Mn0s":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 349
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v7, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2d9

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 351
    if-eqz v14, :cond_2d5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1ea
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_f5

    .line 391
    .end local v9    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .end local v14    # "strip$Mn0s":Z
    .restart local v16    # "x":Ljava/lang/Object;
    :cond_1f6
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_199

    .line 354
    :cond_206
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_316

    .line 395
    const-string v3, ""

    move-object v6, v3

    .line 355
    :goto_219
    move-object/from16 v9, p0

    .line 356
    .restart local v9    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    :try_start_21b
    invoke-static/range {p4 .. p4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_21e
    .catch Ljava/lang/ClassCastException; {:try_start_21b .. :try_end_21e} :catch_3e1

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v3

    if-eqz v3, :cond_2f6

    .line 360
    sget-object v3, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 362
    .local v11, "i":Ljava/lang/Object;
    :goto_237
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v8, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v7, v11, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 363
    sget-object v8, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v8}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v7, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_251
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_258
    .catch Ljava/lang/ClassCastException; {:try_start_251 .. :try_end_258} :catch_3ed

    move-result v16

    .line 362
    .local v16, "x":Z
    if-eqz v16, :cond_30a

    move-object v15, v11

    .line 365
    .local v15, "uind":Ljava/lang/Object;
    :goto_25c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v15, v3, :cond_314

    .line 366
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v4, v7, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v8, v0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v4}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 368
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v8, 0x1

    sget-object v17, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v4, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v3, v15, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_2b8
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_2bf
    .catch Ljava/lang/ClassCastException; {:try_start_2b8 .. :try_end_2bf} :catch_3f7

    move-result v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v7}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_f5

    .line 347
    .end local v11    # "i":Ljava/lang/Object;
    .end local v15    # "uind":Ljava/lang/Object;
    .end local v16    # "x":Z
    :cond_2d2
    const/4 v3, 0x0

    goto/16 :goto_1a6

    .line 351
    .restart local v14    # "strip$Mn0s":Z
    :cond_2d5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1ea

    .line 353
    :cond_2d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 354
    if-eqz v14, :cond_2f3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2f1
    goto/16 :goto_36

    :cond_2f3
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2f1

    .line 361
    .end local v14    # "strip$Mn0s":Z
    .local v16, "x":Ljava/lang/Object;
    :cond_2f6
    sget-object v3, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_237

    .line 362
    .restart local v11    # "i":Ljava/lang/Object;
    .local v16, "x":Z
    :cond_30a
    if-eqz v16, :cond_310

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_25c

    :cond_310
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_25c

    .line 373
    .restart local v15    # "uind":Ljava/lang/Object;
    :cond_314
    goto/16 :goto_199

    .end local v9    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .end local v11    # "i":Ljava/lang/Object;
    .end local v15    # "uind":Ljava/lang/Object;
    .local v16, "x":Ljava/lang/Object;
    :cond_316
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual {v3, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_32b

    .line 396
    const-string v3, " "

    move-object v6, v3

    goto/16 :goto_219

    :cond_32b
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_f5

    .line 397
    .end local v16    # "x":Ljava/lang/Object;
    .restart local p2    # "sgn":Ljava/lang/Object;
    :cond_32f
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/4 v3, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v17, v18

    const/4 v3, 0x1

    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v13}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v17, v3

    const/4 v3, 0x2

    sget-object v4, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    aput-object v4, v17, v3

    invoke-static/range {v17 .. v17}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_f9

    .line 389
    :catch_363
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "char=?"

    const/4 v6, 0x2

    move-object/from16 v0, p2

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 332
    .end local p2    # "sgn":Ljava/lang/Object;
    :catch_36f
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "stdio:round-string"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 333
    :catch_37b
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 335
    .restart local v12    # "istrt":Lgnu/math/IntNum;
    :catch_387
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_393
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 338
    .restart local v10    # "fdigs":Ljava/lang/CharSequence;
    :catch_39f
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .end local p3    # "digs":Ljava/lang/Object;
    :catch_3ab
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x2

    invoke-direct {v4, v3, v5, v6, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 342
    .local v16, "x":Z
    :catch_3b5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char-upper-case?"

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 343
    :catch_3bf
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "negative?"

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 345
    :catch_3cb
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "abs"

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 347
    .end local v10    # "fdigs":Ljava/lang/CharSequence;
    .end local v12    # "istrt":Lgnu/math/IntNum;
    .end local v16    # "x":Z
    .restart local v9    # "closureEnv":Lgnu/kawa/slib/printf$frame11;
    .restart local p3    # "digs":Ljava/lang/Object;
    :catch_3d7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "strip-0s"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 359
    .local v16, "x":Ljava/lang/Object;
    :catch_3e1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "negative?"

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 363
    .restart local v11    # "i":Ljava/lang/Object;
    :catch_3ed
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    const/4 v7, -0x2

    invoke-direct {v5, v3, v6, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 371
    .restart local v15    # "uind":Ljava/lang/Object;
    .local v16, "x":Z
    :catch_3f7
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "vector-ref"

    const/4 v7, 0x2

    invoke-direct {v5, v3, v6, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "sgn"    # Ljava/lang/Object;
    .param p2, "digs"    # Ljava/lang/Object;
    .param p3, "expon"    # Ljava/lang/Object;
    .param p4, "argsArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-static {p4, v6}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 402
    .local v0, "imag":Lgnu/lists/LList;
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 403
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 404
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 405
    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    aput-object p3, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_1a

    .line 386
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 401
    :goto_b
    return v0

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 386
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    :pswitch_data_1a
    .packed-switch 0xd
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
