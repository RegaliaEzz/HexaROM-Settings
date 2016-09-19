.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAutomaticUnlock:Landroid/preference/SwitchPreference;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mHdmiCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectInfo:Landroid/preference/PreferenceScreen;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

.field private mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

.field private showWireLessChargeMenu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DockSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 102
    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 336
    const-string v0, "sys/class/sec/switch/adc"

    .line 337
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 338
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 339
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 342
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 344
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 345
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    if-eqz v4, :cond_0

    .line 355
    :try_start_2
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 363
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 366
    const/4 v7, 0x1

    .line 368
    :cond_2
    return v7

    .line 358
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 361
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 347
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 348
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "DockSettings"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    if-eqz v3, :cond_1

    .line 355
    :try_start_4
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 358
    :catch_2
    move-exception v2

    .line 359
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 350
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    if-eqz v3, :cond_1

    .line 355
    :try_start_6
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 358
    :catch_4
    move-exception v2

    .line 359
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 354
    :goto_3
    if-eqz v3, :cond_3

    .line 355
    :try_start_7
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 360
    :cond_3
    :goto_4
    throw v7

    .line 358
    :catch_5
    move-exception v2

    .line 359
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 353
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 349
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 347
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 494
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 496
    const v1, 0x7f0e05db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 497
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 228
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 229
    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 231
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    :cond_1
    const-string v1, "dock_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 238
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 239
    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 242
    :cond_2
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 243
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    .line 244
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mSelectInfo:Landroid/preference/PreferenceScreen;

    .line 245
    const-string v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 246
    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    .line 247
    const-string v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    .line 250
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0e12b6

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 254
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 255
    :cond_4
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 256
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 257
    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 258
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 259
    const-string v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 260
    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 261
    const-string v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 298
    :cond_5
    :goto_0
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 299
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    :cond_6
    const-string v1, "hdmi"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    .line 302
    const-string v1, "audio_output"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 303
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    invoke-static {}, Lcom/android/settings/Utils;->hasHDMImenuinAccessories()Z

    move-result v1

    if-nez v1, :cond_7

    .line 306
    const-string v1, "hdmi"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 307
    const-string v1, "audio_output"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 311
    :cond_7
    const-string v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    .line 312
    const-string v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 316
    const-string v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 317
    const-string v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 323
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    .line 324
    iget v1, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 325
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 330
    :goto_2
    return-void

    .line 262
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 263
    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 264
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 265
    const-string v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 266
    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 267
    const-string v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 270
    .local v0, "covertype":I
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_a

    .line 271
    if-nez v0, :cond_f

    .line 272
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0e12c5

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 278
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 279
    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 280
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 282
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 284
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 286
    const-string v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 288
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 290
    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 292
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 294
    const-string v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_f
    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 274
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0e12c6

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_3

    .line 275
    :cond_10
    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 276
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0e12c4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_3

    .line 319
    .end local v0    # "covertype":I
    :cond_11
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 327
    :cond_12
    const-string v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 328
    const-string v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    .line 131
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "key":Ljava/lang/String;
    const-string v4, "audio_output"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 452
    .local v1, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "hdmi_audio_output"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    .end local v1    # "value":I
    :cond_1
    :goto_0
    return v3

    .line 458
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v4, "automatic_unlock"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 459
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 460
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 461
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v4, "cover_note"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 462
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 463
    .restart local v1    # "value":Z
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cover_note"

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 465
    const-string v2, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save KEY_COVER_NOTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string v4, "cover_note_weather_unit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 467
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cover_note_weather_unit"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :cond_7
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 475
    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    const-string v4, "fast_wireless_charging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 477
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wireless_fast_charging"

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 374
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dock_sounds_enabled"

    iget-object v8, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    :cond_1
    :goto_0
    return v5

    .line 378
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 380
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 381
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cradle_enable"

    if-eqz v3, :cond_3

    move v6, v5

    :goto_1
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cradle_connect"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    .line 385
    const-string v4, "DockSettings"

    const-string v6, "Cradle is connected:"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    const-string v4, "smartdock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :goto_2
    if-eqz v3, :cond_5

    .line 397
    const/4 v0, 0x1

    .line 402
    .local v0, "PhoneSpeakerState":I
    :goto_3
    const-string v4, "state"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 404
    const-string v4, "DockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "cradle_enable"

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 424
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 425
    if-eqz v3, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->showOudioOutputNotiDialog()V

    goto :goto_0

    .end local v0    # "PhoneSpeakerState":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v6, v4

    .line 381
    goto :goto_1

    .line 392
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 399
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "PhoneSpeakerState":I
    goto :goto_3

    .line 406
    .end local v0    # "PhoneSpeakerState":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v4, "DockSettings"

    const-string v6, "Cradle is not connected:"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 409
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 410
    const-string v4, "smartdock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 411
    const-string v4, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :goto_5
    const/4 v0, 0x0

    .line 417
    .restart local v0    # "PhoneSpeakerState":I
    const-string v4, "state"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    const-string v4, "DockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 413
    .end local v0    # "PhoneSpeakerState":I
    :cond_7
    const-string v4, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 431
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "value":Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v6, :cond_a

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "automatic_unlock"

    iget-object v8, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    move v4, v5

    :cond_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 434
    :cond_a
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_b

    .line 435
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings"

    const-string v6, "LNCS"

    const-string v7, "SViewCover"

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 145
    .local v6, "resolver":Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v9, "dock_sounds_enabled"

    const/4 v11, 0x0

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v10, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v9, "cradle_enable"

    const/4 v11, 0x0

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v10, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const-string v9, "automatic_unlock"

    const/4 v11, 0x0

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_a

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    const-string v9, "hdmi_audio_output"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 149
    .local v4, "mHdmiValue":I
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 150
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 153
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v9, "audioParam;outDevice"

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 156
    .local v2, "isHDMI":Z
    if-eqz v5, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 161
    :cond_0
    :goto_3
    const-string v9, "DockSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isHDMI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v2, :cond_d

    .line 164
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 165
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 168
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 169
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 178
    :goto_4
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    .line 179
    const-string v9, "cover_note"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_e

    const/4 v8, 0x0

    .line 180
    .local v8, "value":Z
    :goto_5
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    .end local v8    # "value":Z
    :cond_2
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v9, :cond_3

    .line 184
    const-string v9, "cover_note_weather_unit"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 185
    .local v8, "value":I
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    .end local v8    # "value":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    .line 190
    const-string v9, "oversea"

    const-string v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 191
    .local v3, "isRoamingArea":Z
    if-nez v3, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e115f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e12b0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "sText":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 200
    .end local v7    # "sText":Ljava/lang/String;
    :goto_6
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 203
    .end local v3    # "isRoamingArea":Z
    :cond_4
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_5

    .line 204
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 207
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 210
    :cond_5
    iget v9, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 211
    const-string v9, "wireless_fast_charging"

    const/4 v10, -0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 212
    .restart local v8    # "value":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 213
    const-string v9, "wireless_fast_charging"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    const/4 v8, 0x1

    .line 216
    :cond_6
    iget-object v10, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 218
    .end local v8    # "value":I
    :cond_7
    return-void

    .line 145
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "isHDMI":Z
    .end local v4    # "mHdmiValue":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 146
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 147
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 158
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v2    # "isHDMI":Z
    .restart local v4    # "mHdmiValue":I
    .restart local v5    # "path":Ljava/lang/String;
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_c

    const/4 v2, 0x0

    :goto_8
    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x1

    goto :goto_8

    .line 171
    :cond_d
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 172
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 179
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 197
    .restart local v3    # "isRoamingArea":Z
    :cond_f
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dualclock_menu_settings"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 216
    .end local v3    # "isRoamingArea":Z
    .restart local v8    # "value":I
    :cond_10
    const/4 v9, 0x0

    goto :goto_7
.end method

.method public showOudioOutputNotiDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 505
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 507
    iput-object v2, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 518
    :cond_0
    const v1, 0x7f0e12ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 519
    const v1, 0x7f0e12b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 520
    const v1, 0x7f0e0829

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 522
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 523
    return-void
.end method
