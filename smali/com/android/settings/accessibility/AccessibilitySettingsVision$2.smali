.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;
.super Lcom/android/internal/content/PackageMonitor;
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
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->sendUpdate()V

    .line 185
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->sendUpdate()V

    .line 190
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->sendUpdate()V

    .line 195
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->sendUpdate()V

    .line 200
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "SettingsPackageMonitor"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    :cond_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 209
    return-void
.end method
