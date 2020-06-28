.class public abstract Lcom/google/api/client/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/JsonParser$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method private parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 25
    .param p2, "destination"    # Ljava/lang/Object;
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/google/api/client/json/GenericJson;

    if-eqz v3, :cond_11

    move-object/from16 v3, p2

    .line 327
    check-cast v3, Lcom/google/api/client/json/GenericJson;

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 329
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v13

    .line 330
    .local v13, "curToken":Lcom/google/api/client/json/JsonToken;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 331
    .local v14, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v14}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v11

    .line 332
    .local v11, "classInfo":Lcom/google/api/client/util/ClassInfo;
    const-class v3, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    .line 333
    .local v18, "isGenericData":Z
    if-nez v18, :cond_72

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_72

    move-object/from16 v15, p2

    .line 335
    check-cast v15, Ljava/util/Map;

    .line 336
    .local v15, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v14}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v3, v1, v2}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 374
    .end local v15    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3e
    return-void

    .line 354
    .local v16, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .local v19, "key":Ljava/lang/String;
    :cond_3f
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 355
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 356
    .local v12, "contextSize":I
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v17

    .line 359
    .local v17, "fieldValue":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "contextSize":I
    .end local v17    # "fieldValue":Ljava/lang/Object;
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v13

    .line 340
    .end local v16    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v19    # "key":Ljava/lang/String;
    :cond_72
    sget-object v3, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v13, v3, :cond_3e

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    .line 342
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 344
    if-eqz p3, :cond_8b

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 348
    :cond_8b
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v16

    .line 349
    .restart local v16    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v16, :cond_a7

    .line 351
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 352
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "final array/object fields are not supported"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_a7
    if-eqz v18, :cond_c3

    move-object/from16 v20, p2

    .line 363
    check-cast v20, Lcom/google/api/client/util/GenericData;

    .line 364
    .local v20, "object":Lcom/google/api/client/util/GenericData;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6e

    .line 367
    .end local v20    # "object":Lcom/google/api/client/util/GenericData;
    :cond_c3
    if-eqz p3, :cond_ce

    .line 368
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    :cond_ce
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    goto :goto_6e
.end method

.method private parseArray(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 13
    .param p2, "destinationItemType"    # Ljava/lang/reflect/Type;
    .param p4, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p3, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 457
    .local v6, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v6, v0, :cond_1a

    .line 459
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v7

    .line 461
    .local v7, "parsedValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 463
    goto :goto_4

    .line 464
    .end local v7    # "parsedValue":Ljava/lang/Object;, "TT;"
    :cond_1a
    return-void
.end method

.method private parseMap(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 14
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 469
    .local v6, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v6, v0, :cond_17

    .line 470
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 473
    if-eqz p4, :cond_18

    invoke-virtual {p4, p1, v7}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 480
    .end local v7    # "key":Ljava/lang/String;
    :cond_17
    return-void

    .line 476
    .restart local v7    # "key":Ljava/lang/String;
    :cond_18
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v8

    .line 477
    .local v8, "value":Ljava/lang/Object;
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 479
    goto :goto_4
.end method

.method private final parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 26
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "destination"    # Ljava/lang/Object;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    .local p3, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 497
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/Class;

    if-eqz v15, :cond_53

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Class;

    move-object v14, v15

    .line 498
    .local v14, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_13
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_21

    move-object/from16 v15, p2

    .line 499
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v15}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v14

    .line 502
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v13

    .line 503
    .local v13, "token":Lcom/google/api/client/json/JsonToken;
    sget-object v15, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual {v13}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_384

    .line 637
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": unexpected JSON node type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 497
    .end local v13    # "token":Lcom/google/api/client/json/JsonToken;
    .end local v14    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_53
    const/4 v14, 0x0

    goto :goto_13

    .line 506
    .restart local v13    # "token":Lcom/google/api/client/json/JsonToken;
    .restart local v14    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_55
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 507
    .local v8, "isArray":Z
    if-eqz p2, :cond_67

    if-nez v8, :cond_67

    if-eqz v14, :cond_bd

    const-class v15, Ljava/util/Collection;

    invoke-static {v14, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_bd

    :cond_67
    const/4 v15, 0x1

    :goto_68
    const-string v16, "%s: expected collection or array type but got %s for field %s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    const/16 v18, 0x2

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const/4 v4, 0x0

    .line 512
    .local v4, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz p5, :cond_94

    if-eqz p1, :cond_94

    .line 513
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v4

    .line 515
    :cond_94
    if-nez v4, :cond_9a

    .line 516
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v4

    .line 518
    :cond_9a
    const/4 v11, 0x0

    .line 519
    .local v11, "subType":Ljava/lang/reflect/Type;
    if-eqz v8, :cond_bf

    .line 520
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 524
    :cond_a1
    :goto_a1
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v0, v4, v11, v1, v2}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 526
    if-eqz v8, :cond_ce

    .line 527
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/google/api/client/util/Types;->toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    .line 635
    .end local v4    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v8    # "isArray":Z
    .end local v11    # "subType":Ljava/lang/reflect/Type;
    :cond_bc
    :goto_bc
    return-object v15

    .line 507
    .restart local v8    # "isArray":Z
    :cond_bd
    const/4 v15, 0x0

    goto :goto_68

    .line 521
    .restart local v4    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v11    # "subType":Ljava/lang/reflect/Type;
    :cond_bf
    if-eqz v14, :cond_a1

    const-class v15, Ljava/lang/Iterable;

    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_a1

    .line 522
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v11

    goto :goto_a1

    :cond_ce
    move-object v15, v4

    .line 529
    goto :goto_bc

    .line 533
    .end local v4    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v8    # "isArray":Z
    .end local v11    # "subType":Ljava/lang/reflect/Type;
    :pswitch_d0
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v15

    if-nez v15, :cond_14e

    const/4 v15, 0x1

    :goto_d7
    const-string v16, "%s: expected object or map type but got %s for field %s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    const/16 v18, 0x2

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const/4 v10, 0x0

    .line 537
    .local v10, "newInstance":Ljava/lang/Object;
    if-eqz v14, :cond_101

    if-eqz p5, :cond_101

    .line 538
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .line 540
    .end local v10    # "newInstance":Ljava/lang/Object;
    :cond_101
    if-eqz v14, :cond_150

    const-class v15, Ljava/util/Map;

    invoke-static {v14, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_150

    const/4 v9, 0x1

    .line 541
    .local v9, "isMap":Z
    :goto_10c
    if-nez v10, :cond_380

    .line 543
    if-nez v9, :cond_112

    if-nez v14, :cond_152

    .line 544
    :cond_112
    invoke-static {v14}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v10

    .local v10, "newInstance":Ljava/util/Map;
    move-object v15, v10

    .line 549
    .end local v10    # "newInstance":Ljava/util/Map;
    :goto_117
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 550
    .local v5, "contextSize":I
    if-eqz p2, :cond_124

    .line 551
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_124
    if-eqz v9, :cond_15a

    const-class v16, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-nez v16, :cond_15a

    .line 554
    const-class v16, Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_158

    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 556
    .local v12, "subValueType":Ljava/lang/reflect/Type;
    :goto_13e
    if-eqz v12, :cond_15a

    move-object v6, v15

    .line 558
    check-cast v6, Ljava/util/Map;

    .line 559
    .local v6, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v0, v6, v12, v1, v2}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    goto/16 :goto_bc

    .line 533
    .end local v5    # "contextSize":I
    .end local v6    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "isMap":Z
    .end local v12    # "subValueType":Ljava/lang/reflect/Type;
    :cond_14e
    const/4 v15, 0x0

    goto :goto_d7

    .line 540
    :cond_150
    const/4 v9, 0x0

    goto :goto_10c

    .line 546
    .restart local v9    # "isMap":Z
    :cond_152
    invoke-static {v14}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "newInstance":Ljava/lang/Object;
    move-object v15, v10

    goto :goto_117

    .line 554
    .end local v10    # "newInstance":Ljava/lang/Object;
    .restart local v5    # "contextSize":I
    :cond_158
    const/4 v12, 0x0

    goto :goto_13e

    .line 563
    :cond_15a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v15, v2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 564
    if-eqz p2, :cond_bc

    .line 565
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_bc

    .line 570
    .end local v5    # "contextSize":I
    .end local v9    # "isMap":Z
    :pswitch_16c
    if-eqz p2, :cond_17c

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_17c

    if-eqz v14, :cond_1b7

    const-class v15, Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1b7

    :cond_17c
    const/4 v15, 0x1

    :goto_17d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "%s: expected type Boolean or boolean but got %s for field %s"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    const/16 v18, 0x2

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 574
    sget-object v15, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    if-ne v13, v15, :cond_1b9

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_bc

    .line 570
    :cond_1b7
    const/4 v15, 0x0

    goto :goto_17d

    .line 574
    :cond_1b9
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_bc

    .line 577
    :pswitch_1bd
    if-eqz p1, :cond_1c9

    const-class v15, Lcom/google/api/client/json/JsonString;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    if-nez v15, :cond_1f3

    :cond_1c9
    const/4 v15, 0x1

    :goto_1ca
    const-string v16, "%s: number type formatted as a JSON number cannot use @JsonString annotation on the field %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    if-eqz v14, :cond_1ed

    const-class v15, Ljava/math/BigDecimal;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1f5

    .line 581
    :cond_1ed
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v15

    goto/16 :goto_bc

    .line 577
    :cond_1f3
    const/4 v15, 0x0

    goto :goto_1ca

    .line 583
    :cond_1f5
    const-class v15, Ljava/math/BigInteger;

    if-ne v14, v15, :cond_1ff

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v15

    goto/16 :goto_bc

    .line 586
    :cond_1ff
    const-class v15, Lcom/google/common/primitives/UnsignedInteger;

    if-ne v14, v15, :cond_209

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getUnsignedIntegerValue()Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v15

    goto/16 :goto_bc

    .line 589
    :cond_209
    const-class v15, Lcom/google/common/primitives/UnsignedLong;

    if-ne v14, v15, :cond_213

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getUnsignedLongValue()Lcom/google/common/primitives/UnsignedLong;

    move-result-object v15

    goto/16 :goto_bc

    .line 592
    :cond_213
    const-class v15, Ljava/lang/Double;

    if-eq v14, v15, :cond_21b

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_225

    .line 593
    :cond_21b
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDoubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    goto/16 :goto_bc

    .line 595
    :cond_225
    const-class v15, Ljava/lang/Long;

    if-eq v14, v15, :cond_22d

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_237

    .line 596
    :cond_22d
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getLongValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_bc

    .line 598
    :cond_237
    const-class v15, Ljava/lang/Float;

    if-eq v14, v15, :cond_23f

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_249

    .line 599
    :cond_23f
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFloatValue()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto/16 :goto_bc

    .line 601
    :cond_249
    const-class v15, Ljava/lang/Integer;

    if-eq v14, v15, :cond_251

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_25b

    .line 602
    :cond_251
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getIntValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_bc

    .line 604
    :cond_25b
    const-class v15, Ljava/lang/Short;

    if-eq v14, v15, :cond_263

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_26d

    .line 605
    :cond_263
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getShortValue()S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    goto/16 :goto_bc

    .line 607
    :cond_26d
    const-class v15, Ljava/lang/Byte;

    if-eq v14, v15, :cond_275

    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_27f

    .line 608
    :cond_275
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getByteValue()B

    move-result v15

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    goto/16 :goto_bc

    .line 610
    :cond_27f
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": expected numeric type but got "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 613
    :pswitch_2b2
    if-eqz v14, :cond_2c8

    const-class v15, Ljava/lang/Number;

    invoke-virtual {v15, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_2c8

    if-eqz p1, :cond_2ee

    const-class v15, Lcom/google/api/client/json/JsonString;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    if-eqz v15, :cond_2ee

    :cond_2c8
    const/4 v15, 0x1

    :goto_2c9
    const-string v16, "%s: number field formatted as a JSON string must use the @JsonString annotation: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :try_start_2e2
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2eb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e2 .. :try_end_2eb} :catch_2f0

    move-result-object v15

    goto/16 :goto_bc

    .line 613
    :cond_2ee
    const/4 v15, 0x0

    goto :goto_2c9

    .line 620
    :catch_2f0
    move-exception v7

    .line 621
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 624
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_318
    if-eqz v14, :cond_320

    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-nez v15, :cond_35a

    :cond_320
    const/4 v15, 0x1

    :goto_321
    const-string v16, "%s: primitive number field but found a JSON null: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 626
    if-eqz v14, :cond_372

    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    move-result v15

    and-int/lit16 v15, v15, 0x600

    if-eqz v15, :cond_372

    .line 628
    const-class v15, Ljava/util/Collection;

    invoke-static {v14, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_35c

    .line 629
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_bc

    .line 624
    :cond_35a
    const/4 v15, 0x0

    goto :goto_321

    .line 631
    :cond_35c
    const-class v15, Ljava/util/Map;

    invoke-static {v14, v15}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_372

    .line 632
    invoke-static {v14}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_bc

    .line 635
    :cond_372
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_bc

    .restart local v9    # "isMap":Z
    :cond_380
    move-object v15, v10

    goto/16 :goto_117

    .line 503
    nop

    :pswitch_data_384
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_55
        :pswitch_55
        :pswitch_d0
        :pswitch_d0
        :pswitch_16c
        :pswitch_16c
        :pswitch_1bd
        :pswitch_1bd
        :pswitch_2b2
        :pswitch_318
    .end packed-switch
.end method

.method private startParsing()Lcom/google/api/client/json/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 200
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v0, :cond_a

    .line 201
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 203
    :cond_a
    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :goto_d
    const-string v2, "no JSON input found"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 204
    return-object v0

    .line 203
    :cond_13
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 220
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    sget-object v1, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual {v0}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 231
    :goto_f
    return-object v0

    .line 222
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_21

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    goto :goto_1d

    .line 228
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_f

    .line 220
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getByteValue()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentToken()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getShortValue()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUnsignedIntegerValue()Lcom/google/common/primitives/UnsignedInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUnsignedLongValue()Lcom/google/common/primitives/UnsignedLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextToken()Lcom/google/api/client/json/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 5
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 10
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .param p2, "close"    # Z
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 296
    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    move-result-object v0

    .line 298
    if-eqz p2, :cond_16

    .line 299
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_16
    return-object v0

    .line 298
    :catchall_17
    move-exception v0

    if-eqz p2, :cond_1d

    .line 299
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_1d
    throw v0
.end method

.method public final parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 5
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 321
    return-void
.end method

.method public final parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 4
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseAndClose(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 4
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 250
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 252
    return-void

    .line 250
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 428
    .local v0, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 429
    return-object v0
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 444
    return-void
.end method

.method public final parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 409
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 411
    return-void

    .line 409
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public abstract skipChildren()Lcom/google/api/client/json/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final skipToKey(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "keysToFind":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 184
    .local v0, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v2, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v2, :cond_1e

    .line 185
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 187
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 193
    .end local v1    # "key":Ljava/lang/String;
    :goto_15
    return-object v1

    .line 190
    .restart local v1    # "key":Ljava/lang/String;
    :cond_16
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 191
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 192
    goto :goto_4

    .line 193
    .end local v1    # "key":Ljava/lang/String;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public final skipToKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyToFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/util/Set;)Ljava/lang/String;

    .line 167
    return-void
.end method
