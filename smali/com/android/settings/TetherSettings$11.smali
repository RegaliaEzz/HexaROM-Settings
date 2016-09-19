.class Lcom/android/settings/TetherSettings$11;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$dnsCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/TetherSettings$11;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 573
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_dns_first_usb_tether_dialog"

    iget-object v2, p0, Lcom/android/settings/TetherSettings$11;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 574
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mIsRaceCondition:Z
    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->access$902(Lcom/android/settings/TetherSettings;Z)Z

    .line 577
    iget-object v0, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;I)V

    .line 579
    :cond_0
    return-void
.end method
