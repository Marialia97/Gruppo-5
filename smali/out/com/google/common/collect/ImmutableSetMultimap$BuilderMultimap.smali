.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;, "Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    .line 157
    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;, "Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method