.class Lcom/google/appinventor/components/runtime/File$3$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/File$3;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$3$1;->this$1:Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$3$1;->this$1:Lcom/google/appinventor/components/runtime/File$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$3;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$3$1;->this$1:Lcom/google/appinventor/components/runtime/File$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/File$3;->val$filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/File;->AfterFileSaved(Ljava/lang/String;)V

    .line 278
    return-void
.end method
