.class Lcom/android/settings/GigaLteSettings$18;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/GigaLteSettings$18;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$18;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$18;->this$0:Lcom/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/GigaLteSettings$18;->this$0:Lcom/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings/GigaLteSettings$18;->this$0:Lcom/android/settings/GigaLteSettings;

    # getter for: Lcom/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/GigaLteSettings;->access$300(Lcom/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/GigaLteSettings;->access$700(Lcom/android/settings/GigaLteSettings;Z)V

    .line 462
    return-void
.end method
