.class Lcom/google/appinventor/components/runtime/Form$3;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 895
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-eqz v1, :cond_6d

    .line 896
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Initialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 897
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$400()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 898
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Fixed"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 902
    :goto_37
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->access$502(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 905
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 906
    .local v0, "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    goto :goto_47

    .line 900
    .end local v0    # "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    :cond_57
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Responsive"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_37

    .line 908
    :cond_5f
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_6c

    .line 909
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->HandleReturnValues()V

    .line 915
    :cond_6c
    :goto_6c
    return-void

    .line 913
    :cond_6d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c
.end method
