.class public final Lcom/google/api/client/xml/XmlNamespaceDictionary;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    }
.end annotation


# instance fields
.field private final namespaceAliasToUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final namespaceUriToAliasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    .line 316
    return-void
.end method

.method private computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V
    .registers 15
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "aliases":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 249
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_c

    .line 250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    .local v6, "name":Ljava/lang/String;
    const-string v10, "text()"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 252
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 253
    .local v1, "colon":I
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_75

    const/4 v5, 0x1

    .line 254
    .local v5, "isAttribute":Z
    :goto_3c
    const/4 v10, -0x1

    if-ne v1, v10, :cond_41

    if-nez v5, :cond_49

    .line 255
    :cond_41
    const/4 v10, -0x1

    if-ne v1, v10, :cond_77

    const-string v0, ""

    .line 256
    .local v0, "alias":Ljava/lang/String;
    :goto_46
    invoke-interface {p2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v0    # "alias":Ljava/lang/String;
    :cond_49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 259
    .local v9, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_c

    invoke-static {v9}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 260
    instance-of v10, v8, Ljava/lang/Iterable;

    if-nez v10, :cond_5f

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_88

    .line 261
    :cond_5f
    invoke-static {v8}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 262
    .local v7, "subValue":Ljava/lang/Object;
    invoke-direct {p0, v7, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_67

    .line 253
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isAttribute":Z
    .end local v7    # "subValue":Ljava/lang/Object;
    .end local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_75
    const/4 v5, 0x0

    goto :goto_3c

    .line 255
    .restart local v5    # "isAttribute":Z
    :cond_77
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_86

    const/4 v10, 0x1

    :goto_81
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_86
    const/4 v10, 0x0

    goto :goto_81

    .line 265
    .restart local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_88
    invoke-direct {p0, v8, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_c

    .line 271
    .end local v1    # "colon":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "isAttribute":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8c
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "errorOnUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v1, ""

    .line 220
    .local v1, "elementAlias":Ljava/lang/String;
    if-eqz p2, :cond_12

    .line 221
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 222
    .local v0, "colon":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    .end local v0    # "colon":I
    :cond_12
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 228
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementNamespaceUri"    # Ljava/lang/String;
    .param p3, "elementLocalName"    # Ljava/lang/String;
    .param p4, "element"    # Ljava/lang/Object;
    .param p5, "errorOnUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p2, :cond_e

    const/4 v0, 0x0

    .line 211
    .local v0, "elementAlias":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 214
    return-void

    .line 210
    .end local v0    # "elementAlias":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "errorOnUnknown"    # Z
    .param p4, "elementAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-interface {p1, v4, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 235
    .local v1, "aliases":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    .line 236
    if-eqz p4, :cond_11

    .line 237
    invoke-interface {v1, p4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_11
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 243
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_29
    new-instance v4, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    invoke-direct {v4, p0, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v4
.end method

.method static toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 408
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_21

    move-object v1, p0

    .line 409
    check-cast v1, Ljava/lang/Float;

    .line 410
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    .line 411
    const-string v2, "INF"

    .line 433
    .end local v1    # "f":Ljava/lang/Float;
    .end local p0    # "value":Ljava/lang/Object;
    :goto_13
    return-object v2

    .line 413
    .restart local v1    # "f":Ljava/lang/Float;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    .line 414
    const-string v2, "-INF"

    goto :goto_13

    .line 417
    .end local v1    # "f":Ljava/lang/Float;
    :cond_21
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_42

    move-object v0, p0

    .line 418
    check-cast v0, Ljava/lang/Double;

    .line 419
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_35

    .line 420
    const-string v2, "INF"

    goto :goto_13

    .line 422
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_42

    .line 423
    const-string v2, "-INF"

    goto :goto_13

    .line 426
    .end local v0    # "d":Ljava/lang/Double;
    :cond_42
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_4e

    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_4e

    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_53

    .line 427
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 429
    :cond_53
    instance-of v2, p0, Lcom/google/api/client/util/DateTime;

    if-eqz v2, :cond_5e

    .line 430
    check-cast p0, Lcom/google/api/client/util/DateTime;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 432
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5e
    instance-of v2, p0, Ljava/lang/Enum;

    if-eqz v2, :cond_6d

    .line 433
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    .line 435
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getAliasForUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAliasToUriMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "namespaceUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1c

    move v1, v2

    :goto_9
    const-string v4, "invalid XML: no alias declared for namesapce <%s>; work-around by setting XML namepace directly by calling the set method of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-class v3, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    return-object v0

    :cond_1c
    move v1, v3

    .line 309
    goto :goto_9
.end method

.method getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "errorOnUnknown"    # Z
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2f

    .line 293
    if-nez p1, :cond_30

    move v1, v2

    :goto_b
    const-string v4, "unrecognized alias: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "(default)"

    :goto_17
    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://unknown/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .end local v0    # "result":Ljava/lang/String;
    :cond_2f
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_30
    move v1, v3

    .line 293
    goto :goto_b

    :cond_32
    move-object v2, p2

    goto :goto_17
.end method

.method public declared-synchronized getUriForAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUriToAliasMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 206
    return-void
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementNamespaceUri"    # Ljava/lang/String;
    .param p3, "elementLocalName"    # Ljava/lang/String;
    .param p4, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 193
    return-void
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 134
    monitor-enter p0

    const/4 v2, 0x0

    .line 135
    .local v2, "previousUri":Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, "previousAlias":Ljava/lang/String;
    if-nez p2, :cond_21

    .line 137
    if-eqz p1, :cond_11

    .line 138
    :try_start_7
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 151
    :cond_11
    :goto_11
    if-eqz v2, :cond_18

    .line 152
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_18
    if-eqz v1, :cond_1f

    .line 155
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_53

    .line 157
    :cond_1f
    monitor-exit p0

    return-object p0

    .line 140
    :cond_21
    if-nez p1, :cond_2e

    .line 141
    :try_start_23
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_11

    .line 143
    :cond_2e
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 146
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_53

    goto :goto_11

    .line 148
    :cond_51
    const/4 v2, 0x0

    goto :goto_11

    .line 134
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 170
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 171
    .local v2, "writer":Ljava/io/StringWriter;
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 172
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 173
    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 174
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    .line 175
    .end local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catch_15
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
