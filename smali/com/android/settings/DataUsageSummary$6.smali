.class Lcom/android/settings/DataUsageSummary$6;
.super Landroid/telephony/PhoneStateListener;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 6
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 810
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 811
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "volte"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 813
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 814
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v4}, Lcom/android/settings/DataUsageSummary;->access$2100(Landroid/view/View;Z)V

    .line 815
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->close(Lcom/android/settings/DataUsageSummary;)V

    .line 831
    :cond_1
    :goto_0
    return-void

    .line 817
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 818
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 819
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v5}, Lcom/android/settings/DataUsageSummary;->access$2100(Landroid/view/View;Z)V

    .line 821
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 822
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2200(Lcom/android/settings/DataUsageSummary;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 823
    .local v0, "mPR":Landroid/app/enterprise/PhoneRestrictionPolicy;
    if-eqz v0, :cond_1

    .line 824
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 825
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 826
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$6;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceDisable(Landroid/view/View;Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$2100(Landroid/view/View;Z)V

    goto :goto_0
.end method
