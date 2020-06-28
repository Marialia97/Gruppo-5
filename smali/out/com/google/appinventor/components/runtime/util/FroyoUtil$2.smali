.class final Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;
.super Landroid/webkit/WebViewClient;
.source "FroyoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getWebViewClient(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$followLinks:Z

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$ignoreErrors:Z


# direct methods
.method constructor <init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V
    .registers 5

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$followLinks:Z

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$ignoreErrors:Z

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "PageLoaded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "BeforePageLoad"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2$1;-><init>(Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$ignoreErrors:Z

    if-eqz v0, :cond_8

    .line 139
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 145
    :goto_7
    return-void

    .line 141
    :cond_8
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$component:Lcom/google/appinventor/components/runtime/Component;

    const-string v2, "WebView"

    const/16 v3, 0x9c5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$2;->val$followLinks:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
