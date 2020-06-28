.class Lcom/google/common/collect/Synchronized$SynchronizedMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 929
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 938
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 940
    monitor-exit v1

    .line 941
    return-void

    .line 940
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 945
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 946
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 947
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 952
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 954
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 921
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 961
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 963
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 964
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1030
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    if-ne p1, p0, :cond_4

    .line 1031
    const/4 v0, 0x1

    .line 1034
    :goto_3
    return v0

    .line 1033
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1034
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_3

    .line 1035
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 970
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 971
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1039
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1040
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1041
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 976
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 978
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 987
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 988
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 994
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 995
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1002
    monitor-exit v1

    .line 1003
    return-void

    .line 1002
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1008
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1009
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 1014
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1016
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1022
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_17

    .line 1023
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1025
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 1026
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method
