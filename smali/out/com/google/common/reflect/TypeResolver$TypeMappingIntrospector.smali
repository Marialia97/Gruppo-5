.class final Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeMappingIntrospector"
.end annotation


# static fields
.field private static final wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;


# instance fields
.field private final introspectedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 250
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Lcom/google/common/reflect/TypeResolver$1;)V

    sput-object v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    .line 253
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectedTypes:Ljava/util/Set;

    return-void
.end method

.method static getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .param p0, "contextType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;-><init>()V

    .line 262
    .local v0, "introspector":Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    sget-object v1, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 263
    iget-object v1, v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private introspect(Ljava/lang/reflect/Type;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 267
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectedTypes:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 283
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_8
    :goto_8
    return-void

    .line 270
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_9
    instance-of v4, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_13

    .line 271
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_8

    .line 272
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_13
    instance-of v4, p1, Ljava/lang/Class;

    if-eqz v4, :cond_1d

    .line 273
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectClass(Ljava/lang/Class;)V

    goto :goto_8

    .line 274
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1d
    instance-of v4, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_33

    .line 275
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 276
    .local v1, "bound":Ljava/lang/reflect/Type;
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 278
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "bound":Ljava/lang/reflect/Type;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_33
    instance-of v4, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_8

    .line 279
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3f
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 280
    .restart local v1    # "bound":Ljava/lang/reflect/Type;
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f
.end method

.method private introspectClass(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 287
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v3, :cond_17

    aget-object v2, v0, v1

    .line 288
    .local v2, "interfaceType":Ljava/lang/reflect/Type;
    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 290
    .end local v2    # "interfaceType":Ljava/lang/reflect/Type;
    :cond_17
    return-void
.end method

.method private introspectParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 8
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 294
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 295
    .local v1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 296
    .local v3, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 297
    .local v2, "typeArgs":[Ljava/lang/reflect/Type;
    array-length v4, v3

    array-length v5, v2

    if-ne v4, v5, :cond_24

    const/4 v4, 0x1

    :goto_13
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v4, v3

    if-ge v0, v4, :cond_26

    .line 299
    aget-object v4, v3, v0

    aget-object v5, v2, v0

    invoke-direct {p0, v4, v5}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->map(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 297
    .end local v0    # "i":I
    :cond_24
    const/4 v4, 0x0

    goto :goto_13

    .line 301
    .restart local v0    # "i":I
    :cond_26
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectClass(Ljava/lang/Class;)V

    .line 302
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 303
    return-void
.end method

.method private map(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)V
    .registers 6
    .param p2, "arg"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 326
    :cond_8
    :goto_8
    return-void

    .line 315
    :cond_9
    move-object v0, p2

    .local v0, "t":Ljava/lang/reflect/Type;
    :goto_a
    if-eqz v0, :cond_27

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 321
    move-object v1, p2

    .local v1, "x":Ljava/lang/reflect/Type;
    :goto_13
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "x":Ljava/lang/reflect/Type;
    check-cast v1, Ljava/lang/reflect/Type;

    .restart local v1    # "x":Ljava/lang/reflect/Type;
    goto :goto_13

    .line 315
    .end local v1    # "x":Ljava/lang/reflect/Type;
    :cond_1e
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "t":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/Type;

    .restart local v0    # "t":Ljava/lang/reflect/Type;
    goto :goto_a

    .line 325
    :cond_27
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method
