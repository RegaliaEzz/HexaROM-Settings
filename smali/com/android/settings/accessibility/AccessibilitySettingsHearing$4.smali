.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$4;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 556
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$4;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$100(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 559
    const/4 v0, 0x1

    .line 561
    :cond_0
    return v0
.end method
