.class Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;Lcom/google/common/collect/RegularImmutableSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableSortedMap;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableSortedMap$1;

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    return-object v0
.end method
