.class Lcom/android/settings/DataUsageSummary$34$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$34;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DataUsageSummary$34;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$34;)V
    .locals 0

    .prologue
    .line 3662
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 3664
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    .line 3665
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 3666
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$6300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 3667
    .local v8, "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v7

    .line 3668
    .local v7, "position":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3669
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v1

    if-le v1, v6, :cond_2

    .line 3670
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$6400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$CycleAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 3672
    .local v9, "tempCycle":Lcom/android/settings/DataUsageSummary$CycleItem;
    const-string v1, "extra_data_start"

    iget-wide v4, v9, Lcom/android/settings/DataUsageSummary$CycleItem;->start:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3673
    const-string v1, "extra_data_end"

    iget-wide v4, v9, Lcom/android/settings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3679
    .end local v9    # "tempCycle":Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v1, v1, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3800(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3680
    const-string v1, "extra_subscriberid"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v3, v3, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v4, v4, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v5, v5, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$3700(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/settings/DataUsageSummary;->access$5300(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$5400(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    :cond_0
    const-class v1, Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v3

    if-ne v3, v6, :cond_3

    const v3, 0x7f0e1680

    :goto_1
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$34$1;->this$1:Lcom/android/settings/DataUsageSummary$34;

    iget-object v5, v5, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 3687
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "position":I
    .end local v8    # "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_1
    return-void

    .line 3675
    .restart local v0    # "sa":Lcom/android/settings/SettingsActivity;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "position":I
    .restart local v8    # "previousItem":Lcom/android/settings/DataUsageSummary$CycleItem;
    :cond_2
    const-string v1, "extra_data_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3676
    const-string v1, "extra_data_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 3683
    :cond_3
    const v3, 0x7f0e167e

    goto :goto_1
.end method
