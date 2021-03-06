.class public Lgnu/expr/ClassExp;
.super Lgnu/expr/LambdaExp;
.source "ClassExp.java"


# static fields
.field public static final CLASS_SPECIFIED:I = 0x10000

.field public static final HAS_SUBCLASS:I = 0x20000

.field public static final INTERFACE_SPECIFIED:I = 0x8000

.field public static final IS_ABSTRACT:I = 0x4000


# instance fields
.field public classNameSpecifier:Ljava/lang/String;

.field public clinitMethod:Lgnu/expr/LambdaExp;

.field explicitInit:Z

.field public initMethod:Lgnu/expr/LambdaExp;

.field instanceType:Lgnu/bytecode/ClassType;

.field partsDeclared:Z

.field simple:Z

.field public superClassIndex:I

.field public supers:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "simple"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 70
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    .line 71
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .line 72
    return-void
.end method

.method static getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V
    .registers 21
    .param p0, "interfaceType"    # Lgnu/bytecode/ClassType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Lgnu/bytecode/Type;
    .param p3, "vec"    # Ljava/util/Vector;

    .prologue
    .line 371
    move-object/from16 v0, p0

    instance-of v14, v0, Lgnu/expr/PairClassType;

    if-eqz v14, :cond_46

    move-object/from16 v14, p0

    .line 372
    check-cast v14, Lgnu/expr/PairClassType;

    iget-object v8, v14, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 396
    .local v8, "implType":Lgnu/bytecode/ClassType;
    :goto_c
    move-object/from16 v0, p2

    array-length v14, v0

    add-int/lit8 v14, v14, 0x1

    new-array v10, v14, [Lgnu/bytecode/Type;

    .line 397
    .local v10, "itypes":[Lgnu/bytecode/Type;
    const/4 v14, 0x0

    aput-object p0, v10, v14

    .line 398
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v14, v10, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 400
    .local v7, "implMethod":Lgnu/bytecode/Method;
    if-eqz v7, :cond_7b

    .line 402
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v3

    .line 403
    .local v3, "count":I
    if-eqz v3, :cond_40

    add-int/lit8 v14, v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_45

    .line 404
    :cond_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 412
    .end local v3    # "count":I
    .end local v7    # "implMethod":Lgnu/bytecode/Method;
    .end local v8    # "implType":Lgnu/bytecode/ClassType;
    .end local v10    # "itypes":[Lgnu/bytecode/Type;
    :cond_45
    :goto_45
    return-void

    .line 373
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_45

    .line 379
    :try_start_4c
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v12

    .line 380
    .local v12, "reflectClass":Ljava/lang/Class;
    if-eqz v12, :cond_45

    .line 382
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "$class"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 383
    .local v9, "implTypeName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 385
    .local v11, "loader":Ljava/lang/ClassLoader;
    const/4 v14, 0x0

    invoke-static {v9, v14, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 389
    .local v6, "implClass":Ljava/lang/Class;
    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_78} :catch_79

    .restart local v8    # "implType":Lgnu/bytecode/ClassType;
    goto :goto_c

    .line 391
    .end local v6    # "implClass":Ljava/lang/Class;
    .end local v8    # "implType":Lgnu/bytecode/ClassType;
    .end local v9    # "implTypeName":Ljava/lang/String;
    .end local v11    # "loader":Ljava/lang/ClassLoader;
    .end local v12    # "reflectClass":Ljava/lang/Class;
    :catch_79
    move-exception v4

    .line 393
    .local v4, "ex":Ljava/lang/Throwable;
    goto :goto_45

    .line 408
    .end local v4    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "implMethod":Lgnu/bytecode/Method;
    .restart local v8    # "implType":Lgnu/bytecode/ClassType;
    .restart local v10    # "itypes":[Lgnu/bytecode/Type;
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 409
    .local v13, "superInterfaces":[Lgnu/bytecode/ClassType;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_80
    array-length v14, v13

    if-ge v5, v14, :cond_45

    .line 410
    aget-object v14, v13, v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 409
    add-int/lit8 v5, v5, 0x1

    goto :goto_80
.end method

.method static invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V
    .registers 9
    .param p0, "superClass"    # Lgnu/bytecode/ClassType;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "lexp"    # Lgnu/expr/LambdaExp;

    .prologue
    .line 718
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 719
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    const-string v4, "<init>"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 721
    .local v2, "superConstructor":Lgnu/bytecode/Method;
    if-nez v2, :cond_15

    .line 722
    const/16 v4, 0x65

    const-string v5, "super class does not have a default constructor"

    invoke-virtual {p1, v4, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 734
    :goto_14
    return-void

    .line 725
    :cond_15
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 726
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v4

    if-eqz v4, :cond_2e

    instance-of v4, p2, Lgnu/expr/ClassExp;

    if-eqz v4, :cond_2e

    move-object v0, p2

    .line 728
    check-cast v0, Lgnu/expr/ClassExp;

    .line 729
    .local v0, "clExp":Lgnu/expr/ClassExp;
    iget-object v4, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    iget v5, v0, Lgnu/expr/ClassExp;->superClassIndex:I

    aget-object v3, v4, v5

    .line 730
    .local v3, "superExp":Lgnu/expr/Expression;
    invoke-static {v3, p0, p1}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 732
    .end local v0    # "clExp":Lgnu/expr/ClassExp;
    .end local v3    # "superExp":Lgnu/expr/Expression;
    :cond_2e
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_14
.end method

.method static loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .registers 7
    .param p0, "superExp"    # Lgnu/expr/Expression;
    .param p1, "superClass"    # Lgnu/bytecode/ClassType;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 707
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 709
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    sget-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 710
    const-string v1, "gnu.expr.PairClassType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "extractStaticLink"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 711
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 712
    return-void
.end method

.method public static slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "sname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-static {p1}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 798
    invoke-static {p1, v3}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 800
    .local v1, "slen":I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 801
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    if-lez v1, :cond_2e

    .line 804
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 805
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .registers 5
    .param p0, "clas"    # Lgnu/bytecode/ClassType;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 417
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 418
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 419
    .local v1, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_18

    .line 421
    array-length v0, v1

    .local v0, "i":I
    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    .line 422
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    goto :goto_e

    .line 424
    .end local v0    # "i":I
    :cond_18
    return-void
.end method


# virtual methods
.method public addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 8
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "mname"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 812
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p2, v1}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 813
    .local v0, "mdecl":Lgnu/expr/Declaration;
    iput-object p0, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 814
    invoke-virtual {p1, v4}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 815
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 816
    const-wide/32 v2, 0x100000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 817
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 818
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 819
    return-object v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .prologue
    .line 78
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_5

    .line 82
    :goto_4
    return-void

    .line 80
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 81
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_4
.end method

.method public compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .registers 50
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 428
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v33, v0

    .line 429
    .local v33, "saveClass":Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v38, v0

    .line 432
    .local v38, "saveMethod":Lgnu/bytecode/Method;
    :try_start_c
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v27

    .line 433
    .local v27, "new_class":Lgnu/bytecode/ClassType;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v29

    .line 436
    .local v29, "outer":Lgnu/expr/LambdaExp;
    const/4 v13, 0x0

    .line 437
    .local v13, "enclosing":Lgnu/bytecode/Member;
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v45, v0

    if-eqz v45, :cond_ba

    .line 438
    move-object/from16 v0, v29

    iget-object v13, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 443
    :cond_27
    :goto_27
    if-eqz v13, :cond_3b

    .line 445
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 446
    instance-of v0, v13, Lgnu/bytecode/ClassType;

    move/from16 v45, v0

    if-eqz v45, :cond_3b

    .line 447
    check-cast v13, Lgnu/bytecode/ClassType;

    .end local v13    # "enclosing":Lgnu/bytecode/Member;
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 449
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_65

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 455
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_91

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 459
    :cond_91
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->getFileName()Ljava/lang/String;

    move-result-object v15

    .line 460
    .local v15, "filename":Ljava/lang/String;
    if-eqz v15, :cond_9c

    .line 461
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 463
    :cond_9c
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v36, v0

    .line 464
    .local v36, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 466
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v10, v0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v10, "child":Lgnu/expr/LambdaExp;
    :goto_af
    if-eqz v10, :cond_29d

    .line 472
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v45

    if-eqz v45, :cond_e8

    .line 470
    :goto_b7
    iget-object v10, v10, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_af

    .line 439
    .end local v10    # "child":Lgnu/expr/LambdaExp;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v36    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v13    # "enclosing":Lgnu/bytecode/Member;
    :cond_ba
    if-eqz v29, :cond_c8

    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v45, v0

    if-nez v45, :cond_c8

    .line 440
    move-object/from16 v13, v38

    goto/16 :goto_27

    .line 441
    :cond_c8
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v45, v0

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x24

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->indexOf(I)I

    move-result v45

    if-lez v45, :cond_27

    .line 442
    move-object/from16 v0, v29

    iget-object v13, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    goto/16 :goto_27

    .line 474
    .end local v13    # "enclosing":Lgnu/bytecode/Member;
    .restart local v10    # "child":Lgnu/expr/LambdaExp;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v36    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_e8
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v40, v0

    .line 475
    .local v40, "save_method":Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v39, v0

    .line 476
    .local v39, "save_lambda":Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v35

    .line 477
    .local v35, "saveFilename":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v37

    .line 478
    .local v37, "saveLine":I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v34

    .line 479
    .local v34, "saveColumn":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 480
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 482
    iget-object v11, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 483
    .local v11, "childDecl":Lgnu/expr/Declaration;
    if-eqz v11, :cond_11d

    const-wide/16 v46, 0x800

    move-wide/from16 v0, v46

    invoke-virtual {v11, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v45

    if-nez v45, :cond_128

    .line 485
    :cond_11d
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 486
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 487
    move-object/from16 v0, p1

    iput-object v10, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 488
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/Method;->initCode()V

    .line 489
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 490
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 491
    const-string v45, "*init*"

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_292

    .line 493
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    .line 495
    .local v12, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v45, v0

    if-eqz v45, :cond_180

    .line 497
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 498
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 503
    :cond_180
    iget-object v7, v10, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    .local v7, "bodyFirst":Lgnu/expr/Expression;
    :goto_182
    instance-of v0, v7, Lgnu/expr/BeginExp;

    move/from16 v45, v0

    if-eqz v45, :cond_19d

    .line 506
    move-object v0, v7

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v6, v0

    .line 507
    .local v6, "bbody":Lgnu/expr/BeginExp;
    iget v0, v6, Lgnu/expr/BeginExp;->length:I

    move/from16 v45, v0

    if-nez v45, :cond_194

    .line 508
    const/4 v7, 0x0

    goto :goto_182

    .line 510
    :cond_194
    iget-object v0, v6, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget-object v7, v45, v46

    goto :goto_182

    .line 514
    .end local v6    # "bbody":Lgnu/expr/BeginExp;
    :cond_19d
    const/4 v8, 0x0

    .line 516
    .local v8, "calledInit":Lgnu/bytecode/ClassType;
    instance-of v0, v7, Lgnu/expr/ApplyExp;

    move/from16 v45, v0

    if-eqz v45, :cond_1e9

    move-object v0, v7

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v14, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .local v14, "exp":Lgnu/expr/Expression;
    instance-of v0, v14, Lgnu/expr/QuoteExp;

    move/from16 v45, v0

    if-eqz v45, :cond_1e9

    check-cast v14, Lgnu/expr/QuoteExp;

    .end local v14    # "exp":Lgnu/expr/Expression;
    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v42

    .local v42, "value":Ljava/lang/Object;
    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/PrimProcedure;

    move/from16 v45, v0

    if-eqz v45, :cond_1e9

    .line 520
    move-object/from16 v0, v42

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object/from16 v30, v0

    .line 521
    .local v30, "pproc":Lgnu/expr/PrimProcedure;
    invoke-virtual/range {v30 .. v30}, Lgnu/expr/PrimProcedure;->isSpecial()Z

    move-result v45

    if-eqz v45, :cond_1e9

    const-string v45, "<init>"

    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1e9

    .line 523
    move-object/from16 v0, v30

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    .line 525
    .end local v30    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v42    # "value":Ljava/lang/Object;
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v41

    .line 526
    .local v41, "superClass":Lgnu/bytecode/ClassType;
    if-eqz v8, :cond_280

    .line 528
    sget-object v45, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v7, v0, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v8, v0, :cond_219

    move-object/from16 v0, v41

    if-eq v8, v0, :cond_219

    .line 530
    const/16 v45, 0x65

    const-string v46, "call to <init> for not this or super class"

    move-object/from16 v0, p1

    move/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 538
    :cond_219
    :goto_219
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v8, v0, :cond_23c

    .line 540
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v45

    new-instance v46, Ljava/util/Vector;

    const/16 v47, 0xa

    invoke-direct/range {v46 .. v47}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 542
    :cond_23c
    if-eqz v8, :cond_28c

    .line 544
    iget-object v0, v10, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 553
    .end local v7    # "bodyFirst":Lgnu/expr/Expression;
    .end local v8    # "calledInit":Lgnu/bytecode/ClassType;
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v41    # "superClass":Lgnu/bytecode/ClassType;
    :goto_249
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 554
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 555
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 556
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 557
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V
    :try_end_270
    .catchall {:try_start_c .. :try_end_270} :catchall_272

    goto/16 :goto_b7

    .line 655
    .end local v10    # "child":Lgnu/expr/LambdaExp;
    .end local v11    # "childDecl":Lgnu/expr/Declaration;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v27    # "new_class":Lgnu/bytecode/ClassType;
    .end local v29    # "outer":Lgnu/expr/LambdaExp;
    .end local v34    # "saveColumn":I
    .end local v35    # "saveFilename":Ljava/lang/String;
    .end local v36    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v37    # "saveLine":I
    .end local v39    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v40    # "save_method":Lgnu/bytecode/Method;
    :catchall_272
    move-exception v45

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    throw v45

    .line 532
    .restart local v7    # "bodyFirst":Lgnu/expr/Expression;
    .restart local v8    # "calledInit":Lgnu/bytecode/ClassType;
    .restart local v10    # "child":Lgnu/expr/LambdaExp;
    .restart local v11    # "childDecl":Lgnu/expr/Declaration;
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v27    # "new_class":Lgnu/bytecode/ClassType;
    .restart local v29    # "outer":Lgnu/expr/LambdaExp;
    .restart local v34    # "saveColumn":I
    .restart local v35    # "saveFilename":Ljava/lang/String;
    .restart local v36    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v37    # "saveLine":I
    .restart local v39    # "save_lambda":Lgnu/expr/LambdaExp;
    .restart local v40    # "save_method":Lgnu/bytecode/Method;
    .restart local v41    # "superClass":Lgnu/bytecode/ClassType;
    :cond_280
    if-eqz v41, :cond_219

    .line 536
    :try_start_282
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    goto :goto_219

    .line 546
    :cond_28c
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_249

    .line 550
    .end local v7    # "bodyFirst":Lgnu/expr/Expression;
    .end local v8    # "calledInit":Lgnu/bytecode/ClassType;
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v41    # "superClass":Lgnu/bytecode/ClassType;
    :cond_292
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 551
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_249

    .line 560
    .end local v11    # "childDecl":Lgnu/expr/Declaration;
    .end local v34    # "saveColumn":I
    .end local v35    # "saveFilename":Ljava/lang/String;
    .end local v37    # "saveLine":I
    .end local v39    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v40    # "save_method":Lgnu/bytecode/Method;
    :cond_29d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/ClassExp;->explicitInit:Z

    move/from16 v45, v0

    if-nez v45, :cond_2fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v45

    if-nez v45, :cond_2fb

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 567
    :cond_2c0
    :goto_2c0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v45

    if-eqz v45, :cond_315

    .line 569
    const/16 v23, 0x0

    .line 570
    .local v23, "methods":[Lgnu/bytecode/Method;
    const/16 v28, 0x0

    .line 577
    .local v28, "nmethods":I
    :goto_2ca
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2cc
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_4b9

    .line 579
    aget-object v22, v23, v19

    .line 580
    .local v22, "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v25

    .line 581
    .local v25, "mname":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v31

    .line 582
    .local v31, "ptypes":[Lgnu/bytecode/Type;
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v32

    .line 584
    .local v32, "rtype":Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v24

    .line 585
    .local v24, "mimpl":Lgnu/bytecode/Method;
    if-eqz v24, :cond_325

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v45

    if-nez v45, :cond_325

    .line 577
    :cond_2f8
    :goto_2f8
    add-int/lit8 v19, v19, 0x1

    goto :goto_2cc

    .line 562
    .end local v19    # "i":I
    .end local v22    # "meth":Lgnu/bytecode/Method;
    .end local v23    # "methods":[Lgnu/bytecode/Method;
    .end local v24    # "mimpl":Lgnu/bytecode/Method;
    .end local v25    # "mname":Ljava/lang/String;
    .end local v28    # "nmethods":I
    .end local v31    # "ptypes":[Lgnu/bytecode/Type;
    .end local v32    # "rtype":Lgnu/bytecode/Type;
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2c0

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v45, v0

    const-string v46, "unimplemented: explicit constructor cannot initialize "

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Initializer;->reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto :goto_2c0

    .line 574
    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v23

    .line 575
    .restart local v23    # "methods":[Lgnu/bytecode/Method;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "nmethods":I
    goto :goto_2ca

    .line 589
    .restart local v19    # "i":I
    .restart local v22    # "meth":Lgnu/bytecode/Method;
    .restart local v24    # "mimpl":Lgnu/bytecode/Method;
    .restart local v25    # "mname":Ljava/lang/String;
    .restart local v31    # "ptypes":[Lgnu/bytecode/Type;
    .restart local v32    # "rtype":Lgnu/bytecode/Type;
    :cond_325
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v45

    const/16 v46, 0x3

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_426

    const/16 v45, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    const/16 v46, 0x74

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_426

    const/16 v45, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    const/16 v46, 0x65

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_426

    const/16 v45, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .local v9, "ch":C
    const/16 v45, 0x67

    move/from16 v0, v45

    if-eq v9, v0, :cond_36b

    const/16 v45, 0x73

    move/from16 v0, v45

    if-ne v9, v0, :cond_426

    .line 595
    :cond_36b
    const/16 v45, 0x73

    move/from16 v0, v45

    if-ne v9, v0, :cond_402

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v45

    if-eqz v45, :cond_402

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_402

    .line 596
    const/16 v45, 0x0

    aget-object v18, v31, v45

    .line 601
    .local v18, "ftype":Lgnu/bytecode/Type;
    :goto_388
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v46, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v45

    const/16 v46, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 603
    .local v17, "fname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v16

    .line 604
    .local v16, "fld":Lgnu/bytecode/Field;
    if-nez v16, :cond_3d5

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v16

    .line 606
    :cond_3d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    move/from16 v2, v46

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v21

    .line 608
    .local v21, "impl":Lgnu/bytecode/Method;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    .line 609
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 610
    const/16 v45, 0x67

    move/from16 v0, v45

    if-ne v9, v0, :cond_413

    .line 612
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 619
    :goto_3fd
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_2f8

    .line 597
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "fld":Lgnu/bytecode/Field;
    .end local v17    # "fname":Ljava/lang/String;
    .end local v18    # "ftype":Lgnu/bytecode/Type;
    .end local v21    # "impl":Lgnu/bytecode/Method;
    :cond_402
    const/16 v45, 0x67

    move/from16 v0, v45

    if-ne v9, v0, :cond_2f8

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v45, v0

    if-nez v45, :cond_2f8

    .line 598
    move-object/from16 v18, v32

    .restart local v18    # "ftype":Lgnu/bytecode/Type;
    goto/16 :goto_388

    .line 616
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v16    # "fld":Lgnu/bytecode/Field;
    .restart local v17    # "fname":Ljava/lang/String;
    .restart local v21    # "impl":Lgnu/bytecode/Method;
    :cond_413
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 617
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_3fd

    .line 623
    .end local v9    # "ch":C
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v16    # "fld":Lgnu/bytecode/Field;
    .end local v17    # "fname":Ljava/lang/String;
    .end local v18    # "ftype":Lgnu/bytecode/Type;
    .end local v21    # "impl":Lgnu/bytecode/Method;
    :cond_426
    new-instance v44, Ljava/util/Vector;

    invoke-direct/range {v44 .. v44}, Ljava/util/Vector;-><init>()V

    .line 624
    .local v44, "vec":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 625
    invoke-virtual/range {v44 .. v44}, Ljava/util/Vector;->size()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_479

    .line 628
    invoke-virtual/range {v44 .. v44}, Ljava/util/Vector;->size()I

    move-result v45

    if-nez v45, :cond_476

    const-string v26, "missing implementation for "

    .line 631
    .local v26, "msg":Ljava/lang/String;
    :goto_450
    const/16 v45, 0x65

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p1

    move/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_2f8

    .line 628
    .end local v26    # "msg":Ljava/lang/String;
    :cond_476
    const-string v26, "ambiguous implementation for "

    goto :goto_450

    .line 635
    :cond_479
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    move/from16 v2, v46

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v21

    .line 637
    .restart local v21    # "impl":Lgnu/bytecode/Method;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    .line 638
    .restart local v12    # "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v43

    .line 639
    .local v43, "var":Lgnu/bytecode/Variable;
    :goto_49b
    if-eqz v43, :cond_4a7

    .line 640
    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 639
    invoke-virtual/range {v43 .. v43}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v43

    goto :goto_49b

    .line 641
    :cond_4a7
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/bytecode/Method;

    .line 642
    .local v20, "imethod":Lgnu/bytecode/Method;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 643
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_2f8

    .line 648
    .end local v12    # "code":Lgnu/bytecode/CodeAttr;
    .end local v20    # "imethod":Lgnu/bytecode/Method;
    .end local v21    # "impl":Lgnu/bytecode/Method;
    .end local v22    # "meth":Lgnu/bytecode/Method;
    .end local v24    # "mimpl":Lgnu/bytecode/Method;
    .end local v25    # "mname":Ljava/lang/String;
    .end local v31    # "ptypes":[Lgnu/bytecode/Type;
    .end local v32    # "rtype":Lgnu/bytecode/Type;
    .end local v43    # "var":Lgnu/bytecode/Variable;
    .end local v44    # "vec":Ljava/util/Vector;
    :cond_4b9
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 649
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;
    :try_end_4c2
    .catchall {:try_start_282 .. :try_end_4c2} :catchall_272

    .line 655
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v27
.end method

.method public compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .prologue
    .line 86
    iget-object v5, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 88
    .local v5, "new_class":Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 89
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1, v5}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 92
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v4

    .line 93
    .local v4, "needsLink":Z
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_16

    if-nez v4, :cond_16

    .line 123
    :goto_15
    return-void

    .line 95
    :cond_16
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-nez v8, :cond_1e

    if-eqz v4, :cond_56

    .line 97
    :cond_1e
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-ne v5, v8, :cond_4e

    .line 98
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v8}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    :goto_27
    const-string v8, "gnu.expr.PairClassType"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 102
    .local v7, "typeType":Lgnu/bytecode/ClassType;
    if-eqz v4, :cond_54

    const/4 v3, 0x3

    .line 109
    .local v3, "nargs":I
    :goto_30
    new-array v0, v3, [Lgnu/bytecode/Type;

    .line 110
    .local v0, "argsClass":[Lgnu/bytecode/Type;
    if-eqz v4, :cond_41

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 113
    add-int/lit8 v3, v3, -0x1

    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v8, v0, v3

    .line 115
    :cond_41
    const-string v8, "java.lang.Class"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 116
    .local v6, "typeClass":Lgnu/bytecode/ClassType;
    :goto_47
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5e

    aput-object v6, v0, v3

    goto :goto_47

    .line 100
    .end local v0    # "argsClass":[Lgnu/bytecode/Type;
    .end local v3    # "nargs":I
    .end local v6    # "typeClass":Lgnu/bytecode/ClassType;
    .end local v7    # "typeType":Lgnu/bytecode/ClassType;
    :cond_4e
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v8}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_27

    .line 102
    .restart local v7    # "typeType":Lgnu/bytecode/ClassType;
    :cond_54
    const/4 v3, 0x2

    goto :goto_30

    .line 106
    .end local v7    # "typeType":Lgnu/bytecode/ClassType;
    :cond_56
    const-string v8, "gnu.bytecode.Type"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 107
    .restart local v7    # "typeType":Lgnu/bytecode/ClassType;
    const/4 v3, 0x1

    .restart local v3    # "nargs":I
    goto :goto_30

    .line 117
    .restart local v0    # "argsClass":[Lgnu/bytecode/Type;
    .restart local v6    # "typeClass":Lgnu/bytecode/ClassType;
    :cond_5e
    const-string v8, "make"

    const/16 v9, 0x9

    invoke-virtual {v7, v8, v0, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 120
    .local v2, "makeMethod":Lgnu/bytecode/Method;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 122
    invoke-virtual {p2, p1, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_15
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .registers 3
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 788
    new-instance v0, Lgnu/expr/ClassInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/ClassInitializer;-><init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V

    iget-object v0, v0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    return-object v0
.end method

.method public declareParts(Lgnu/expr/Compilation;)V
    .registers 14
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 280
    iget-boolean v8, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    if-eqz v8, :cond_5

    .line 353
    :cond_4
    :goto_4
    return-void

    .line 282
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    .line 283
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 285
    .local v6, "seenFields":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lgnu/expr/Declaration;>;"
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 286
    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_11
    if-eqz v1, :cond_8c

    .line 289
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 291
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v2

    .line 292
    .local v2, "flags":I
    const-wide/16 v8, 0x800

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 293
    or-int/lit8 v2, v2, 0x8

    .line 294
    :cond_28
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 296
    or-int/lit16 v2, v2, 0x400

    .line 297
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 298
    .local v4, "ftype":Lgnu/bytecode/Type;
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string v9, "get"

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v8, v9, v2, v10, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    .line 300
    const/4 v8, 0x1

    new-array v7, v8, [Lgnu/bytecode/Type;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 301
    .local v7, "stypes":[Lgnu/bytecode/Type;
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string v9, "set"

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v8, v9, v2, v7, v10}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    .line 286
    .end local v2    # "flags":I
    .end local v4    # "ftype":Lgnu/bytecode/Type;
    .end local v7    # "stypes":[Lgnu/bytecode/Type;
    :cond_60
    :goto_60
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_11

    .line 306
    .restart local v2    # "flags":I
    :cond_65
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "fname":Ljava/lang/String;
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v8, v3, v9, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v8

    iput-object v8, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 310
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 311
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Declaration;

    .line 312
    .local v5, "old":Lgnu/expr/Declaration;
    if-eqz v5, :cond_88

    .line 313
    invoke-static {v5, v1, p1}, Lgnu/expr/ClassExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 314
    :cond_88
    invoke-virtual {v6, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 319
    .end local v2    # "flags":I
    .end local v3    # "fname":Ljava/lang/String;
    .end local v5    # "old":Lgnu/expr/Declaration;
    :cond_8c
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, "child":Lgnu/expr/LambdaExp;
    :goto_8e
    if-eqz v0, :cond_f8

    .line 322
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 323
    const/16 v8, 0x4000

    invoke-virtual {p0, v8}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 324
    :cond_9b
    const-string v8, "*init*"

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 326
    const/4 v8, 0x1

    iput-boolean v8, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    .line 327
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 328
    const/16 v8, 0x65

    const-string v9, "*init* method cannot be abstract"

    invoke-virtual {p1, v8, v9, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 329
    :cond_b7
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    instance-of v8, v8, Lgnu/expr/PairClassType;

    if-eqz v8, :cond_c4

    .line 330
    const/16 v8, 0x65

    const-string v9, "\'*init*\' methods only supported for simple classes"

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 336
    :cond_c4
    iput-object p0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 337
    iget-object v8, p0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v0, v8, :cond_dc

    iget-object v8, p0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v0, v8, :cond_dc

    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v8, :cond_dc

    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v10, 0x800

    invoke-virtual {v8, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_e2

    :cond_dc
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-nez v8, :cond_e8

    .line 341
    :cond_e2
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, p1, v9}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 342
    :cond_e8
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-eqz v8, :cond_f5

    .line 343
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v8, p1, v9}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 320
    :cond_f5
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_8e

    .line 345
    :cond_f8
    iget-boolean v8, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v8, :cond_109

    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v8

    if-nez v8, :cond_109

    .line 346
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v8, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 347
    :cond_109
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 348
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v9

    or-int/lit16 v9, v9, 0x400

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 349
    :cond_11c
    iget-object v8, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v8, :cond_4

    .line 350
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    iget-object v10, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    goto/16 :goto_4
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .registers 3
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 127
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    if-eqz v0, :cond_7

    sget-object v0, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    goto :goto_6
.end method

.method public final isAbstract()Z
    .registers 2

    .prologue
    .line 15
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isMakingClassPair()Z
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSimple()Z
    .registers 2

    .prologue
    .line 12
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    return v0
.end method

.method protected mustCompile()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 11
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .prologue
    const/4 v8, 0x2

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getExpClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {p1, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 740
    .local v4, "name":Ljava/lang/Object;
    if-eqz v4, :cond_31

    .line 742
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 743
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 745
    :cond_31
    iget v6, p0, Lgnu/expr/ClassExp;->id:I

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(I)V

    .line 746
    const-string v6, "/fl:"

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v6, p0, Lgnu/expr/ClassExp;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 747
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v6, v6

    if-lez v6, :cond_6b

    .line 750
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 751
    const-string v6, "supers:"

    const-string v7, ""

    invoke-virtual {p1, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v6, v6

    if-ge v2, v6, :cond_66

    .line 754
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 755
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 757
    :cond_66
    const-string v6, ""

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 759
    .end local v2    # "i":I
    :cond_6b
    const/16 v6, 0x28

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 760
    const/4 v5, 0x0

    .line 761
    .local v5, "prevMode":Lgnu/expr/Special;
    const/4 v2, 0x0

    .line 762
    .restart local v2    # "i":I
    iget-object v6, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v6, :cond_8e

    const/4 v3, 0x0

    .line 764
    .local v3, "key_args":I
    :goto_77
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_7b
    if-eqz v1, :cond_92

    .line 766
    if-lez v2, :cond_84

    .line 767
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 768
    :cond_84
    invoke-virtual {v1, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    .line 764
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_7b

    .line 762
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "key_args":I
    :cond_8e
    iget-object v6, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    array-length v3, v6

    goto :goto_77

    .line 771
    .restart local v1    # "decl":Lgnu/expr/Declaration;
    .restart local v3    # "key_args":I
    :cond_92
    const-string v6, ") "

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, "child":Lgnu/expr/LambdaExp;
    :goto_99
    if-eqz v0, :cond_a4

    .line 775
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 776
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->print(Lgnu/mapping/OutPort;)V

    .line 773
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_99

    .line 778
    :cond_a4
    iget-object v6, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    if-eqz v6, :cond_b0

    .line 780
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 781
    iget-object v6, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v6, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 783
    :cond_b0
    const-string v6, ")"

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setSimple(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    return-void
.end method

.method public setTypes(Lgnu/expr/Compilation;)V
    .registers 27
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v22, v0

    if-nez v22, :cond_4d

    const/4 v15, 0x0

    .line 133
    .local v15, "nsupers":I
    :goto_9
    new-array v0, v15, [Lgnu/bytecode/ClassType;

    move-object/from16 v20, v0

    .line 134
    .local v20, "superTypes":[Lgnu/bytecode/ClassType;
    const/16 v19, 0x0

    .line 135
    .local v19, "superType":Lgnu/bytecode/ClassType;
    const/4 v7, 0x0

    .line 136
    .local v7, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_12
    if-ge v5, v15, :cond_bd

    .line 138
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    invoke-virtual/range {v22 .. v23}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v17

    .line 139
    .local v17, "st":Lgnu/bytecode/Type;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v22, v0

    if-nez v22, :cond_57

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v22, v0

    aget-object v22, v22, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 142
    const/16 v22, 0x65

    const-string v23, "invalid super type"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move v7, v8

    .line 136
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :goto_49
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_12

    .line 132
    .end local v5    # "i":I
    .end local v8    # "j":I
    .end local v15    # "nsupers":I
    .end local v17    # "st":Lgnu/bytecode/Type;
    .end local v19    # "superType":Lgnu/bytecode/ClassType;
    .end local v20    # "superTypes":[Lgnu/bytecode/ClassType;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v15, v0

    goto :goto_9

    .restart local v5    # "i":I
    .restart local v8    # "j":I
    .restart local v15    # "nsupers":I
    .restart local v17    # "st":Lgnu/bytecode/Type;
    .restart local v19    # "superType":Lgnu/bytecode/ClassType;
    .restart local v20    # "superTypes":[Lgnu/bytecode/ClassType;
    :cond_57
    move-object/from16 v21, v17

    .line 145
    check-cast v21, Lgnu/bytecode/ClassType;

    .line 149
    .local v21, "t":Lgnu/bytecode/ClassType;
    :try_start_5b
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassType;->getModifiers()I
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5e} :catch_91

    move-result v11

    .line 157
    .local v11, "modifiers":I
    :cond_5f
    :goto_5f
    and-int/lit16 v0, v11, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_b8

    .line 159
    if-ge v8, v5, :cond_89

    .line 160
    const/16 v22, 0x65

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate superclass for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 161
    :cond_89
    move-object/from16 v19, v21

    .line 162
    move-object/from16 v0, p0

    iput v5, v0, Lgnu/expr/ClassExp;->superClassIndex:I

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_49

    .line 151
    .end local v7    # "j":I
    .end local v11    # "modifiers":I
    .restart local v8    # "j":I
    :catch_91
    move-exception v4

    .line 153
    .local v4, "ex":Ljava/lang/RuntimeException;
    const/4 v11, 0x0

    .line 154
    .restart local v11    # "modifiers":I
    if-eqz p1, :cond_5f

    .line 155
    const/16 v22, 0x65

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "unknown super-type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_5f

    .line 165
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_b8
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aput-object v21, v20, v8

    goto :goto_49

    .line 167
    .end local v7    # "j":I
    .end local v11    # "modifiers":I
    .end local v17    # "st":Lgnu/bytecode/Type;
    .end local v21    # "t":Lgnu/bytecode/ClassType;
    .restart local v8    # "j":I
    :cond_bd
    if-eqz v19, :cond_d9

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ClassExp;->flags:I

    move/from16 v22, v0

    const v23, 0x8000

    and-int v22, v22, v23

    if-eqz v22, :cond_d9

    .line 168
    const/16 v22, 0x65

    const-string v23, "cannot be interface since has superclass"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 169
    :cond_d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/ClassExp;->simple:Z

    move/from16 v22, v0

    if-nez v22, :cond_21f

    if-nez v19, :cond_21f

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ClassExp;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x10000

    and-int v22, v22, v23

    if-nez v22, :cond_21f

    const/high16 v22, 0x20000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v22

    if-nez v22, :cond_10f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v22

    if-eqz v22, :cond_21f

    .line 173
    :cond_10f
    new-instance v16, Lgnu/expr/PairClassType;

    invoke-direct/range {v16 .. v16}, Lgnu/expr/PairClassType;-><init>()V

    .line 174
    .local v16, "ptype":Lgnu/expr/PairClassType;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 175
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/PairClassType;->setInterface(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 177
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v6, v0, [Lgnu/bytecode/ClassType;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v23, v0

    aput-object v23, v6, v22

    .line 179
    .local v6, "interfaces":[Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    sget-object v23, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v22 .. v23}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 184
    .end local v6    # "interfaces":[Lgnu/bytecode/ClassType;
    .end local v16    # "ptype":Lgnu/expr/PairClassType;
    :cond_155
    :goto_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    if-nez v19, :cond_15f

    sget-object v19, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .end local v19    # "superType":Lgnu/bytecode/ClassType;
    :cond_15f
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 187
    if-ne v8, v15, :cond_239

    .line 188
    move-object/from16 v6, v20

    .line 194
    .restart local v6    # "interfaces":[Lgnu/bytecode/ClassType;
    :goto_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_21e

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_24a

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    .line 212
    .local v12, "name":Ljava/lang/String;
    :cond_18d
    :goto_18d
    if-nez v12, :cond_28f

    .line 214
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 215
    .local v13, "nbuf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 216
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/16 v22, 0x24

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 219
    .local v9, "len":I
    const/4 v5, 0x0

    .line 221
    :goto_1be
    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v22

    if-nez v22, :cond_288

    .line 266
    .end local v9    # "len":I
    .end local v13    # "nbuf":Ljava/lang/StringBuffer;
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v22

    if-eqz v22, :cond_21e

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "$class"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 274
    .end local v12    # "name":Ljava/lang/String;
    :cond_21e
    return-void

    .line 182
    .end local v6    # "interfaces":[Lgnu/bytecode/ClassType;
    .restart local v19    # "superType":Lgnu/bytecode/ClassType;
    :cond_21f
    const v22, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v22

    if-eqz v22, :cond_155

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lgnu/bytecode/ClassType;->setInterface(Z)V

    goto/16 :goto_155

    .line 191
    .end local v19    # "superType":Lgnu/bytecode/ClassType;
    :cond_239
    new-array v6, v8, [Lgnu/bytecode/ClassType;

    .line 192
    .restart local v6    # "interfaces":[Lgnu/bytecode/ClassType;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_16a

    .line 203
    :cond_24a
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->getName()Ljava/lang/String;

    move-result-object v12

    .line 204
    .restart local v12    # "name":Ljava/lang/String;
    if-eqz v12, :cond_18d

    .line 206
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 207
    .local v14, "nlen":I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v14, v0, :cond_18d

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18d

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x3e

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18d

    .line 209
    const/16 v22, 0x1

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_18d

    .line 225
    .end local v14    # "nlen":I
    .restart local v9    # "len":I
    .restart local v13    # "nbuf":Ljava/lang/StringBuffer;
    :cond_288
    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1be

    .line 228
    .end local v9    # "len":I
    .end local v13    # "nbuf":Ljava/lang/StringBuffer;
    :cond_28f
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v22

    if-eqz v22, :cond_29d

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ObjectExp;

    move/from16 v22, v0

    if-eqz v22, :cond_2a5

    .line 229
    :cond_29d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1cd

    .line 232
    :cond_2a5
    const/16 v18, 0x0

    .line 233
    .local v18, "start":I
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .restart local v13    # "nbuf":Ljava/lang/StringBuffer;
    :cond_2b0
    :goto_2b0
    const/16 v22, 0x2e

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 237
    .local v3, "dot":I
    if-gez v3, :cond_2fc

    .line 245
    if-nez v18, :cond_347

    .line 247
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    if-nez v22, :cond_31f

    const/4 v10, 0x0

    .line 249
    .local v10, "mainName":Ljava/lang/String;
    :goto_2c7
    if-nez v10, :cond_32a

    const/4 v3, -0x1

    .line 250
    :goto_2ca
    if-lez v3, :cond_333

    .line 251
    const/16 v22, 0x0

    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    .end local v10    # "mainName":Ljava/lang/String;
    :cond_2dd
    :goto_2dd
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f6

    .line 262
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_2f6
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1cd

    .line 239
    :cond_2fc
    move/from16 v0, v18

    invoke-virtual {v12, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v18, v3, 0x1

    .line 242
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2b0

    .line 243
    const/16 v22, 0x2e

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b0

    .line 247
    :cond_31f
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_2c7

    .line 249
    .restart local v10    # "mainName":Ljava/lang/String;
    :cond_32a
    const/16 v22, 0x2e

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    goto :goto_2ca

    .line 252
    :cond_333
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2dd

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2dd

    .line 255
    .end local v10    # "mainName":Ljava/lang/String;
    :cond_347
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_2dd

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2dd

    .line 257
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const/16 v22, 0x24

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2dd
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 663
    .local v0, "comp":Lgnu/expr/Compilation;
    if-nez v0, :cond_b

    .line 664
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 674
    :goto_a
    return-object v2

    .line 665
    :cond_b
    iget-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 669
    .local v1, "saveClass":Lgnu/bytecode/ClassType;
    :try_start_d
    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v2, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 670
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    move-result-object v2

    .line 674
    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_a

    :catchall_18
    move-exception v2

    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    throw v2
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 681
    .local v2, "save":Lgnu/expr/LambdaExp;
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 682
    iget-object v3, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    iget-object v4, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v4, v4

    invoke-virtual {p1, v3, v4, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 685
    :try_start_f
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 686
    .local v0, "child":Lgnu/expr/LambdaExp;
    :goto_11
    if-eqz v0, :cond_32

    iget-object v3, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_32

    .line 689
    iget-object v3, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_2c

    .line 691
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 692
    .local v1, "firstParam":Lgnu/expr/Declaration;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 693
    iget-object v3, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 695
    .end local v1    # "firstParam":Lgnu/expr/Declaration;
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_35

    goto :goto_11

    .line 700
    :cond_32
    iput-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 702
    return-void

    .line 700
    .end local v0    # "child":Lgnu/expr/LambdaExp;
    :catchall_35
    move-exception v3

    iput-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw v3
.end method
