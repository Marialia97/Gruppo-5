.class abstract Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmutableArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 344
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 345
    iput p1, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    .line 346
    return-void
.end method

.method private isFull()Z
    .registers 3

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 380
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V

    .line 396
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap$2;-><init>(Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;)V

    goto :goto_b
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->createKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    .local v0, "keyIndex":Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d
.end method

.method getKey(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->keyToIndex()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method abstract keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public size()I
    .registers 2

    .prologue
    .line 368
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;, "Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;->size:I

    return v0
.end method
