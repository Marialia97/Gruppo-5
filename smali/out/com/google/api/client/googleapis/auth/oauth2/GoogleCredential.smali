.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.super Lcom/google/api/client/auth/oauth2/Credential;
.source "GoogleCredential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    }
.end annotation


# instance fields
.field private serviceAccountId:Ljava/lang/String;

.field private serviceAccountPrivateKey:Ljava/security/PrivateKey;

.field private serviceAccountScopes:Ljava/lang/String;

.field private serviceAccountUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-static {}, Lcom/google/api/client/auth/oauth2/BearerToken;->authorizationHeaderAccessMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    move-result-object v1

    const-string v4, "https://accounts.google.com/o/oauth2/token"

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 25
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p4, "tokenServerEncodedUrl"    # Ljava/lang/String;
    .param p5, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;
    .param p6, "requestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p8, "serviceAccountId"    # Ljava/lang/String;
    .param p9, "serviceAccountScopes"    # Ljava/lang/String;
    .param p10, "serviceAccountPrivateKey"    # Ljava/security/PrivateKey;
    .param p11, "serviceAccountUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpExecuteInterceptor;",
            "Lcom/google/api/client/http/HttpRequestInitializer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p7, "refreshListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;>;"
    sget-object v12, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/api/client/util/Clock;)V

    .line 228
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/api/client/util/Clock;)V
    .registers 23
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p4, "tokenServerEncodedUrl"    # Ljava/lang/String;
    .param p5, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;
    .param p6, "requestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p8, "serviceAccountId"    # Ljava/lang/String;
    .param p9, "serviceAccountScopes"    # Ljava/lang/String;
    .param p10, "serviceAccountPrivateKey"    # Ljava/security/PrivateKey;
    .param p11, "serviceAccountUser"    # Ljava/lang/String;
    .param p12, "clock"    # Lcom/google/api/client/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpExecuteInterceptor;",
            "Lcom/google/api/client/http/HttpRequestInitializer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p7, "refreshListeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p12

    invoke-direct/range {v1 .. v9}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Lcom/google/api/client/http/HttpExecuteInterceptor;Lcom/google/api/client/http/HttpRequestInitializer;Ljava/util/List;Lcom/google/api/client/util/Clock;)V

    .line 275
    if-nez p10, :cond_1e

    .line 276
    if-nez p8, :cond_1c

    if-nez p9, :cond_1c

    if-nez p11, :cond_1c

    const/4 v1, 0x1

    :goto_18
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 284
    :goto_1b
    return-void

    .line 276
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18

    .line 279
    :cond_1e
    invoke-static/range {p8 .. p8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    .line 280
    invoke-static/range {p9 .. p9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 282
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    goto :goto_1b
.end method


# virtual methods
.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    .line 318
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v8, :cond_b

    .line 319
    invoke-super {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v8

    .line 340
    :goto_a
    return-object v8

    .line 322
    :cond_b
    new-instance v5, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    invoke-direct {v5}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;-><init>()V

    .line 323
    .local v5, "header":Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    const-string v8, "RS256"

    invoke-virtual {v5, v8}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    .line 324
    const-string v8, "JWT"

    invoke-virtual {v5, v8}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    .line 325
    new-instance v6, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClock()Lcom/google/api/client/util/Clock;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;-><init>(Lcom/google/api/client/util/Clock;)V

    .line 326
    .local v6, "payload":Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClock()Lcom/google/api/client/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 327
    .local v2, "currentTime":J
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v8

    const-string v9, "https://accounts.google.com/o/oauth2/token"

    invoke-virtual {v8, v9}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->setAudience(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v8

    div-long v10, v2, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v8

    div-long v10, v2, v12

    const-wide/16 v12, 0xe10

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    move-result-object v8

    iget-object v9, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->setPrincipal(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;

    .line 332
    const-string v8, "scope"

    iget-object v9, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :try_start_5a
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v9

    invoke-static {v8, v9, v5, v6}, Lcom/google/api/client/auth/jsontoken/RsaSHA256Signer;->sign(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;Lcom/google/api/client/auth/jsontoken/JsonWebToken$Payload;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "assertion":Ljava/lang/String;
    new-instance v7, Lcom/google/api/client/auth/oauth2/TokenRequest;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v9

    new-instance v10, Lcom/google/api/client/http/GenericUrl;

    const-string v11, "https://accounts.google.com/o/oauth2/token"

    invoke-direct {v10, v11}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const-string v11, "assertion"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 338
    .local v7, "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    const-string v8, "assertion_type"

    const-string v9, "http://oauth.net/grant_type/jwt/1.0/bearer"

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/auth/oauth2/TokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v8, "assertion"

    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {v7}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;
    :try_end_89
    .catch Ljava/security/GeneralSecurityException; {:try_start_5a .. :try_end_89} :catch_8b

    move-result-object v8

    goto :goto_a

    .line 341
    .end local v0    # "assertion":Ljava/lang/String;
    .end local v7    # "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    :catch_8b
    move-exception v4

    .line 342
    .local v4, "exception":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 343
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 344
    throw v1
.end method

.method public final getServiceAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getServiceAccountScopes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 3
    .param p1, "expirationTimeMilliseconds"    # Ljava/lang/Long;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 3
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 3
    .param p1, "tokenResponse"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 4
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p1, :cond_1a

    .line 294
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_15
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 298
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0

    .line 294
    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method
