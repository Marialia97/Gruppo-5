.class Lcom/google/appinventor/components/runtime/File$2;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Delete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 203
    if-eqz p2, :cond_59

    .line 204
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 205
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "DeleteFile"

    const/16 v5, 0x839

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 221
    :goto_21
    return-void

    .line 209
    :cond_22
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/File;->access$000(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "filepath":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 211
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 212
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "Delete"

    new-instance v5, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 216
    :cond_50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_21

    .line 219
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filepath":Ljava/lang/String;
    :cond_59
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    const-string v4, "Delete"

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method
