.class public Lcom/android/settings/spen/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAirCommandPref:Landroid/preference/Preference;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Landroid/preference/Preference;

.field private mDirectPenObserver:Landroid/database/ContentObserver;

.field private mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

.field private mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenAirViewPref:Landroid/preference/Preference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

.field private mSpenPointerPref:Landroid/preference/Preference;

.field private mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

.field private mSupportPenUsp10:Z

.field private magnifierWindowEnabled:Z

.field private sTalkbackEnabled:Z

.field private talkbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    .line 480
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$5;

    invoke-direct {v0}, Lcom/android/settings/spen/SPenSettingsMenu$5;-><init>()V

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    .line 116
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 125
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    .line 136
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$3;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 526
    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$6;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    const-string v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method private updateEnableState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_button_onoff"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, "isEnable":I
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "finger_magnifier"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    .line 325
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    .line 326
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    .line 327
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->magnifierWindowEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->sTalkbackEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->talkbackEnabled:Z

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_button_onoff"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "air_button_onoff"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 336
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 337
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_2

    .line 338
    if-ne v0, v3, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e1587

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e1586

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    const v3, 0x7f0e1585

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 324
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 333
    goto :goto_1
.end method

.method private updateState()V
    .locals 15

    .prologue
    const-wide/16 v12, 0x0

    const v14, 0x7f0e157a

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 347
    const-string v7, "SPenSettingsMenu"

    const-string v10, "updateState() "

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detachment_alert"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 352
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_sound"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 355
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_haptic"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 359
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v7, :cond_1

    .line 361
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 362
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detached_time"

    invoke-static {v7, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 363
    .local v0, "detachTime":J
    cmp-long v7, v0, v12

    if-lez v7, :cond_6

    .line 364
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 365
    .local v5, "shortDateFormat":Ljava/text/DateFormat;
    const v7, 0x7f0e15a9

    new-array v10, v8, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " \u200e "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v4, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "detachTimeStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    .end local v2    # "detachTimeStr":Ljava/lang/String;
    .end local v5    # "shortDateFormat":Ljava/text/DateFormat;
    :goto_3
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_hovering_pointer"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 373
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "action_memo_on_off_screen"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 376
    .end local v0    # "detachTime":J
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detachment_option"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 379
    .local v3, "penDetachIndex":I
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 382
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detect_mode_disabled"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_writing_buddy"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v6, v8

    .line 386
    .local v6, "writingBuddyOn":Z
    :goto_7
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v8, :cond_b

    .line 388
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 393
    :cond_2
    :goto_8
    return-void

    .end local v3    # "penDetachIndex":I
    .end local v6    # "writingBuddyOn":Z
    :cond_3
    move v7, v9

    .line 349
    goto/16 :goto_0

    :cond_4
    move v7, v9

    .line 353
    goto/16 :goto_1

    :cond_5
    move v7, v9

    .line 355
    goto/16 :goto_2

    .line 368
    .restart local v0    # "detachTime":J
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move v7, v9

    .line 370
    goto :goto_4

    :cond_8
    move v7, v9

    .line 373
    goto :goto_5

    .end local v0    # "detachTime":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v3    # "penDetachIndex":I
    :cond_9
    move v7, v9

    .line 382
    goto :goto_6

    :cond_a
    move v6, v9

    .line 385
    goto :goto_7

    .line 390
    .restart local v6    # "writingBuddyOn":Z
    :cond_b
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_8
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    const-string v3, "SPenSettingsMenu"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    .line 153
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    .line 155
    const v3, 0x7f080087

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 157
    const-string v3, "key_air_button"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    .line 160
    const-string v3, "pen_air_view"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    .line 161
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 166
    :cond_0
    const-string v3, "key_spen_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    .line 169
    const-string v3, "key_writing_buddy"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    .line 170
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 175
    :cond_1
    const-string v3, "key_spen_pointer_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    .line 176
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    const-string v3, "loss_prevention_alert"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    .line 181
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    const-string v3, "action_memo_on_off_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    .line 186
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 187
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    const-string v3, "battery_saving"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    .line 191
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    const-string v3, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    .line 196
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v3, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    .line 201
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v3, "pen_detachment_option_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    .line 210
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/DropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    iget-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-nez v3, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "DetachOptionTitles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    aget-object v4, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "DetachOptionTitles":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    new-instance v4, Lcom/android/settings/spen/SPenSettingsMenu$4;

    invoke-direct {v4, p0}, Lcom/android/settings/spen/SPenSettingsMenu$4;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 228
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 231
    :cond_3
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.SPenKeeper"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 232
    .local v2, "mSupportSPenKeeper":Z
    if-nez v2, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v3

    if-nez v3, :cond_6

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "Additional_feedback_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v3, :cond_8

    .line 248
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v4, Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_spen_pointer"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :goto_2
    return-void

    .line 241
    :cond_6
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 253
    :cond_8
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v4, Lcom/android/settings/spen/AirButtonHelp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "action_memo_on_off_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "key_spen_pointer_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "SPenSettingsMenu"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 309
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 316
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 398
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "key":Ljava/lang/String;
    const-string v2, "battery_saving"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 402
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detect_mode_disabled"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 405
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery saving : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v1    # "value":Z
    :cond_0
    :goto_2
    return v3

    .restart local v1    # "value":Z
    :cond_1
    move v2, v4

    .line 402
    goto :goto_0

    :cond_2
    move v2, v4

    .line 404
    goto :goto_1

    .line 411
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    const-string v2, "key_spen_pointer_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 412
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 413
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pointer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v2, v4

    .line 413
    goto :goto_3

    .line 419
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v2, "loss_prevention_alert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 421
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_alert"

    if-eqz v1, :cond_6

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    invoke-direct {p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 423
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loss prevention alert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 421
    goto :goto_4

    .line 428
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    const-string v2, "action_memo_on_off_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 429
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 430
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "action_memo_on_off_screen"

    if-eqz v1, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action Memo On off Screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "action_memo_on_off_screen"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 430
    goto :goto_5

    .line 436
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    const-string v2, "key_additional_feedback_pen_sound"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 437
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 438
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_sound"

    if-eqz v1, :cond_b

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_a

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_notification"

    if-eqz v1, :cond_c

    const-string v2, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    :cond_a
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback sound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_sound"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v2, v4

    .line 438
    goto :goto_6

    .line 441
    :cond_c
    sget-object v2, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_7

    .line 447
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    const-string v2, "key_additional_feedback_pen_haptic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 449
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_haptic"

    if-eqz v1, :cond_f

    move v2, v3

    :goto_8
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_e

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_attach_detach_vibration"

    if-eqz v1, :cond_10

    move v2, v3

    :goto_9
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    :cond_e
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback haptic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_haptic"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v2, v4

    .line 449
    goto :goto_8

    :cond_10
    move v2, v4

    .line 452
    goto :goto_9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 465
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "key":Ljava/lang/String;
    const-string v1, "key_air_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SEAC"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v1, 0x7f0e0e95

    const/4 v6, 0x0

    const v2, 0x7f0e0e96

    const/4 v5, 0x1

    .line 263
    const-string v0, "SPenSettingsMenu"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    .line 269
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-nez v0, :cond_1

    .line 270
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 273
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v5, :cond_6

    .line 282
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 289
    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detached_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_writing_buddy"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    return-void

    :cond_3
    move v0, v2

    .line 270
    goto :goto_0

    :cond_4
    move v0, v2

    .line 273
    goto :goto_1

    :cond_5
    move v0, v2

    .line 277
    goto :goto_2

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_writing_buddy"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4
.end method
