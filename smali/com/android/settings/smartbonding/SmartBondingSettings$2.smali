.class Lcom/android/settings/smartbonding/SmartBondingSettings$2;
.super Landroid/database/ContentObserver;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->isMenuDIM()Z
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    goto :goto_0
.end method