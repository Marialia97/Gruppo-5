.class public Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;
.super Lgnu/expr/ModuleBody;
.source "InserimentoPaziente.yail"


# instance fields
.field $main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_e6

    .line 530
    :pswitch_5
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 622
    :goto_9
    return-object v0

    :pswitch_a
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 530
    :pswitch_f
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_9

    :pswitch_17
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda3()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_1c
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$BackPressed()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_23
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$ScreenOrientationChanged()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_2a
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda4()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_2f
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda5()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_34
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_39
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_3e
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox3$GotFocus()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_45
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox3$LostFocus()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_4c
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda8()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_51
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda9()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_56
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda10()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_5b
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda11()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_60
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox1$GotFocus()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_67
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox1$LostFocus()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_6e
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda12()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_73
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda13()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_78
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda14()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_7d
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda15()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_82
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox2$LostFocus()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_89
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->TextBox2$GotFocus()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_91
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda16()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_97
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda17()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_9d
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda18()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_a3
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda19()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_a9
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda20()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_af
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda21()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_b5
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda22()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_bb
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda23()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_c1
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda24()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_c7
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda25()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_cd
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda26()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_d3
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda27()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_d9
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda28()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :pswitch_df
    invoke-static {}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lambda29()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    .line 4294967295
    nop

    :pswitch_data_e6
    .packed-switch 0x12
        :pswitch_a
        :pswitch_f
        :pswitch_17
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_23
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_45
        :pswitch_4c
        :pswitch_51
        :pswitch_56
        :pswitch_5b
        :pswitch_60
        :pswitch_67
        :pswitch_6e
        :pswitch_73
        :pswitch_78
        :pswitch_7d
        :pswitch_82
        :pswitch_89
        :pswitch_91
        :pswitch_97
        :pswitch_9d
        :pswitch_a3
        :pswitch_a9
        :pswitch_af
        :pswitch_b5
        :pswitch_bb
        :pswitch_c1
        :pswitch_c7
        :pswitch_cd
        :pswitch_d3
        :pswitch_d9
        :pswitch_df
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_78

    .line 402
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 310
    :sswitch_b
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 313
    :sswitch_12
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_14
    check-cast p2, Landroid/os/Bundle;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_5d

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 320
    :sswitch_1c
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 333
    :sswitch_24
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_26
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_28} :catch_66

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 339
    :sswitch_2d
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_2f
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_6f

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_3a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 394
    :sswitch_3d
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 399
    :sswitch_45
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->sendError(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 402
    :sswitch_4d
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    :sswitch_55
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$PermissionGranted(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 313
    :catch_5d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "onCreate"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 333
    :catch_66
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 339
    :catch_6f
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_12
        0x3 -> :sswitch_1c
        0x5 -> :sswitch_24
        0x7 -> :sswitch_2d
        0xc -> :sswitch_3d
        0xd -> :sswitch_45
        0xe -> :sswitch_4d
        0x19 -> :sswitch_55
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_62

    .line 522
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 329
    :sswitch_b
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_d
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_47

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 333
    :sswitch_15
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_17
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_50

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 347
    :sswitch_1e
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_20
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_59

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 368
    :sswitch_28
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 384
    :sswitch_30
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 522
    :sswitch_38
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :sswitch_3f
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$OtherScreenClosed(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 329
    :catch_47
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 333
    :catch_50
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 347
    :catch_59
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-global-var-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_b
        0x5 -> :sswitch_15
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_28
        0xb -> :sswitch_30
        0x11 -> :sswitch_38
        0x17 -> :sswitch_3f
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3, p4}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$PermissionDenied(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_90

    .line 480
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 375
    :sswitch_e
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 421
    :sswitch_16
    iget-object v1, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_18
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_48

    :try_start_1a
    check-cast p3, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1c} :catch_51

    :try_start_1c
    check-cast p4, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1e} :catch_5a

    :try_start_1e
    check-cast p5, [Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_63

    invoke-virtual {v1, p2, p3, p4, p5}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 480
    :sswitch_2c
    iget-object v1, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    :try_start_2e
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_2e .. :try_end_30} :catch_6c

    :try_start_30
    check-cast p3, Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_75

    :try_start_32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_34} :catch_7e

    if-eq p4, v2, :cond_3e

    :goto_36
    :try_start_36
    check-cast p5, [Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_87

    invoke-virtual {v1, p2, p3, v0, p5}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    :cond_3e
    const/4 v0, 0x0

    goto :goto_36

    :sswitch_40
    iget-object v0, p0, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente$frame;->$main:Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;->InserimentoPaziente$ErrorOccurred(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 421
    :catch_48
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 422
    :catch_51
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 423
    :catch_5a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 424
    :catch_63
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 480
    :catch_6c
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchGenericEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 481
    :catch_75
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 482
    :catch_7e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 483
    :catch_87
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_90
    .sparse-switch
        0xa -> :sswitch_e
        0xf -> :sswitch_16
        0x10 -> :sswitch_2c
        0x16 -> :sswitch_40
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_d0

    .line 622
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_a
    return v0

    .line 4294967295
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_1a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_1f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_24
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_29
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_2e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_33
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_38
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_3d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_42
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_47
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_4c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_51
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_56
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_5b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_60
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_65
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_6a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_6f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_74
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_79
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_7e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_83
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_88
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_8e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_94
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_9a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_a0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_a6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_ac
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_b2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_b8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    :pswitch_be
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    .line 530
    :pswitch_c4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    .line 622
    :pswitch_ca
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto/16 :goto_a

    .line 4294967295
    :pswitch_data_d0
    .packed-switch 0x12
        :pswitch_ca
        :pswitch_c4
        :pswitch_be
        :pswitch_b8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b2
        :pswitch_ac
        :pswitch_a6
        :pswitch_a0
        :pswitch_9a
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_66

    .line 310
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 402
    :goto_e
    return v0

    .line 4294967295
    :sswitch_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 402
    :sswitch_16
    instance-of v2, p2, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    if-nez v2, :cond_1c

    move v0, v1

    goto :goto_e

    :cond_1c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 399
    :sswitch_23
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 394
    :sswitch_2a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 339
    :sswitch_31
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_e

    :cond_37
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 333
    :sswitch_3e
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_44

    move v0, v1

    goto :goto_e

    :cond_44
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 320
    :sswitch_4b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 313
    :sswitch_52
    instance-of v2, p2, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    if-nez v2, :cond_58

    move v0, v1

    goto :goto_e

    :cond_58
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 310
    :sswitch_5f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 4294967295
    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_5f
        0x2 -> :sswitch_52
        0x3 -> :sswitch_4b
        0x5 -> :sswitch_3e
        0x7 -> :sswitch_31
        0xc -> :sswitch_2a
        0xd -> :sswitch_23
        0xe -> :sswitch_16
        0x19 -> :sswitch_f
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_60

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 522
    :goto_e
    return v0

    .line 4294967295
    :sswitch_f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 522
    :sswitch_18
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 384
    :sswitch_21
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 368
    :sswitch_2a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 347
    :sswitch_33
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_e

    :cond_39
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 333
    :sswitch_42
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_48

    move v0, v1

    goto :goto_e

    :cond_48
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 329
    :sswitch_51
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_57

    move v0, v1

    goto :goto_e

    :cond_57
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 4294967295
    :sswitch_data_60
    .sparse-switch
        0x4 -> :sswitch_51
        0x5 -> :sswitch_42
        0x8 -> :sswitch_33
        0x9 -> :sswitch_2a
        0xb -> :sswitch_21
        0x11 -> :sswitch_18
        0x17 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_13

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_12
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 13

    .prologue
    const v3, -0xbfffd

    const v2, -0xbfffe

    const v1, -0xbffff

    const/4 v5, 0x4

    const/4 v0, 0x0

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_76

    .line 375
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 480
    :goto_14
    return v0

    .line 4294967295
    :sswitch_15
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_14

    .line 480
    :sswitch_22
    instance-of v4, p2, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    if-nez v4, :cond_28

    move v0, v1

    goto :goto_14

    :cond_28
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v1, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v1, :cond_30

    move v0, v2

    goto :goto_14

    :cond_30
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v1, p4, Ljava/lang/String;

    if-nez v1, :cond_38

    move v0, v3

    goto :goto_14

    :cond_38
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_14

    .line 421
    :sswitch_41
    instance-of v4, p2, Lappinventor/ai_finamoremariarosalia/GreenHelp/InserimentoPaziente;

    if-nez v4, :cond_47

    move v0, v1

    goto :goto_14

    :cond_47
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v1, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v1, :cond_4f

    move v0, v2

    goto :goto_14

    :cond_4f
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v1, p4, Ljava/lang/String;

    if-nez v1, :cond_57

    move v0, v3

    goto :goto_14

    :cond_57
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v1, p5, Ljava/lang/String;

    if-nez v1, :cond_61

    const v0, -0xbfffc

    goto :goto_14

    :cond_61
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_14

    .line 375
    :sswitch_68
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_14

    .line 4294967295
    nop

    :sswitch_data_76
    .sparse-switch
        0xa -> :sswitch_68
        0xf -> :sswitch_41
        0x10 -> :sswitch_22
        0x16 -> :sswitch_15
    .end sparse-switch
.end method
