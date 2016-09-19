.class Lcom/android/settings/spen/SPenSettingsMenu$3;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # getter for: Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/spen/SPenSettingsMenu;->access$600(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # invokes: Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/spen/SPenSettingsMenu;->access$500(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "pen_hovering"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0e95

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 143
    return-void

    .line 139
    :cond_0
    const v0, 0x7f0e0e96

    goto :goto_0
.end method
