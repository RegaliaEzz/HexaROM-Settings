.class Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;
.super Landroid/os/Handler;
.source "Complete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;-><init>(Landroid/content/Context;IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;

    # invokes: Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOnDelayed()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    .line 58
    return-void
.end method
