.class Lcom/android/settings/DataUsageSummary$47;
.super Lcom/opera/max/sdk/saving/IStateListener$Stub;
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
    .line 6889
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Lcom/opera/max/sdk/saving/IStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onApkDownloadRequest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "srcPackageName"    # Ljava/lang/String;

    .prologue
    .line 6915
    return-void
.end method

.method public onSavingState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 6903
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavingState,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6904
    if-ne p1, v3, :cond_0

    .line 6905
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v3}, Lcom/android/settings/DataUsageSummary;->access$1102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 6910
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavingState()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8900(Lcom/android/settings/DataUsageSummary;)V

    .line 6911
    return-void

    .line 6907
    :cond_0
    const-string v0, "DataUsage"

    const-string v1, "onSavingState state != DataSavingHelper.SAVING_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6908
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1102(Lcom/android/settings/DataUsageSummary;Z)Z

    goto :goto_0
.end method

.method public onTunnelState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 6892
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6893
    const-string v0, "DataUsage"

    const-string v1, "TUNNEL IS OPEND"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6899
    :cond_0
    :goto_0
    return-void

    .line 6894
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 6895
    const-string v0, "DataUsage"

    const-string v1, "TUNNEL IS COLOED"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 6897
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$47;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavingState()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$8900(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0
.end method
