.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1702(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;I)I

    .line 1038
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    sget-object v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 1039
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1010
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 1012
    .local v0, "secondsCountdown":I
    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_0

    if-ne v0, v4, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0e07e7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :goto_0
    return-void

    .line 1016
    :cond_0
    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_1

    if-le v0, v4, :cond_1

    .line 1017
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0e07e8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1020
    :cond_1
    div-int/lit8 v1, v0, 0x3c

    if-ne v1, v4, :cond_2

    .line 1021
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0e07e9

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1024
    :cond_2
    div-int/lit8 v1, v0, 0x3c

    if-le v1, v4, :cond_3

    .line 1025
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0e07ea

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1029
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0e07e6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
