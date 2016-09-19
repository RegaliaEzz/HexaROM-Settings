.class Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OtherSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 833
    # getter for: Lcom/android/settings/OtherSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings/OtherSecuritySettings;->access$100()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 834
    return-void

    .line 833
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v4, :cond_0

    .line 983
    const-string v4, "category_show_passwords"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 995
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1001
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1002
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    :cond_2
    :goto_0
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1019
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1020
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_3
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v4, :cond_6

    .line 1024
    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v4, :cond_6

    .line 1025
    :cond_5
    const-string v4, "new_security_update_service"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    const-string v4, "security_reports"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    const-string v4, "security_policy_updates"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    :cond_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "GOOGLE_POLICY"

    const-string v5, "selinux.policy_version"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1032
    :cond_7
    const-string v4, "new_security_update_service"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    const-string v4, "security_reports"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    const-string v4, "security_policy_updates"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_8
    # getter for: Lcom/android/settings/OtherSecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/settings/OtherSecuritySettings;->access$100()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1048
    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    const-string v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1053
    const-string v4, "smartcard_credential_category"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_a
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1058
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    const-string v4, "usage_access"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_b
    return-object v0

    .line 1003
    .end local v3    # "um":Landroid/os/UserManager;
    :cond_c
    const-string v4, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1005
    :cond_d
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1006
    :cond_e
    iget-boolean v4, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1007
    :cond_f
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1008
    :cond_10
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1009
    :cond_11
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1012
    :cond_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-nez v4, :cond_2

    .line 1014
    :cond_13
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
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
    .line 891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 894
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f0e0203

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 911
    .local v0, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 913
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 915
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v8

    if-nez v8, :cond_1

    .line 917
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 918
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const v8, 0x7f0e0608

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 919
    invoke-static {}, Lcom/android/settings/Utils;->isSimReady()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 920
    const-string v8, "android.intent.action.MAIN"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 921
    const-string v8, "com.android.settings.IccLockSettings"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 922
    const-string v8, "com.android.settings"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 924
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-boolean v8, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v8, :cond_2

    .line 929
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 930
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v8, "security_policy_updates"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 931
    const v8, 0x7f0e1310

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 932
    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v8

    if-nez v8, :cond_5

    .line 933
    const v8, 0x7f0e1311

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 941
    :goto_0
    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 942
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_2
    const-string v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 948
    .local v7, "um":Landroid/os/UserManager;
    const-string v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 949
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 951
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_7

    const v5, 0x7f0e0b7f

    .line 955
    .local v5, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 956
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v8, "credential_storage_type"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 957
    const v8, 0x7f0e0b7e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 958
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 959
    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 960
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v5    # "storageSummaryRes":I
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 969
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 970
    .restart local v0    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v8, "mPhonePasswordPreference"

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 971
    const v8, 0x7f0e133d

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 972
    iput-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 973
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_4
    return-object v3

    .line 935
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_6

    .line 936
    const v8, 0x7f0e1312

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_0

    .line 938
    :cond_6
    const v8, 0x7f0e1313

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 951
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_7
    const v5, 0x7f0e0b80

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
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
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 851
    .local v5, "sir":Landroid/provider/SearchIndexableResource;
    new-instance v5, Landroid/provider/SearchIndexableResource;

    .end local v5    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 852
    .restart local v5    # "sir":Landroid/provider/SearchIndexableResource;
    const-class v7, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 853
    const v7, 0x7f0800a8

    iput v7, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 854
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    const/4 v4, 0x1

    .line 858
    .local v4, "showSimCardLock":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 859
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 860
    const/4 v4, 0x0

    .line 876
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 877
    const-class v7, Lcom/android/settings/OtherSecuritySettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "parent":Ljava/lang/String;
    const-class v7, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "child":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0607

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "childTitle":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 881
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0608

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 886
    .end local v0    # "child":Ljava/lang/String;
    .end local v1    # "childTitle":Ljava/lang/String;
    .end local v2    # "parent":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 861
    :cond_2
    const-string v7, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 863
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 864
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_6

    .line 865
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 866
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 867
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 870
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-nez v7, :cond_0

    .line 872
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
