.class public final Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;
.super Ljava/lang/Object;
.source "AuthKeyValueParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;
.implements Lcom/google/api/client/util/ObjectParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;->INSTANCE:Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "text/plain"

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpResponse;->setContentLoggingLimit(I)Lcom/google/api/client/http/HttpResponse;

    .line 56
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 58
    .local v0, "content":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {p0, v0, p2}, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 16
    .param p1, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    .line 66
    .local v0, "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 67
    .local v9, "newInstance":Ljava/lang/Object;, "TT;"
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v10, "reader":Ljava/io/BufferedReader;
    :cond_12
    :goto_12
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_19

    .line 97
    return-object v9

    .line 73
    :cond_19
    const/16 v12, 0x3d

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 74
    .local v2, "equals":I
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 78
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_46

    .line 79
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 81
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v12, :cond_3c

    const-class v12, Ljava/lang/Boolean;

    if-ne v4, v12, :cond_44

    .line 82
    :cond_3c
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 86
    :goto_40
    invoke-static {v3, v9, v5}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    .line 84
    :cond_44
    move-object v5, v11

    .local v5, "fieldValue":Ljava/lang/String;
    goto :goto_40

    .line 87
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldValue":Ljava/lang/String;
    :cond_46
    const-class v12, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v12, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_55

    move-object v1, v9

    .line 88
    check-cast v1, Lcom/google/api/client/util/GenericData;

    .line 89
    .local v1, "data":Lcom/google/api/client/util/GenericData;
    invoke-virtual {v1, v6, v11}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    .line 90
    .end local v1    # "data":Lcom/google/api/client/util/GenericData;
    :cond_55
    const-class v12, Ljava/util/Map;

    invoke-virtual {v12, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object v8, v9

    .line 92
    check-cast v8, Ljava/util/Map;

    .line 93
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 106
    .local v0, "reader":Ljava/io/Reader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/googleapis/auth/AuthKeyValueParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Type-based parsing is not yet supported -- use Class<T> instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 17
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 117
    .local v2, "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .line 118
    .local v11, "newInstance":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v1, "breader":Ljava/io/BufferedReader;
    :cond_d
    :goto_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_42

    move-result-object v9

    .line 121
    .local v9, "line":Ljava/lang/String;
    if-nez v9, :cond_17

    .line 150
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-object v11

    .line 124
    :cond_17
    const/16 v13, 0x3d

    :try_start_19
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 125
    .local v4, "equals":I
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "key":Ljava/lang/String;
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 129
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_49

    .line 130
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 132
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v13, :cond_3a

    const-class v13, Ljava/lang/Boolean;

    if-ne v6, v13, :cond_47

    .line 133
    :cond_3a
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 137
    :goto_3e
    invoke-static {v5, v11, v7}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_42

    goto :goto_d

    .line 150
    .end local v1    # "breader":Ljava/io/BufferedReader;
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .end local v4    # "equals":I
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "newInstance":Ljava/lang/Object;, "TT;"
    .end local v12    # "value":Ljava/lang/String;
    :catchall_42
    move-exception v13

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    throw v13

    .line 135
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v4    # "equals":I
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "newInstance":Ljava/lang/Object;, "TT;"
    .restart local v12    # "value":Ljava/lang/String;
    :cond_47
    move-object v7, v12

    .local v7, "fieldValue":Ljava/lang/String;
    goto :goto_3e

    .line 138
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldValue":Ljava/lang/String;
    :cond_49
    :try_start_49
    const-class v13, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_5b

    .line 139
    move-object v0, v11

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v3, v0

    .line 140
    .local v3, "data":Lcom/google/api/client/util/GenericData;
    invoke-virtual {v3, v8, v12}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 141
    .end local v3    # "data":Lcom/google/api/client/util/GenericData;
    :cond_5b
    const-class v13, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 143
    move-object v0, v11

    check-cast v0, Ljava/util/Map;

    move-object v10, v0

    .line 144
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v10, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_49 .. :try_end_6c} :catchall_42

    goto :goto_d
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Type-based parsing is not yet supported -- use Class<T> instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
