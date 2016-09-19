.class public Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UniversalLockSplashActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;


# instance fields
.field _preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private isSharedDevice:Z

.field private mFeedback:Landroid/preference/PreferenceCategory;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSetBeep:Landroid/preference/SwitchPreference;

.field private mSetLockScreen:Landroid/preference/Preference;

.field private mSetVibration:Landroid/preference/SwitchPreference;

.field private mSetVisibility:Landroid/preference/SwitchPreference;

.field private mSetVoice:Landroid/preference/SwitchPreference;

.field private mShowDescription:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    .line 153
    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;-><init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private initPreferences()V
    .locals 7

    .prologue
    .line 103
    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    .line 104
    const-string v0, "lock_screen_visible"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    .line 105
    const-string v0, "lock_screen_vibration"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    .line 106
    const-string v0, "lock_screen_beep"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    .line 107
    const-string v0, "lock_screen_voice"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    .line 108
    const-string v0, "descriptionText"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    .line 109
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0a81

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    const-string v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0986

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0e0a7e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContext()Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 312
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    :cond_0
    const/4 v1, 0x0

    .line 315
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeVibrationPreference()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 390
    const/16 v0, 0x136

    return v0
.end method

.method loadSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->toggleSettings()V

    .line 222
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 223
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_vibration"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "universal_lock_beep"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    return-void

    :cond_0
    move v0, v2

    .line 222
    goto :goto_0

    :cond_1
    move v0, v2

    .line 223
    goto :goto_1

    :cond_2
    move v0, v2

    .line 224
    goto :goto_2

    :cond_3
    move v1, v2

    .line 225
    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    const-string v0, "UniversalLockSplashActivity"

    const-string v1, "onActivityCreated :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$2;-><init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->addPreferencesFromResource(I)V

    .line 242
    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    .line 243
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 244
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->initPreferences()V

    .line 245
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 382
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 383
    const-string v0, "UniversalLockSplashActivity"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 385
    sget-object v0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 386
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 371
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 376
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 373
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->finish()V

    .line 374
    const/4 v1, 0x1

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0e025a

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 284
    const-string v4, "UniversalLockSplashActivity"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isVibrationSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->removeVibrationPreference()V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "universal_lock_vibration"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->setSummary()V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->loadSettings()V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->setListeners()V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "universal_lock_switch_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "switchState":I
    const-string v4, "UniversalLockSplashActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchState :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v4, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    if-ne v1, v2, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "enterprise_policy"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 299
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    .line 301
    iget-boolean v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    if-eqz v2, :cond_1

    .line 302
    sget-object v2, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 304
    const-string v2, "UniversalLockSplashActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch onResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    return-void

    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_2
    move v2, v3

    .line 296
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 146
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 147
    sget-object v1, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 148
    return-void
.end method

.method public setSummary()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getResIDForCurrentLockScreen()I

    move-result v0

    .line 332
    .local v0, "mResID":I
    if-nez v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const v0, 0x7f0e0286

    .line 339
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 341
    return-void

    .line 336
    :cond_1
    const v0, 0x7f0e0287

    goto :goto_0
.end method

.method public toggleSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_switch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
