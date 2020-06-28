.class public final Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
.super Lcom/google/api/client/json/GenericJson;
.source "GoogleClientSecrets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    }
.end annotation


# instance fields
.field private installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 86
    return-void
.end method

.method public static load(Lcom/google/api/client/json/JsonFactory;Ljava/io/InputStream;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .registers 4
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-class v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;

    return-object v0
.end method


# virtual methods
.method public getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    if-nez v0, :cond_18

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    if-nez v3, :cond_1a

    move v3, v1

    :goto_c
    if-eq v0, v3, :cond_1c

    :goto_e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    :goto_17
    return-object v0

    :cond_18
    move v0, v2

    .line 81
    goto :goto_7

    :cond_1a
    move v3, v2

    goto :goto_c

    :cond_1c
    move v1, v2

    goto :goto_e

    .line 82
    :cond_1e
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    goto :goto_17
.end method

.method public getInstalled()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object v0
.end method

.method public getWeb()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    return-object v0
.end method

.method public setInstalled(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .registers 2
    .param p1, "installed"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->installed:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 64
    return-object p0
.end method

.method public setWeb(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .registers 2
    .param p1, "web"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->web:Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    .line 75
    return-object p0
.end method
