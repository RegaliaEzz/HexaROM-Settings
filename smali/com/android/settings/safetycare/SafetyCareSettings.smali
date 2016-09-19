.class public Lcom/android/settings/safetycare/SafetyCareSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppLock:Landroid/preference/PreferenceScreen;

.field private mAppLockObserver:Landroid/database/ContentObserver;

.field private mAppPermissions:Landroid/preference/PreferenceScreen;

.field private mAssistance:Landroid/preference/PreferenceScreen;

.field private mAssistantObserver:Landroid/database/ContentObserver;

.field private mDiagnosticInfo:Landroid/preference/PreferenceScreen;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mLocationSettings:Landroid/preference/PreferenceScreen;

.field private mPrivateBox:Landroid/preference/PreferenceScreen;

.field private mPrivateMode:Landroid/preference/PreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mSafetycareHelp:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$5;

    invoke-direct {v0}, Lcom/android/settings/safetycare/SafetyCareSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/safetycare/SafetyCareSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$1;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$2;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$3;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$4;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->locationSummaryUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->appLockSummaryUpdate()V

    return-void
.end method

.method private appLockSummaryUpdate()V
    .locals 4

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, "appLockState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e0e95

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e0e96

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private locationSummaryUpdate()V
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0e95

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 422
    return-void

    .line 418
    :cond_0
    const v0, 0x7f0e0e96

    goto :goto_0
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "personalModeState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e0e95

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e0e96

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    .line 167
    const-string v0, "key_private_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    .line 168
    const-string v0, "key_private_box"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    .line 169
    const-string v0, "key_applock"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    .line 170
    const-string v0, "key_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    .line 171
    const-string v0, "key_app_permissions"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    .line 172
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 173
    const-string v0, "key_safety_assistance"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    .line 174
    const-string v0, "safetycare_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    .line 176
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_1
    const-string v0, "key_private_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_3
    const-string v0, "key_private_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 185
    const-string v0, "key_private_box"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    const-string v0, "applock"

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    const-string v0, "key_applock"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 194
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_ConfigOpDemoMode"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "verizonwireless_store_demo_mode"

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    const-string v0, "key_app_permissions"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    .line 200
    :cond_6
    const-string v0, "key_report_diagnostics_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/PreferenceScreen;

    .line 202
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "VZW"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    :cond_7
    const-string v0, "key_report_diagnostics_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    .line 209
    :cond_8
    const-string v0, "content://com.sec.knox.provider2/KioskMode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 211
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 213
    .local v11, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isKioskModeEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    const-string v0, "isKioskModeEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 221
    if-eqz v11, :cond_9

    const-string v0, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    const-string v0, "SafetyCareSettings"

    const-string v2, "KIOSKMODE enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_9
    :goto_1
    if-eqz v6, :cond_a

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_b

    move v8, v13

    .line 237
    .local v8, "isSecondaryUser":Z
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 238
    const-string v0, "key_safety_assistance"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 239
    const-string v0, "safetycare_help"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 265
    :cond_c
    :goto_3
    const-string v0, "key_safety_assistance"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "safetycare_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_d

    .line 266
    const-string v0, "key_safety"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 267
    const-string v0, "key_privacy"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 270
    :cond_d
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    const-string v0, "key_location"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 272
    if-eqz v8, :cond_e

    .line 273
    const-string v0, "key_privacy"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 278
    :cond_e
    const/4 v10, 0x0

    .line 279
    .local v10, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v9

    .line 280
    .local v9, "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v9, :cond_f

    .line 281
    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getSettingsHiddenState()I

    move-result v10

    .line 283
    :cond_f
    and-int/lit16 v0, v10, 0x400

    if-eqz v0, :cond_10

    .line 284
    const-string v0, "key_location"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 286
    :cond_10
    and-int/lit16 v0, v10, 0x200

    if-eqz v0, :cond_11

    .line 287
    const-string v0, "key_app_permissions"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 291
    :cond_11
    invoke-virtual {p0, v13}, Lcom/android/settings/safetycare/SafetyCareSettings;->setHasOptionsMenu(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_12

    .line 294
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 295
    :cond_12
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    .line 296
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_14

    .line 298
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 299
    :cond_14
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_15

    .line 300
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 301
    :cond_15
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_16

    .line 302
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 303
    :cond_16
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    .line 304
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 305
    :cond_17
    return-void

    .line 187
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "isSecondaryUser":Z
    .end local v9    # "knoxCustomSettingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    .end local v10    # "knoxCustomSettingsState":I
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "sales_code":Ljava/lang/String;
    :cond_18
    const-string v0, "key_private_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "result":Ljava/lang/String;
    .restart local v12    # "sales_code":Ljava/lang/String;
    :cond_19
    :try_start_1
    const-string v0, "SafetyCareSettings"

    const-string v2, "KIOSKMODE disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 228
    :catch_0
    move-exception v7

    .line 229
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-eqz v6, :cond_a

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 231
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1a

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v0

    .line 241
    .restart local v8    # "isSecondaryUser":Z
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.sec.android.app.safetyassurance"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 242
    const-string v0, "SafetyCareSettings"

    const-string v2, "com.sec.android.app.safetyassurance is missing. So we removed safety preferences"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "key_safety_assistance"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 244
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 245
    const-string v0, "safetycare_help"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 248
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEmergencyTableSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 249
    const-string v0, "key_safety_assistance"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 252
    :cond_1d
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 253
    const-string v0, "safetycare_help"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 254
    if-eqz v8, :cond_c

    .line 255
    const-string v0, "key_safety_assistance"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 258
    :cond_1e
    if-eqz v8, :cond_c

    .line 259
    const-string v0, "key_safety_assistance"

    invoke-direct {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 386
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v8, 0x7f0e0e96

    const v7, 0x7f0e0e95

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 311
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "location_providers_allowed"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v11, -0x2

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->locationSummaryUpdate()V

    .line 317
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "samsung_errorlog_agree"

    invoke-static {v6, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 320
    .local v2, "getDiagInfo":Z
    :goto_0
    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 323
    .end local v2    # "getDiagInfo":Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->privateModeSummaryUpdate()V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "personal_mode_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    :cond_1
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "db_private_box_enabled"

    invoke-static {v6, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 333
    .local v3, "isEnableInLockscreen":I
    if-ne v3, v5, :cond_7

    .line 334
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 340
    .end local v3    # "isEnableInLockscreen":I
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->appLockSummaryUpdate()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "app_lock_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v5, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    :cond_3
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "send_emergency_message"

    invoke-static {v6, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v1, v5

    .line 350
    .local v1, "bStatus":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "block_emergency_message"

    invoke-static {v6, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_9

    move v0, v5

    .line 355
    .local v0, "bIsEnabled":Z
    :goto_4
    if-nez v0, :cond_a

    .line 356
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0e1499

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 362
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "block_emergency_message"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    .end local v0    # "bIsEnabled":Z
    .end local v1    # "bStatus":Z
    :cond_4
    return-void

    :cond_5
    move v2, v5

    .line 319
    goto/16 :goto_0

    .restart local v2    # "getDiagInfo":Z
    :cond_6
    move v6, v8

    .line 320
    goto/16 :goto_1

    .line 336
    .end local v2    # "getDiagInfo":Z
    .restart local v3    # "isEnableInLockscreen":I
    :cond_7
    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .end local v3    # "isEnableInLockscreen":I
    :cond_8
    move v1, v4

    .line 347
    goto :goto_3

    .restart local v1    # "bStatus":Z
    :cond_9
    move v0, v4

    .line 350
    goto :goto_4

    .line 358
    .restart local v0    # "bIsEnabled":Z
    :cond_a
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-ne v1, v5, :cond_b

    :goto_6
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_b
    move v7, v8

    goto :goto_6
.end method
