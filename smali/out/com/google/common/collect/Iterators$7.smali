.class final Lcom/google/common/collect/Iterators$7;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/google/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .registers 3

    .prologue
    .line 698
    iput-object p1, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Iterators$7;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 700
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 701
    iget-object v1, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 702
    .local v0, "element":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/Iterators$7;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$7;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_16
.end method