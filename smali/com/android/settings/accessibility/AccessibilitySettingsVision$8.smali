.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_contrast"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 283
    .local v0, "negativeColorEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 288
    :goto_1
    return-void

    .end local v0    # "negativeColorEnabled":Z
    :cond_0
    move v0, v2

    .line 281
    goto :goto_0

    .line 286
    .restart local v0    # "negativeColorEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method