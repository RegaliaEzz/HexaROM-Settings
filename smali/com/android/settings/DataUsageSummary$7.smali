.class Lcom/android/settings/DataUsageSummary$7;
.super Landroid/os/Handler;
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
    .line 834
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 839
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$2302(Lcom/android/settings/DataUsageSummary;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mAppDataRestriction:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    const v2, 0x7f0e0e95

    invoke-virtual {v0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    # invokes: Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/android/settings/DataUsageSummary;->access$2500(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 846
    :cond_1
    return-void

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$7;->this$0:Lcom/android/settings/DataUsageSummary;

    const v2, 0x7f0e0e96

    invoke-virtual {v0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
