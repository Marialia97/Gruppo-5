.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
.super Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
.source "GoogleBrowserClientRequestUrl.java"


# instance fields
.field private approvalPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "approval_prompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 5
    .param p1, "clientSecrets"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets;->getDetails()Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleClientSecrets$Details;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    .line 72
    invoke-virtual {p0, p3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    .line 73
    return-void
.end method


# virtual methods
.method public final getApprovalPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->approvalPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public setApprovalPrompt(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 2
    .param p1, "approvalPrompt"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->approvalPrompt:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public bridge synthetic setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setClientId(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setRedirectUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "responseTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setResponseTypes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method

.method public varargs setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .param p1, "responseTypes"    # [Ljava/lang/String;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setResponseTypes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "scopes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 135
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setScopes(Ljava/lang/Iterable;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .param p1, "scopes"    # [Ljava/lang/String;

    .prologue
    .line 128
    array-length v0, p1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 129
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setScopes([Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0

    .line 128
    :cond_e
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public bridge synthetic setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/AuthorizationRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    move-result-object v0

    return-object v0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;->setState(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/BrowserClientRequestUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleBrowserClientRequestUrl;

    return-object v0
.end method
