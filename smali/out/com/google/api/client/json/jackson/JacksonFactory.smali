.class public final Lcom/google/api/client/json/jackson/JacksonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/jackson/JacksonFactory$1;
    }
.end annotation


# instance fields
.field private final factory:Lorg/codehaus/jackson/JsonFactory;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    .line 44
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    .line 48
    iget-object v0, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    .line 49
    return-void
.end method

.method static convert(Lorg/codehaus/jackson/JsonToken;)Lcom/google/api/client/json/JsonToken;
    .registers 3
    .param p0, "token"    # Lorg/codehaus/jackson/JsonToken;

    .prologue
    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    .line 122
    :goto_3
    return-object v0

    .line 98
    :cond_4
    sget-object v0, Lcom/google/api/client/json/jackson/JacksonFactory$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 122
    sget-object v0, Lcom/google/api/client/json/JsonToken;->NOT_AVAILABLE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 100
    :pswitch_12
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 102
    :pswitch_15
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 104
    :pswitch_18
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 106
    :pswitch_1b
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 108
    :pswitch_1e
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 110
    :pswitch_21
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 112
    :pswitch_24
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 114
    :pswitch_27
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 116
    :pswitch_2a
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 118
    :pswitch_2d
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 120
    :pswitch_30
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    .line 98
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/google/api/client/json/JsonEncoding;)Lcom/google/api/client/json/JsonGenerator;
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/google/api/client/json/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonGenerator;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonGenerator;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonGenerator;)V

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonGenerator;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonGenerator;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonGenerator;)V

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonGenerator;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonGenerator;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonGenerator;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonParser;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonParser;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonParser;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonParser;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonParser;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonParser;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/google/api/client/json/jackson/JacksonParser;

    iget-object v1, p0, Lcom/google/api/client/json/jackson/JacksonFactory;->factory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/jackson/JacksonParser;-><init>(Lcom/google/api/client/json/jackson/JacksonFactory;Lorg/codehaus/jackson/JsonParser;)V

    return-object v0
.end method
