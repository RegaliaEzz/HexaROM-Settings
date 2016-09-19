.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private isKioskContainer:Z

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFromPackageInstaller:Z

.field private mHasSPenFeature:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/PreferenceScreen;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSwipeLockSettings:Landroid/preference/PreferenceScreen;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mUnlockEffect:Landroid/preference/PreferenceScreen;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    .line 872
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 873
    return-void
.end method

.method private InitValue(I)V
    .locals 10
    .param p1, "menuType"    # I

    .prologue
    const/4 v9, 0x1

    .line 362
    const-string v6, "unlock_set_or_change"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    .line 365
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "ucmPasswordcsName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 367
    if-eqz v4, :cond_b

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "none"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 368
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 369
    .local v2, "index":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 370
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 372
    :cond_0
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    .end local v2    # "index":I
    :cond_1
    :goto_0
    const-string v6, "secured_lock_settigns"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    .line 379
    const-string v6, "show_information"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    .line 380
    const-string v6, "lock_screen_menu_notifications"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    .line 381
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 385
    :cond_2
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 388
    .local v0, "covertype":I
    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    .line 389
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14e1

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 396
    .end local v0    # "covertype":I
    :cond_3
    :goto_1
    const-string v6, "swipe_lock_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 399
    const-string v6, "unlock_effect_with_preview"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    .line 400
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_ripple_effect"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 402
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    sget-object v7, Lcom/android/settings/UnlockEffect;->EffectName:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 408
    .end local v5    # "value":I
    :cond_4
    const-string v6, "toggle_install_applications"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 409
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_5

    .line 410
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 411
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v7, 0x7f0e1626

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 417
    :cond_5
    const-string v6, "find_my_mobile"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "isSupportLMM":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_6

    .line 421
    const/4 v3, 0x1

    .line 424
    :cond_6
    const/4 v1, 0x0

    .line 425
    .local v1, "hasFMMDMClient":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    .line 428
    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    .line 429
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const v7, 0x7f0e131e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 433
    :cond_7
    const-string v6, "finger_scanner"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    .line 434
    const-string v6, "app_ops_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    .line 436
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    .line 437
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 438
    :cond_8
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    .line 439
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 440
    :cond_9
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    .line 441
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 442
    :cond_a
    return-void

    .line 373
    .end local v1    # "hasFMMDMClient":Z
    .end local v3    # "isSupportLMM":Z
    :cond_b
    if-eqz p1, :cond_1

    .line 374
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 391
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14e0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1
.end method

.method private RemoveMenu()V
    .locals 17

    .prologue
    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    .line 470
    .local v8, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    .line 472
    .local v4, "isLDUmodel":Z
    const-string v13, "lockscreen_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 473
    .local v10, "lockscreen_category":Landroid/preference/PreferenceCategory;
    if-nez v10, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 476
    .local v7, "isSecured":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    .line 478
    .local v5, "isLockScreenDisabled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    if-eq v8, v13, :cond_2

    if-eqz v4, :cond_3

    .line 479
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1c

    if-nez v7, :cond_1c

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_5

    if-eqz v5, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    :cond_5
    if-eqz v5, :cond_6

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_6

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_8

    .line 499
    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-nez v7, :cond_7

    if-eqz v5, :cond_8

    .line 500
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    :cond_9
    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 525
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 534
    :goto_2
    const-string v13, "security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 535
    .local v11, "security_category":Landroid/preference/PreferenceCategory;
    if-eqz v11, :cond_0

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 538
    .local v12, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_e

    .line 540
    if-eqz v12, :cond_b

    .line 541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_1e

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 542
    const-string v13, "no_install_unknown_sources"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "no_install_apps"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 544
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 549
    :cond_b
    const-string v13, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_1f

    :cond_c
    const/4 v2, 0x1

    .line 552
    .local v2, "blockUnsignedAppInstall":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v15, "isNonMarketAppAllowed"

    invoke-static {v13, v14, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 554
    .local v6, "isNonMarketAppAllowed":I
    if-nez v2, :cond_d

    .line 555
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 556
    .local v1, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 557
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 561
    .end local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x10408a4

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 565
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 582
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    if-eqz v13, :cond_f

    .line 583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 586
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isGuestUser()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_23

    .line 587
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_12
    :goto_6
    const/4 v9, 0x0

    .line 593
    .local v9, "isSupportLMM":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_13

    .line 594
    const/4 v9, 0x1

    .line 597
    :cond_13
    const/4 v3, 0x0

    .line 598
    .local v3, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v3

    .line 600
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSupportLMM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasFMMDMClient : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasMobileTracker : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.sec.android.app.mt"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSmsCapable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 606
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 617
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    .line 619
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    if-eqz v13, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_16

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 624
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_17

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 628
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_18

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 632
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_19

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 636
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1a

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 640
    :cond_1a
    if-eqz v11, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_1b

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 645
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 484
    .end local v3    # "hasFMMDMClient":Z
    .end local v9    # "isSupportLMM":Z
    .end local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .end local v12    # "um":Landroid/os/UserManager;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v13

    if-nez v13, :cond_4

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 527
    :cond_1d
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_2

    .line 541
    .restart local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 550
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 566
    .restart local v2    # "blockUnsignedAppInstall":Z
    .restart local v6    # "isNonMarketAppAllowed":I
    :cond_20
    if-nez v2, :cond_e

    .line 567
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e1626

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 574
    :goto_8
    const/4 v13, -0x1

    if-eq v6, v13, :cond_e

    .line 575
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    if-ne v6, v13, :cond_22

    const/4 v13, 0x1

    :goto_9
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 571
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e07f4

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    goto :goto_8

    .line 575
    :cond_22
    const/4 v13, 0x0

    goto :goto_9

    .line 588
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    if-eq v8, v13, :cond_24

    if-eqz v4, :cond_12

    .line 589
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 607
    .restart local v3    # "hasFMMDMClient":Z
    .restart local v9    # "isSupportLMM":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_27

    const/4 v13, 0x1

    if-eq v8, v13, :cond_26

    if-nez v4, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_27

    .line 608
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 609
    :cond_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_15

    if-nez v9, :cond_15

    if-nez v3, :cond_15

    .line 610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 12

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 191
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_0

    .line 192
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 195
    :cond_0
    const v8, 0x7f0800a1

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, "menuType":I
    const-string v8, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    .local v1, "isDeviceLockTime":Z
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "is_secured_lock"

    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_1
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 206
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    const v4, 0x7f0e0286

    .line 241
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->InitValue(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->RemoveMenu()V

    .line 247
    sget v8, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    if-nez v8, :cond_6

    const/4 v3, 0x1

    .line 249
    .local v3, "mIsPrimary":Z
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v8

    if-nez v8, :cond_2

    .line 250
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 252
    const v8, 0x7f0800a5

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 259
    :goto_3
    new-instance v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    new-instance v2, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 262
    .local v2, "mDem":Landroid/dirEncryption/DirEncryptionManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 263
    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v7

    .line 264
    .local v7, "status":I
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 265
    if-eqz v7, :cond_8

    .line 266
    const v8, 0x7f0800ae

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 282
    .end local v0    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .end local v2    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v7    # "status":I
    :cond_2
    :goto_4
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 283
    .local v5, "otherSecurityPreferece":Landroid/preference/Preference;
    const-string v8, "other_security_settings"

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 284
    const v8, 0x7f0e14c2

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 285
    const v8, 0x7f0e14c3

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 286
    const-string v8, "com.android.settings.OtherSecuritySettings"

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 287
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 288
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    return-object v6

    .line 202
    .end local v3    # "mIsPrimary":Z
    .end local v5    # "otherSecurityPreferece":Landroid/preference/Preference;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 209
    :cond_4
    const v4, 0x7f0e0287

    goto/16 :goto_1

    .line 212
    :cond_5
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    .line 216
    :sswitch_0
    const v4, 0x7f0e0a7e

    .line 217
    goto/16 :goto_1

    .line 221
    :sswitch_1
    const v4, 0x7f0e13b0

    .line 222
    goto/16 :goto_1

    .line 224
    :sswitch_2
    const v4, 0x7f0e0262

    .line 225
    goto/16 :goto_1

    .line 228
    :sswitch_3
    const v4, 0x7f0e027f

    .line 229
    goto/16 :goto_1

    .line 233
    :sswitch_4
    const v4, 0x7f0e0282

    .line 234
    goto/16 :goto_1

    .line 236
    :sswitch_5
    const v4, 0x7f0e0264

    goto/16 :goto_1

    .line 247
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 255
    .restart local v3    # "mIsPrimary":Z
    :cond_7
    const v8, 0x7f0800af

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 268
    .restart local v0    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v2    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v7    # "status":I
    :cond_8
    const v8, 0x7f0800ad

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_4

    .line 271
    :cond_9
    if-eqz v7, :cond_a

    .line 272
    const v8, 0x7f0800ad

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_4

    .line 274
    :cond_a
    const v8, 0x7f0800ae

    invoke-virtual {p0, v8}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_4

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getFingerprintLockSummary(I)Ljava/lang/String;
    .locals 6
    .param p1, "ResId"    # I

    .prologue
    .line 346
    const-string v1, ", "

    .line 348
    .local v1, "comma":Ljava/lang/String;
    const-string v0, "ar"

    .line 349
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    const-string v1, "\u060c "

    .line 353
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0e11e9

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "summary":Ljava/lang/String;
    return-object v3
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8
    .param p1, "menuType"    # I

    .prologue
    const v7, 0x7f0e0282

    const v6, 0x7f0e027f

    const v5, 0x7f0e0262

    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    const v3, 0x7f0e0286

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    :goto_0
    return-object v2

    .line 300
    :cond_0
    const v3, 0x7f0e0287

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, "isFingerLockEnabled":Z
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v0

    .line 305
    .local v0, "fingerLockEnabledType":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 307
    :cond_2
    const/4 v1, 0x1

    .line 310
    :cond_3
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 313
    :sswitch_0
    const v3, 0x7f0e0a7e

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    goto :goto_0

    .line 318
    :sswitch_1
    const v3, 0x7f0e13b0

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    goto :goto_0

    .line 321
    :sswitch_2
    if-eqz v1, :cond_4

    invoke-direct {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    :goto_1
    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 326
    :sswitch_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_2
    goto :goto_0

    .line 326
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 332
    :sswitch_4
    if-eqz v1, :cond_6

    invoke-direct {p0, v7}, Lcom/android/settings/LockscreenMenuSettings;->getFingerprintLockSummary(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_3
    goto :goto_0

    .line 332
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 336
    :sswitch_5
    const v3, 0x7f0e0264

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isExistSamsungAccount(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 832
    .local v0, "isSA":Z
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 833
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 835
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    .line 836
    const/4 v0, 0x1

    .line 841
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v2    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    const-string v3, "LockscreenMenuSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v0

    .line 838
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 717
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startFingerprintScanner()V
    .locals 4

    .prologue
    .line 680
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 681
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    .prologue
    .line 727
    const v0, 0x7f0e07f8

    .line 728
    .local v0, "messageStringRes":I
    const v1, 0x104000a

    .line 729
    .local v1, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    const v0, 0x7f0e07f9

    .line 731
    const v1, 0x7f0e15b7

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 736
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e07f3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 742
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 745
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 746
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040026

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 747
    .local v1, "layout":Landroid/view/View;
    const v6, 0x7f0d00a5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 748
    .local v3, "mDescription":Landroid/widget/TextView;
    const v6, 0x7f0d00a6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 749
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 750
    const v4, 0x104000a

    .line 751
    .local v4, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 752
    const v5, 0x7f0e07f9

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 753
    const v4, 0x7f0e15b7

    .line 755
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e07f3

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 791
    return-void

    .line 749
    .end local v4    # "positiveStringRes":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x57

    return v0
.end method

.method protected isGuestUser()Z
    .locals 3

    .prologue
    .line 454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 456
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v1, 0x1

    .line 460
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveFindMyMobile()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 813
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/LockscreenMenuSettings;->isExistSamsungAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 815
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 816
    .local v8, "mIntent":Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v8, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 820
    .restart local v8    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 821
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 824
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1316

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 182
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1316

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 187
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 796
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 797
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 798
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 802
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 847
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 849
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x1

    const v1, 0x7f0e0f79

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 854
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 806
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 807
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 810
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 858
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 865
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 860
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "lock_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 863
    const/4 v1, 0x1

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 691
    const/4 v1, 0x1

    .line 692
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "key":Ljava/lang/String;
    const-string v2, "toggle_install_applications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 697
    iget-boolean v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    if-eqz v2, :cond_1

    .line 698
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    .line 700
    const/4 v1, 0x0

    .line 711
    :cond_0
    :goto_0
    return v1

    .line 702
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->warnAppInstallation()V

    .line 705
    const/4 v1, 0x0

    goto :goto_0

    .line 708
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 656
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    .line 659
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0e025a

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_0
    move v0, v9

    .line 676
    :goto_1
    return v0

    .line 661
    :cond_0
    const-string v0, "unlock_effect_with_preview"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.UnlockEffect"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 665
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v0, "find_my_mobile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    .line 667
    :cond_2
    const-string v0, "finger_scanner"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    .line 669
    goto :goto_1

    .line 671
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->startFingerprintScanner()V

    goto :goto_0

    .line 673
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "callingPackage":Ljava/lang/String;
    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->buildPreferenceForCOM()V

    .line 171
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_0
.end method
