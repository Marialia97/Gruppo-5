.class Lcom/google/common/util/concurrent/AbstractService$1;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$7;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 120
    :pswitch_24
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 121
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    .line 135
    :goto_3d
    return-void

    .line 124
    :pswitch_3e
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed while running"

    invoke-direct {v1, v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3d

    .line 127
    :pswitch_4f
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3d

    .line 118
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3e
        :pswitch_4f
    .end packed-switch
.end method

.method public running()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public starting()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 105
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 108
    :cond_f
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 4
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_f

    .line 112
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$100(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 114
    :cond_f
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$1;->this$0:Lcom/google/common/util/concurrent/AbstractService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->access$200(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/AbstractService$Transition;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->set(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method