.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 587
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmCredentials.header"

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "from_confirm_pattern_lock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startActivity(Landroid/content/Intent;)V

    .line 592
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    .line 593
    return-void
.end method
