.class Lcom/google/appinventor/components/runtime/TimePicker$1$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TimePicker$1;->onTimeSet(Landroid/widget/TimePicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/TimePicker$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TimePicker$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/TimePicker$1;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1$1;->this$1:Lcom/google/appinventor/components/runtime/TimePicker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker$1$1;->this$1:Lcom/google/appinventor/components/runtime/TimePicker$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TimePicker;->AfterTimeSet()V

    .line 187
    return-void
.end method
