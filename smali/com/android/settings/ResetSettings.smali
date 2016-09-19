.class public Lcom/android/settings/ResetSettings;
.super Landroid/app/Fragment;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetSettings$ResetSettingsTask;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private databaseReset:Z

.field private handler:Landroid/os/Handler;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetSoftButton:Landroid/widget/Button;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field progressDialog:Landroid/app/ProgressDialog;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private resetSettingsCompleted:Z

.field resetTask:Lcom/android/settings/ResetSettings$ResetSettingsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/ResetSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/ResetSettings;->resetSettingsCompleted:Z

    .line 182
    new-instance v0, Lcom/android/settings/ResetSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSettings$2;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->handler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/android/settings/ResetSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSettings$3;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 871
    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 816
    const v1, 0x7f0e133f

    invoke-virtual {p0, v1}, Lcom/android/settings/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1341

    invoke-virtual {p0, v2}, Lcom/android/settings/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/ResetSettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 819
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetSettings;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ResetSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings/ResetSettings;->databaseReset:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ResetSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->requestSoftReset()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/ResetSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetCompleted()V

    return-void
.end method

.method private doSoftReset()V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetGlobalSettings()V

    .line 852
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 854
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 855
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e12c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 857
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 858
    return-void
.end method

.method private establishResetState()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 218
    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 413
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 416
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 419
    :goto_0
    return-object v2

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ResetSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private loadDefRingtone()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/16 v7, 0x80

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 507
    const-string v2, "ResetSettings"

    const-string v3, "Sound settings update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0, v4}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 510
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 511
    invoke-virtual {p0, v5}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 513
    const-string v2, "ro.multisim.simslotcount"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "simslotcount":I
    if-ne v0, v5, :cond_0

    .line 515
    invoke-virtual {p0, v7}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 517
    invoke-virtual {p0, v8}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 520
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 521
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 522
    return-void
.end method

.method private requestSoftReset()V
    .locals 3

    .prologue
    .line 831
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/ResetSettings;->runKeyguardConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/ResetSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 841
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->StartPassword()V

    goto :goto_0

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 846
    .end local v0    # "phone_password":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->doSoftReset()V

    goto :goto_0
.end method

.method private resetAccessibilitySettings()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 525
    const-string v8, "ResetSettings"

    const-string v9, "resetAccessibilitySettings - start "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 528
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 531
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    const-string v8, "enabled_accessibility_services"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    const-string v8, "accessibility_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    const-string v8, "lcd_curtain"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    const-string v8, "high_text_contrast_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, "sales_code":Ljava/lang/String;
    const-string v8, "SPR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "VMU"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "BST"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "XAS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 543
    :cond_0
    const-string v8, "rapid_key_input"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    const-string v8, "rapid_key_input_menu_checked"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :goto_0
    const-string v8, "speak_password"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    const-string v8, "accessiblity_font_switch"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const-string v8, "show_button_background"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    const-string v8, "finger_magnifier"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    const-string v8, "hover_zoom_value"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    const-string v8, "hover_zoom_magnifier_size"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    const-string v9, "magnifier_pref"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 564
    .local v6, "mSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    const-string v8, "greyscale_mode"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    const-string v8, "high_contrast"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    const-string v8, "color_blind"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 577
    const-string v8, "color_blind_test"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    const-string v8, "enable_accessibility_global_gesture_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    const-string v8, "flash_notification"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    const-string v8, "all_sound_off"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    const-string v8, "hearing_aid"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    const-string v8, "call_hearing_aid"

    const-string v9, "OFF"

    invoke-virtual {v5, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 596
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v8, "accessibility_captioning_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    const-string v8, "accessibility_captioning_foreground_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    const-string v8, "accessibility_captioning_background_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    const-string v8, "accessibility_captioning_edge_type"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    const-string v8, "accessibility_captioning_edge_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v8, "accessibility_captioning_window_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    const-string v8, "accessibility_captioning_preset"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    const-string v8, "accessibility_captioning_preset"

    iget-object v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 604
    const-string v8, "accessibility_captioning_font_scale"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    const-string v8, "accessibility_captioning_locale"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 608
    const-string v8, "HACSetting=OFF"

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 611
    const-string v8, "sound_balance"

    const/16 v9, 0x32

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mono_audio_db"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 618
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_dominant_hand_type"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_eam_enable"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pointer_speed"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pointer_size"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pad_size"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 627
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.action.ASSISTANTMENU_SETTINGS_RESET"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v4, "mAssistantEditMenuReset":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.assistantmenu"

    const-string v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 637
    iget-object v8, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 641
    .end local v0    # "assistantMenu":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mAssistantEditMenuReset":Landroid/content/Intent;
    :cond_1
    const-string v8, "air_motion_wake_up"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    const-string v8, "long_press_timeout"

    const/16 v9, 0x1f4

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    const-string v8, "access_control_use"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    const-string v8, "access_control_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    const-string v8, "access_control_time_set_hour"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    const-string v8, "access_control_time_set_min"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    const-string v8, "access_control_power_button"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    const-string v8, "access_control_volume_button"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 653
    const-string v8, "access_control_keyboard_block"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 656
    const-string v8, "direct_access"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    const-string v8, "direct_accessibility"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    const-string v8, "direct_talkback"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    const-string v8, "direct_negative"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 660
    const-string v8, "direct_color_adjustment"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    const-string v8, "direct_access_control"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    const-string v8, "direct_s_talkback"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    const-string v8, "direct_universal_switch"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    const-string v8, "direct_samsung_screen_reader"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    const-string v8, "direct_access_magnifier"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    const-string v8, "direct_greyscale"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    const-string v8, "notification_reminder"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    const-string v8, "notification_reminder_selectable"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    const-string v8, "time_key"

    const/16 v9, 0x3c

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    const-string v8, "notification_reminder_vibrate"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    const-string v8, "notification_reminder_led_indicator"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 674
    const-string v8, "notification_reminder_app_list"

    const-string v9, "selectAll"

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    const-string v8, "easy_interaction"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    const-string v8, "ResetSettings"

    const-string v9, "resetAccessibilitySettings - finish "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 546
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "mSharedPref":Landroid/content/SharedPreferences;
    :cond_2
    const-string v8, "rapid_key_input"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    const-string v8, "rapid_key_input_menu_checked"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private resetCompleted()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method

.method private resetSpenSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_PEN_DETECT_MODE_DISALBED"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 440
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 863
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 865
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x3a

    .end local p1    # "request":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 426
    .local v1, "success":Z
    return v1
.end method


# virtual methods
.method public getUriOfDefaultTone(I)Landroid/net/Uri;
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 443
    const/4 v10, 0x0

    .line 445
    .local v10, "foundUri":Z
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriOfBinaryDefaultTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 448
    new-instance v11, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 453
    .local v11, "rm":Landroid/media/RingtoneManager;
    :goto_0
    const/4 v8, 0x0

    .line 455
    .local v8, "configTone":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 456
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 469
    :goto_1
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.config. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v11, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 471
    invoke-virtual {v11}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 472
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 473
    const/4 v13, 0x0

    .line 474
    .local v13, "tempStrUri":Ljava/lang/String;
    const/4 v12, 0x0

    .line 477
    .local v12, "tempStrIndex":Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 479
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 482
    const/4 v7, 0x0

    .line 483
    .local v7, "c2":Landroid/database/Cursor;
    const-string v9, ""

    .line 485
    .local v9, "dataPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 488
    if-eqz v7, :cond_0

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 491
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    const/4 v10, 0x1

    .line 502
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v9    # "dataPath":Ljava/lang/String;
    :cond_1
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default tone\'s uri found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz v10, :cond_9

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v12    # "tempStrIndex":Ljava/lang/String;
    .end local v13    # "tempStrUri":Ljava/lang/String;
    :goto_3
    return-object v0

    .line 450
    .end local v8    # "configTone":Ljava/lang/String;
    .end local v11    # "rm":Landroid/media/RingtoneManager;
    :cond_2
    new-instance v11, Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .restart local v11    # "rm":Landroid/media/RingtoneManager;
    goto/16 :goto_0

    .line 457
    .restart local v8    # "configTone":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_4

    .line 458
    const-string v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 459
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 460
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 461
    :cond_5
    const/16 v0, 0x100

    if-ne p1, v0, :cond_6

    .line 462
    const-string v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 463
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 464
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 466
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 499
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "c2":Landroid/database/Cursor;
    .restart local v9    # "dataPath":Ljava/lang/String;
    .restart local v12    # "tempStrIndex":Ljava/lang/String;
    .restart local v13    # "tempStrUri":Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 503
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v9    # "dataPath":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public loadCSC()V
    .locals 2

    .prologue
    .line 700
    new-instance v0, Lcom/android/settings/csc/CscSettingsLoader;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/csc/CscSettingsLoader;-><init>(Landroid/content/Context;)V

    .line 701
    .local v0, "CscSettings":Lcom/android/settings/csc/CscSettingsLoader;
    invoke-virtual {v0}, Lcom/android/settings/csc/CscSettingsLoader;->update()V

    .line 702
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/android/settings/ResetSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetSettings$1;-><init>(Lcom/android/settings/ResetSettings;)V

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 787
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 789
    sparse-switch p1, :sswitch_data_0

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 792
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    if-ne p2, v2, :cond_0

    .line 794
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 801
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 789
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_1
        0x3a -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e12bf

    const v4, 0x7f0e12be

    const v3, 0x7f0e12bc

    .line 118
    const v1, 0x7f0401b9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0458

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_RESET_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->establishResetState()V

    .line 139
    iget-object v1, p0, Lcom/android/settings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v1

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 912
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 913
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 899
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 901
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 906
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 908
    :cond_1
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 822
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 823
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/ResetSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 828
    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetDNDSettings()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetSystemSettings()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetSecureSettings()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetAccessibilitySettings()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->resetFontSettings()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->loadCSC()V

    .line 244
    return-void
.end method

.method public resetDNDSettings()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ResetSettings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public resetFontSettings()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 251
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    const-string v10, "prefs"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 253
    .local v7, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 254
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "selectedFont"

    const-string v10, "MONOTYPE"

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    :try_start_0
    new-instance v4, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v4}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 259
    .local v4, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    const-string v10, "sans.loc"

    const-string v11, "default#default"

    invoke-virtual {v4, v9, v10, v11}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 264
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    :goto_0
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 269
    .local v8, "previousIndex":I
    const-string v9, "persist.sys.font_clarity"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    .line 273
    .local v0, "EXTRA_LARGE_FONT_SCALE":F
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v9

    if-le v8, v9, :cond_0

    .line 274
    const-string v9, "large_font"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    :cond_0
    iget-object v9, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    :try_start_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 278
    .local v6, "mCurConfig":Landroid/content/res/Configuration;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 279
    .local v3, "fontScale":F
    iput v3, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 280
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v3    # "fontScale":F
    .end local v6    # "mCurConfig":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v9

    goto :goto_1

    .line 265
    .end local v0    # "EXTRA_LARGE_FONT_SCALE":F
    .end local v5    # "i":Landroid/content/Intent;
    .end local v8    # "previousIndex":I
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public resetGlobalSettings()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 357
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    .line 358
    .local v5, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 359
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 360
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v10, 0x2

    iput v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 369
    :goto_0
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 370
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 371
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 372
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 373
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 374
    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 375
    invoke-direct {p0, v5}, Lcom/android/settings/ResetSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100024

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v8

    .line 380
    .local v1, "airplaneMode":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v1, :cond_0

    .line 381
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "state"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100026

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 388
    .local v3, "autoTimeZone":Z
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time_zone"

    if-eqz v3, :cond_3

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v6, "timeZone":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100025

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 393
    .local v2, "autoTime":Z
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time"

    if-eqz v2, :cond_4

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIME_SET"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "actionTime":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    const-string v7, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 399
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "emergency_tone"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    :goto_4
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    return-void

    .line 362
    .end local v0    # "actionTime":Landroid/content/Intent;
    .end local v1    # "airplaneMode":I
    .end local v2    # "autoTime":Z
    .end local v3    # "autoTimeZone":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "timeZone":Landroid/content/Intent;
    :cond_1
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v10, 0x3

    iput v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto/16 :goto_0

    :cond_2
    move v1, v9

    .line 378
    goto/16 :goto_1

    .restart local v1    # "airplaneMode":I
    .restart local v3    # "autoTimeZone":Z
    :cond_3
    move v7, v9

    .line 388
    goto/16 :goto_2

    .restart local v2    # "autoTime":Z
    .restart local v6    # "timeZone":Landroid/content/Intent;
    :cond_4
    move v7, v9

    .line 393
    goto :goto_3

    .line 401
    .restart local v0    # "actionTime":Landroid/content/Intent;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_tone"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method

.method public resetSecureSettings()V
    .locals 7

    .prologue
    const v6, 0x112006f

    const v5, 0x112006e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_components"

    const-string v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    return-void

    :cond_0
    move v0, v2

    .line 342
    goto :goto_0

    :cond_1
    move v1, v2

    .line 344
    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v0, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 347
    goto :goto_3

    :cond_4
    move v1, v2

    .line 349
    goto :goto_4
.end method

.method public resetSystemSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->loadDefRingtone()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/ResetSettings;->resetSpenSettings()V

    .line 291
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v4, "gps"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 295
    const-string v4, "network"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 298
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "is_enabled"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "interactionarea_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.intent.action.ONEHAND_INPUT_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "is_enabled"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_offload_network_notify"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_1
    const-string v4, "2016A"

    const-string v5, "ro.build.scafe.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2015A"

    const-string v5, "ro.build.scafe.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    :cond_2
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 317
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.samsung.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    :cond_3
    :goto_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 327
    .local v3, "mWindowmanager":Landroid/view/IWindowManager;
    :try_start_0
    const-string v4, "NONE"

    const-string v5, "NONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 328
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "condensed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 329
    .local v0, "condensed":I
    if-eqz v0, :cond_4

    .line 330
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "condensed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    const/4 v4, 0x0

    const/16 v5, 0x280

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "condensed":I
    :cond_4
    :goto_1
    return-void

    .line 320
    .end local v3    # "mWindowmanager":Landroid/view/IWindowManager;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.android.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 334
    .restart local v3    # "mWindowmanager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
