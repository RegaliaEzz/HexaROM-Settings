.class final Lcom/android/settings/DataUsageSummary$41;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5892
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f0e0c5a

    .line 5905
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5907
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5908
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    .line 5911
    .local v1, "hasRadio":Z
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5912
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5913
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5914
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5917
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5918
    :cond_0
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5919
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_enable_mobile"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5920
    const v4, 0x7f0e0c86

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5921
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5922
    if-eqz v1, :cond_b

    .line 5923
    iput-boolean v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 5927
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5931
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5932
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5933
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_disable_mobile_limit"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5934
    const v4, 0x7f0e0c7a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5935
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5936
    if-eqz v1, :cond_c

    .line 5937
    iput-boolean v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 5941
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5944
    :cond_2
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5945
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5946
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_roaming_enable_mobile"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5947
    const v4, 0x7f0e151d    # 1.8886E38f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5948
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5949
    if-eqz v1, :cond_d

    .line 5950
    iput-boolean v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 5954
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5958
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 5959
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5960
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "app_data_restriction"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5961
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v4

    if-ne v4, v7, :cond_e

    .line 5962
    const v4, 0x7f0e1680

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5966
    :goto_3
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5967
    if-eqz v1, :cond_f

    .line 5968
    iput-boolean v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 5972
    :goto_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5976
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5977
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5978
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5979
    const v4, 0x7f0e0c61

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5980
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5981
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5984
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5988
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5989
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_confirm_boot"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5990
    const v4, 0x7f0e108a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5991
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5992
    if-eqz v1, :cond_10

    .line 5993
    iput-boolean v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 5998
    :goto_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6001
    :cond_6
    const-string v4, "trafficmanager"

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "networkmanager"

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_8

    .line 6002
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6003
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6004
    const v4, 0x7f0e16e5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6005
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6006
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6010
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-nez v4, :cond_9

    .line 6011
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6012
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6013
    const v4, 0x7f0e16c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6014
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6015
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6019
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 6020
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6021
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6022
    const v4, 0x7f0e16c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6023
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6024
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6026
    :cond_a
    return-object v3

    .line 5925
    :cond_b
    iput-boolean v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_0

    .line 5939
    :cond_c
    iput-boolean v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_1

    .line 5952
    :cond_d
    iput-boolean v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_2

    .line 5964
    :cond_e
    const v4, 0x7f0e167e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 5970
    :cond_f
    iput-boolean v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_4

    .line 5995
    :cond_10
    iput-boolean v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_5
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5897
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 5898
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 5899
    sget v1, Lcom/android/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 5900
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
