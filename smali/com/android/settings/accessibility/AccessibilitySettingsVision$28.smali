.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 1382
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "VOLA"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1384
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    const-string v1, "directcall"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1387
    const-string v1, "CallerType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    const-string v1, "GUID"

    const-string v2, "com.sec.android.app.voicenote"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v1, "type"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1392
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$28;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    .line 1393
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1394
    return-void
.end method
