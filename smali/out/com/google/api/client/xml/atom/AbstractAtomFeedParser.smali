.class public abstract Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;
.super Ljava/lang/Object;
.source "AbstractAtomFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final feedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private feedParsed:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;)V
    .registers 6
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    .local p4, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 66
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    iput-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 67
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->inputStream:Ljava/io/InputStream;

    .line 68
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedClass:Ljava/lang/Class;

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 161
    return-void
.end method

.method public final getFeedClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 86
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .registers 2

    .prologue
    .line 104
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .prologue
    .line 77
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected abstract parseEntryInternal()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public parseFeed()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    const/4 v0, 0x1

    .line 117
    .local v0, "close":Z
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedParsed:Z

    .line 118
    iget-object v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedClass:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    sget-object v4, Lcom/google/api/client/xml/atom/Atom$StopAtAtomEntry;->INSTANCE:Lcom/google/api/client/xml/atom/Atom$StopAtAtomEntry;

    invoke-static {v2, v1, v3, v4}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1a

    .line 120
    const/4 v0, 0x0

    .line 123
    if-eqz v0, :cond_19

    .line 124
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->close()V

    :cond_19
    return-object v1

    .line 123
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_1a
    move-exception v2

    if-eqz v0, :cond_20

    .line 124
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->close()V

    :cond_20
    throw v2
.end method

.method public parseNextEntry()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;, "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser<TT;>;"
    const/4 v1, 0x0

    .line 138
    iget-boolean v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedParsed:Z

    if-nez v2, :cond_11

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->feedParsed:Z

    .line 140
    iget-object v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v3, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    sget-object v4, Lcom/google/api/client/xml/atom/Atom$StopAtAtomEntry;->INSTANCE:Lcom/google/api/client/xml/atom/Atom$StopAtAtomEntry;

    invoke-static {v2, v1, v3, v4}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V

    .line 142
    :cond_11
    const/4 v0, 0x1

    .line 144
    .local v0, "close":Z
    :try_start_12
    iget-object v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 145
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parseEntryInternal()Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_31

    .line 147
    const/4 v0, 0x0

    .line 151
    if-eqz v0, :cond_2a

    .line 152
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->close()V

    .line 155
    .end local v1    # "result":Ljava/lang/Object;
    :cond_2a
    :goto_2a
    return-object v1

    .line 151
    :cond_2b
    if-eqz v0, :cond_2a

    .line 152
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->close()V

    goto :goto_2a

    .line 151
    :catchall_31
    move-exception v2

    if-eqz v0, :cond_37

    .line 152
    invoke-virtual {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->close()V

    :cond_37
    throw v2
.end method
