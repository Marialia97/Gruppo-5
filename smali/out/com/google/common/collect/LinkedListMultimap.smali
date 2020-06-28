.class public Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedListMultimap$MultisetView;,
        Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,
        Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;,
        Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,
        Lcom/google/common/collect/LinkedListMultimap$KeyList;,
        Lcom/google/common/collect/LinkedListMultimap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java serialization not supported"
    .end annotation
.end field


# instance fields
.field private transient entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient head:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keyToKeyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$KeyList",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keys:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient tail:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 187
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 189
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "expectedKeys"    # I

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 193
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedListMultimap;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/LinkedListMultimap;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap$Node;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->createEntry(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Lcom/google/common/collect/LinkedListMultimap$Node;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .registers 5
    .param p0, "x0"    # Lcom/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/google/common/collect/LinkedListMultimap$Node;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/LinkedListMultimap$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextSibling":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .local v2, "node":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v3, :cond_24

    .line 210
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 211
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v4, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    invoke-direct {v4, v2}, Lcom/google/common/collect/LinkedListMultimap$KeyList;-><init>(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget v3, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 248
    :goto_1d
    iget v3, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 249
    return-object v2

    .line 213
    :cond_24
    if-nez p3, :cond_5a

    .line 214
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v3, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 215
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v3, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 216
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 217
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 218
    .local v0, "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v0, :cond_4b

    .line 219
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .end local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    invoke-direct {v0, v2}, Lcom/google/common/collect/LinkedListMultimap$KeyList;-><init>(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .restart local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget v3, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    goto :goto_1d

    .line 222
    :cond_4b
    iget v3, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 223
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 224
    .local v1, "keyTail":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 225
    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 226
    iput-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1d

    .line 229
    .end local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    .end local v1    # "keyTail":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    :cond_5a
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 230
    .restart local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    iget v3, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 231
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v3, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 232
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v3, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 233
    iput-object p3, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 234
    iput-object p3, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 235
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v3, :cond_8d

    .line 236
    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    iput-object v2, v3, Lcom/google/common/collect/LinkedListMultimap$KeyList;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 240
    :goto_82
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v3, :cond_92

    .line 241
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 245
    :goto_88
    iput-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 246
    iput-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1d

    .line 238
    :cond_8d
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v3, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_82

    .line 243
    :cond_92
    iget-object v3, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v3, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_88
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .registers 2
    .param p0, "node"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 301
    if-nez p0, :cond_8

    .line 302
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 304
    :cond_8
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private static createEntry(Lcom/google/common/collect/LinkedListMultimap$Node;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "node":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$4;-><init>(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1022
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1023
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 1024
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1025
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_1e

    .line 1027
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1029
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1030
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1025
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1032
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_1e
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 297
    :cond_12
    return-void
.end method

.method private removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "node":Lcom/google/common/collect/LinkedListMultimap$Node;, "Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v1, :cond_36

    .line 259
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 263
    :goto_a
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v1, :cond_3b

    .line 264
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 268
    :goto_14
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_40

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_40

    .line 269
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 270
    .local v0, "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 271
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 288
    :goto_2f
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 289
    return-void

    .line 261
    .end local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    :cond_36
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_a

    .line 266
    :cond_3b
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_14

    .line 273
    :cond_40
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 274
    .restart local v0    # "keyList":Lcom/google/common/collect/LinkedListMultimap$KeyList;, "Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 276
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_61

    .line 277
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 282
    :goto_58
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_68

    .line 283
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2f

    .line 279
    :cond_61
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_58

    .line 285
    :cond_68
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2f
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1012
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1014
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1015
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_12

    .line 1017
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2d
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 929
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_b

    .line 930
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$6;

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$6;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 961
    :cond_b
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    .line 690
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 691
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 692
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    .line 694
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->modCount:I

    .line 695
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 580
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 582
    const/4 v1, 0x1

    .line 585
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 565
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 570
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 572
    const/4 v1, 0x1

    .line 575
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 905
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_b

    .line 906
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$5;

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$5;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/List;

    .line 921
    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 974
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_4

    .line 975
    const/4 v1, 0x1

    .line 981
    :goto_3
    return v1

    .line 977
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_18

    move-object v0, p1

    .line 978
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 979
    .local v0, "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 981
    .end local v0    # "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    :cond_18
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 991
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 560
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 732
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_b

    .line 733
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$2;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$2;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 749
    :cond_b
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 757
    .local v0, "result":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TK;>;"
    if-nez v0, :cond_c

    .line 758
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    .end local v0    # "result":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .restart local v0    # "result":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 760
    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    const/4 v0, 0x0

    .line 629
    .local v0, "changed":Z
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 630
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 631
    goto :goto_9

    .line 632
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_23
    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    const/4 v0, 0x0

    .line 620
    .local v0, "changed":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 621
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 622
    goto :goto_5

    .line 623
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_15
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 605
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 606
    .local v0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 608
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 609
    const/4 v1, 0x1

    .line 612
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 684
    .local v0, "oldValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 685
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 648
    .local v2, "oldValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 649
    .local v0, "keyValues":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 652
    .local v1, "newValues":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 653
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_d

    .line 658
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 659
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 660
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_24

    .line 664
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_31

    .line 668
    :cond_3f
    return-object v2
.end method

.method public size()I
    .registers 2

    .prologue
    .line 555
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1001
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 841
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_b

    .line 842
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$3;

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$3;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesList:Ljava/util/List;

    .line 863
    :cond_b
    return-object v0
.end method
