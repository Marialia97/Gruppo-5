.class Lcom/google/common/collect/Maps$DescendingMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$DescendingMap;)V
    .registers 2

    .prologue
    .line 3957
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$1;, "Lcom/google/common/collect/Maps$DescendingMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$DescendingMap$1;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3966
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$1;, "Lcom/google/common/collect/Maps$DescendingMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap$1;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3961
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$1;, "Lcom/google/common/collect/Maps$DescendingMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap$1;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    return-object v0
.end method