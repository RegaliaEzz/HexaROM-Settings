.class Lcom/android/settings/fingerprint/FingerprintSettings$2;
.super Landroid/os/Handler;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    const-string v0, "FpstFingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$400(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->sendSurvey(Lcom/android/settings/fingerprint/FingerprintSettings$Survey;)V

    .line 264
    return-void

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintCancel:Landroid/os/CancellationSignal;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 240
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$302(Lcom/android/settings/fingerprint/FingerprintSettings;I)I

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
